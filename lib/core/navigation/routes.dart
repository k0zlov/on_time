enum AppRoutes {
  root('/'),
  login('/login'),
  registration('/registration'),
  user('/user'),
  dashboard('/dashboard'),
  invitation('/invitation/:code'),
  timetable('/timetable/:timetableId'),
  timetableSettings('/timetable/:timetableId/timetableSettings');

  const AppRoutes(this.path);

  final String path;
}
