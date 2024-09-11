class UrlList{
  static const String _baseURL = 'https://task.teamrabbil.com/api/v1';
  static const String registrationURL = '$_baseURL/registration';
  static const String logInURL = '$_baseURL/login';

  static const String createTask = '$_baseURL/createTask';

  static const String newTask = '$_baseURL/listTaskByStatus/New';

  static const String completedTask = '$_baseURL/listTaskByStatus/Completed';

  static const String inProgressTask = '$_baseURL/listTaskByStatus/InProgress';

  static const String cancelledTask = '$_baseURL/listTaskByStatus/Cancelled';

  static const String taskStatusCount = '$_baseURL/taskStatusCount';

  static const String updateProfile = '$_baseURL/profileUpdate';

  static String deleteTask(String id) => '$_baseURL/deleteTask/$id';

  static String updateTask(String id,String status) => '$_baseURL/updateTaskStatus/$id/$status';

  static String recoverVerifyEmail  ='$_baseURL/recoverVerifyEmail';

  static String recoverVerifyOTP ='$_baseURL/recoverVerifyOTP';

  static String recoverResetPass ='$_baseURL/recoverResetPass';





}