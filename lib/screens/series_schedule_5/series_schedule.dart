import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:info_session_fall_2020/screens/demo_app_screen/demo_app_screen.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'package:info_session_fall_2020/constants.dart';
import 'package:info_session_fall_2020/widgets/default_screen.dart';
import 'package:info_session_fall_2020/widgets/padding_screen.dart';

class SeriesSchedule extends StatefulWidget {
  static final String routeName = '/series_schedule';

  @override
  _SeriesScheduleState createState() => _SeriesScheduleState();
}

class _SeriesScheduleState extends State<SeriesSchedule>
    with AfterLayoutMixin<SeriesSchedule> {
  List<Meeting> meetings;
  Meeting clickedMeeting;

  @override
  void afterFirstLayout(BuildContext context) {
    clickedMeeting = meetings[0];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return PaddingScreen(
      child: Row(
        children: [
          Expanded(
            flex: 40,
            child: SfCalendar(
              view: CalendarView.month,
              dataSource: MeetingDataSource(_getDataSource()),
              // by default the month appointment display mode set as Indicator, we can
              // change the display mode as appointment using the appointment display mode
              // property
              monthViewSettings: MonthViewSettings(
                  appointmentDisplayMode:
                      MonthAppointmentDisplayMode.appointment),
              onTap: (CalendarTapDetails details) {
                clickedMeeting = details.appointments.length > 0
                    ? details.appointments[0]
                    : null;
                setState(() {});
                print(clickedMeeting);
              },
              initialSelectedDate: DateTime(2020, 9, 18),
            ),
          ),
          const SizedBox(
            width: kDefaultMargin * 4,
          ),
          Expanded(
            flex: 60,
            child: _DetailsView(
              meeting: clickedMeeting,
            ),
          ),
          // Column(
          //   children: [
          //     GestureDetector(
          //       onTap: () =>
          //           Navigator.pushNamed(context, DemoAppScreen.routeName),
          //       child: Container(
          //         width: 30.0,
          //         height: 30.0,
          //         color: Colors.red,
          //       ),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }

  List<Meeting> _getDataSource() {
    meetings = <Meeting>[
      Meeting(
          session: 1,
          eventName: 'Hello World App',
          from: DateTime(2020, 9, 18, 19, 0),
          to: DateTime(2020, 9, 18, 20, 30),
          background: kGoogleBlue,
          isAllDay: false,
          description: 'IDE Setup, Building our first app',
          topicsCovered:
              'What\'s Flutter, Widgets, Scaffold, AppBar, Text, Center'),
      Meeting(
          session: 2,
          eventName: 'Favorite Celebrity App & Favorite Celebrities App',
          from: DateTime(2020, 9, 25, 19, 0),
          to: DateTime(2020, 9, 25, 20, 30),
          background: kGoogleGreen,
          isAllDay: false,
          description:
              'Display your favorite celebrity on the screen. Bonus app: Display a list of your favorite celebrities on the screen.',
          topicsCovered:
              'Columns, Rows, Containers, Image, AssetImage, NetworkImage, Padding, FlatButton, IconButton, TextStyle, SizedBox, List'),
      Meeting(
        session: 3,
        eventName: 'Love Calculator',
        from: DateTime(2020, 10, 2, 19, 0),
        to: DateTime(2020, 10, 2, 20, 30),
        background: kGoogleYellow,
        isAllDay: false,
        description: 'Enter two names. See if they\'re right for each other',
        topicsCovered: 'Expanded, Navigators and Routes, Http, Packages',
      ),
      Meeting(
          session: 4,
          eventName: 'Dog Quotes',
          from: DateTime(2020, 10, 23, 19, 0),
          to: DateTime(2020, 10, 23, 20, 30),
          background: kGoogleRed,
          isAllDay: false,
          description:
              'Dogs are smart. If so, shouldn\'t they have come up with some quotes to help us in life? This app does just that. It displays a list of all dog breeds along with a quote given by each breed.',
          topicsCovered:
              'Expanded, Navigators and Routes, Http, Packages, Card, CardTile'),
      Meeting(
          session: 5,
          eventName: 'Currency Exchanger',
          from: DateTime(2020, 10, 30, 19, 0),
          to: DateTime(2020, 10, 30, 20, 30),
          background: kGoogleGreen,
          isAllDay: false,
          description: 'Displays live exchange rates',
          topicsCovered:
              'Advanced State Management using Provider Package, DropDown and Cupertino Picker'),
      Meeting(
          session: 6,
          eventName: 'What\'s the weather?',
          from: DateTime(2020, 11, 6, 19, 0),
          to: DateTime(2020, 11, 6, 20, 30),
          background: kGoogleBlue,
          isAllDay: false,
          description: 'Live weather for the list of places',
          topicsCovered:
              'ListView, Advanced UI design, graphs, Provider package'),
      Meeting(
          session: 7,
          eventName: 'Hey There (Chat App)',
          from: DateTime(2020, 11, 13, 19, 0),
          to: DateTime(2020, 11, 13, 20, 30),
          background: kGoogleYellow,
          isAllDay: false,
          description:
              'Message, Share Pictures, Emojis. It\'s a fully functional chat app',
          topicsCovered: 'Firebase: Auth, Cloud Firestore, Cloud Functions'),
      Meeting(
          session: 8,
          eventName: 'MindReader (Face Recognition App)',
          from: DateTime(2020, 11, 20, 19, 0),
          to: DateTime(2020, 11, 20, 20, 30),
          background: kGoogleRed,
          isAllDay: false,
          description:
              'Identify everything about the people in the picture. This includes proabilities of happiness, anger, joy, confidence, and more.',
          topicsCovered: 'Firebase: ML Kit'),
    ];
    // final DateTime today = DateTime.now();
    // final DateTime startTime =
    //     DateTime(today.year, today.month, today.day, 9, 0, 0);
    // final DateTime endTime = startTime.add(const Duration(hours: 2));
    // meetings.add(
    //   Meeting(
    //     eventName: 'Hello World App',
    //     from: startTime,
    //     to: endTime,
    //     background: kGoogleBlue,
    //     isAllDay: false,
    //   ),
    //   Meeting(
    //     eventName: 'Favorite Celebrity App & Favorite Celebrities App',
    //     from: startTime,
    //     to: endTime,
    //     background: kGoogleGreen,
    //     isAllDay: false,
    //   ),
    // );
    return meetings;
  }
}

class _DetailsView extends StatelessWidget {
  final Meeting meeting;

  final DateFormat dateformatter = DateFormat('MMMM dd, yyyy');
  final DateFormat timeformatter = DateFormat('hh:mm a');

  _DetailsView({
    this.meeting,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultMargin * 2, horizontal: kDefaultMargin * 3),
      child: meeting == null
          ? Center(
              child: Text(
                'Click on an event to view more info.',
                style: kSubHeadline,
              ),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Session #${meeting.session}',
                  style: kSubSubHeadlineOverline,
                ),
                const SizedBox(height: kHeadlineSize / 4),
                Text(
                  meeting.eventName,
                  style: kSubHeadline,
                ),
                const SizedBox(height: kHeadlineSize / 2),
                Text(
                  '${dateformatter.format(meeting.from)}\n${timeformatter.format(meeting.from)} to ${timeformatter.format(meeting.to)} EST',
                  style: kSubSubHeadlineOverline,
                ),
                Padding(
                  padding: const EdgeInsets.all(kDefaultMargin * 2),
                  child: Center(
                    child: Container(
                      width: kDefaultMargin * 10,
                      height: kDefaultMargin,
                      color: kGoogleYellow,
                    ),
                  ),
                ),
                Text(
                  meeting.description,
                  style: kSubSubHeadlineOverline,
                ),
                const SizedBox(
                  height: kDefaultMargin,
                ),
                Text(
                  'Topics covered: ${meeting.topicsCovered}',
                  style: kSubSubHeadlineOverline,
                )
              ],
            ),
    );
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments[index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments[index].to;
  }

  @override
  String getSubject(int index) {
    return appointments[index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments[index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments[index].isAllDay;
  }
}

class Meeting {
  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;

  int session;
  String description;
  String topicsCovered;

  Meeting(
      {this.eventName,
      this.from,
      this.to,
      this.background,
      this.isAllDay,
      this.session,
      this.description,
      this.topicsCovered});
}
