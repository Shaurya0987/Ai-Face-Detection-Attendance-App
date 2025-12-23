import 'package:flutter/material.dart';
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
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: TableCalendar(
          locale: "en_us",
          rowHeight: 43,
          headerStyle: const HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
            titleTextStyle: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
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
