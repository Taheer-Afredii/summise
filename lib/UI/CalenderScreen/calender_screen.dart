import 'package:flutter/material.dart';
import 'package:summise/Core/Constant/colorss.dart';

import 'widget/table_calender_widget.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: whiteColor,
      body: TableEventsWidget(),
    );
  }
}
