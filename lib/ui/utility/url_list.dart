class UrlList{
  static const String _baseURL = 'https://task.teamrabbil.com/api/v1';
  static const String registrationURL = '$_baseURL/registration';
  static const String logInURL = '$_baseURL/login';

  static const String createTask = '$_baseURL/createTask';
  static const String fromAllTheTask = '$_baseURL/listTaskByStatus';
  static const String getNewTask = '$fromAllTheTask/New';
}