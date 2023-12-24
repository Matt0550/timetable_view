import 'package:flutter/material.dart';
import 'package:timetable_view/src/models/table_event_time.dart';

class TableEvent {
  final String title;

  /// Id to uniquely identify event. Used mainly in callbacks
  final int eventId;

  /// Id to uniquely identify the lane an event falls under. Used mainly in callbacks
  final int laneIndex;

  /// Optional. Subtitle to display under title
  final String subtitle;

  final bool showTimeStartEnd;
  final TextStyle? timeStyle;

  final TableEventTime startTime;

  final TableEventTime endTime;

  final EdgeInsets padding;

  final EdgeInsets margin;

  // //Todo:: Determine if Event ID needs to be passed to callback
  // final void Function(
  //         int laneIndex, String title, TableEventTime start, TableEventTime end)
  //     onTap;

  final BoxDecoration? decoration;

  final Color backgroundColor;

  final TextStyle textStyle;

  final TextStyle? subtitleStyle;

  TableEvent({
    required this.title,
    required this.eventId,
    required this.laneIndex,
    this.subtitle: '',
    this.showTimeStartEnd: true,
    this.timeStyle,
    required this.startTime,
    required this.endTime,
    this.padding: const EdgeInsets.all(10),
    this.margin: const EdgeInsets.all(1),
    // this.onTap,
    this.decoration,
    this.backgroundColor: const Color(0xCC2196F3),
    this.textStyle: const TextStyle(color: Colors.white),
    this.subtitleStyle,
  }) : assert(endTime.isAfter(startTime));
}
