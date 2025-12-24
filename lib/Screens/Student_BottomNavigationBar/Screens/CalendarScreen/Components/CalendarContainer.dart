import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarContainer extends StatelessWidget {
  final DateTime today;
  final Function(DateTime, DateTime) onDaySelected;

  const CalendarContainer({
    super.key,
    required this.today,
    required this.onDaySelected,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: themeProvider.isDark?Colors.grey.shade800:Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: TableCalendar(
          locale: "en_us",
          rowHeight: 43,
          headerStyle: HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
            titleTextStyle: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: themeProvider.isDark?Colors.white:Colors.black,
            ),
          ),
          availableGestures: AvailableGestures.all,
          selectedDayPredicate: (day) => isSameDay(day, today),
          focusedDay: today,
          firstDay: DateTime.utc(2016, 10, 16),
          lastDay: DateTime.utc(2036, 10, 16),
          onDaySelected: onDaySelected,
        ),
      ),
    );
  }
}
