import 'package:on_time/core/network/api_endpoints/api_endpoint.dart';

class ApiEndpoints {
  ApiEndpoints._();

  static const auth = '/auth';

  static const logout = ApiEndpoint(
    url: '$auth/logout',
    method: HttpMethods.post,
  );
  static const login = ApiEndpoint(
    url: '$auth/login',
    method: HttpMethods.post,
  );
  static const register = ApiEndpoint(
    url: '$auth/register',
    method: HttpMethods.post,
  );
  static const refreshToken = ApiEndpoint(
    url: '$auth/refresh',
    method: HttpMethods.get,
  );
  static const getUser = ApiEndpoint(
    url: auth,
    method: HttpMethods.get,
  );

  static const timetables = '/timetables';

  static const createTimetable = ApiEndpoint(
    url: '$timetables/create',
    method: HttpMethods.post,
  );
  static const updateTimetable = ApiEndpoint(
    url: '$timetables/update',
    method: HttpMethods.put,
  );
  static const deleteTimetable = ApiEndpoint(
    url: '$timetables/delete',
    method: HttpMethods.delete,
  );
  static const leaveTimetable = ApiEndpoint(
    url: '$timetables/leave',
    method: HttpMethods.post,
  );

  static const events = '/events';

  static const createEvent = ApiEndpoint(
    url: '$events/create',
    method: HttpMethods.post,
  );
  static const updateEvent = ApiEndpoint(
    url: '$events/update',
    method: HttpMethods.put,
  );
  static const deleteEvent = ApiEndpoint(
    url: '$events/delete',
    method: HttpMethods.delete,
  );

  static const hosts = '$events/hosts';

  static const addHost = ApiEndpoint(
    url: '$hosts/add',
    method: HttpMethods.post,
  );
  static const removeHost = ApiEndpoint(
    url: '$hosts/remove',
    method: HttpMethods.delete,
  );
}
