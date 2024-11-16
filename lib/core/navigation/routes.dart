enum AppRoutes {
  root('/'),
  login('/login'),
  registration('/registration'),
  user('/user'),
  dashboard('/dashboard'),
  timetable('/timetable/:timetableId'),
  timetableSettings('/timetable/:timetableId/settings');

  const AppRoutes(this.path);

  final String path;
}
