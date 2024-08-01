import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:summise/Core/Constant/colorss.dart';
import 'package:summise/Core/Constant/text_style.dart';
import 'package:summise/Core/Routes/app_routes.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../Custom/logo_widget.dart';

class TableEventsWidget extends StatefulWidget {
  const TableEventsWidget({super.key});

  @override
  State<TableEventsWidget> createState() => _TableEventsWidgetState();
}

class _TableEventsWidgetState extends State<TableEventsWidget> {
  late final ValueNotifier<List<Event>> _selectedEvents;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOff; // Can be toggled on/off by longpressing a date
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  @override
  void initState() {
    super.initState();

    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  List<Event> _getEventsForDay(DateTime day) {
    // Implementation example
    return kEvents[day] ?? [];
  }

  List<Event> _getEventsForRange(DateTime start, DateTime end) {
    // Implementation example
    final days = daysInRange(start, end);

    return [
      for (final d in days) ..._getEventsForDay(d),
    ];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
        _rangeStart = null; // Important to clean those
        _rangeEnd = null;
        _rangeSelectionMode = RangeSelectionMode.toggledOff;
      });

      _selectedEvents.value = _getEventsForDay(selectedDay);
    }
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    setState(() {
      _selectedDay = null;
      _focusedDay = focusedDay;
      _rangeStart = start;
      _rangeEnd = end;
      _rangeSelectionMode = RangeSelectionMode.toggledOn;
    });

    // `start` or `end` could be null
    if (start != null && end != null) {
      _selectedEvents.value = _getEventsForRange(start, end);
    } else if (start != null) {
      _selectedEvents.value = _getEventsForDay(start);
    } else if (end != null) {
      _selectedEvents.value = _getEventsForDay(end);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 123.h),
        LogoWidget(
          height: 150.h,
          width: 150.w,
        ),
        SizedBox(height: 36.h),
        TableCalendar<Event>(
          firstDay: kFirstDay,
          lastDay: kLastDay,
          focusedDay: _focusedDay,
          selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
          rangeStartDay: _rangeStart,
          rangeEndDay: _rangeEnd,
          calendarFormat: _calendarFormat,
          rangeSelectionMode: _rangeSelectionMode,
          // rowHeight: 45.h,
          calendarBuilders: CalendarBuilders(
            markerBuilder: (context, date, events) {
              return const SizedBox
                  .shrink(); // Return an empty widget to remove the dots
            },
          ),
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: mulishTextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF3C3C43).withOpacity(0.3)),
            weekendStyle: mulishTextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF3C3C43).withOpacity(0.3)),
          ),
          headerStyle: HeaderStyle(
              headerPadding: EdgeInsets.only(left: 12.w, bottom: 10.w),
              formatButtonVisible: false,
              leftChevronVisible: false,
              rightChevronVisible: false),

          // daysOfWeekVisible: false,
          eventLoader: _getEventsForDay,
          startingDayOfWeek: StartingDayOfWeek.monday,
          calendarStyle: CalendarStyle(
            // Use `CalendarStyle` to customize the UI
            // cellPadding: EdgeInsets.symmetric(horizontal: 5.w),

            todayDecoration: const BoxDecoration(),
            selectedDecoration: BoxDecoration(
              color: const Color(0xFF007AFF).withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            selectedTextStyle: mulishTextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF007AFF)),
            todayTextStyle: mulishTextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF007AFF)),

            weekendTextStyle: mulishTextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: blackColor),
            defaultTextStyle: mulishTextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: blackColor),
            markersAlignment: Alignment.topCenter,
            outsideDaysVisible: false,
          ),
          onDaySelected: _onDaySelected,
          onRangeSelected: _onRangeSelected,
          onFormatChanged: (format) {
            if (_calendarFormat != format) {
              setState(() {
                _calendarFormat = format;
              });
            }
          },
          onPageChanged: (focusedDay) {
            _focusedDay = focusedDay;
          },
        ),
        // const SizedBox(height: 8.0),
        SizedBox(height: 26.w),
        Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey.shade300),
              bottom: BorderSide(color: Colors.grey.shade300),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 16.w),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.prevSummeriseScreen);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  mulishText(
                      text: "Ends",
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      color: blackColor),
                  Container(
                    width: 86.w,
                    height: 34.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: const Color(0xFF787880).withOpacity(0.12),
                    ),
                    child: Center(
                      child: mulishText(
                          text: "8:00 AM",
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        // Expanded(
        //   child: ValueListenableBuilder<List<Event>>(
        //     valueListenable: _selectedEvents,
        //     builder: (context, value, _) {
        //       return ListView.builder(
        //         itemCount: value.length,
        //         itemBuilder: (context, index) {
        //           return Container(
        //             decoration: BoxDecoration(
        //               border: Border(
        //                 top: index == 0
        //                     ? BorderSide(color: Colors.grey.shade300)
        //                     : BorderSide.none,
        //                 bottom: BorderSide(color: Colors.grey.shade300),
        //               ),
        //             ),
        //             child: Padding(
        //               padding:
        //                   EdgeInsets.symmetric(vertical: 5.h, horizontal: 16.w),
        //               child: Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   mulishText(
        //                       text: "Ends",
        //                       fontSize: 17.sp,
        //                       fontWeight: FontWeight.w400,
        //                       color: blackColor),
        //                   Container(
        //                     width: 86.w,
        //                     height: 34.h,
        //                     decoration: BoxDecoration(
        //                       borderRadius: BorderRadius.circular(6.r),
        //                       color: const Color(0xFF787880).withOpacity(0.12),
        //                     ),
        //                     child: Center(
        //                       child: mulishText(
        //                           text: "8:00 AM",
        //                           fontSize: 17.sp,
        //                           fontWeight: FontWeight.w600,
        //                           color: blackColor),
        //                     ),
        //                   )
        //                 ],
        //               ),
        //             ),
        //           );
        //         },
        //       );
        //     },
        //   ),
        // ),
      ],
    );
  }
}

class Event {
  final String title;

  const Event(this.title);

  @override
  String toString() => title;
}

/// Example events.
///
/// Using a [LinkedHashMap] is highly recommended if you decide to use a map.
final kEvents = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll(_kEventSource);

final _kEventSource = {
  for (var item in List.generate(50, (index) => index))
    DateTime.utc(kFirstDay.year, kFirstDay.month, item * 5): List.generate(
        item % 4 + 1, (index) => Event('Event $item | ${index + 1}'))
}..addAll({
    kToday: [
      const Event('Today\'s Event 1'),
      const Event('Today\'s Event 2'),
    ],
  });

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

/// Returns a list of [DateTime] objects from [first] to [last], inclusive.
List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(
    dayCount,
    (index) => DateTime.utc(first.year, first.month, first.day + index),
  );
}

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);
