class UrlList{
  static const String _baseURL = 'http://35.73.30.144:2005/api/v1';
  static const String registrationURL = '$_baseURL/Registration';
  static const String logInURL = '$_baseURL/Login';

  static const String createTask = '$_baseURL/createTask';

  static const String newTask = '$_baseURL/listTaskByStatus/New';

  static const String completedTask = '$_baseURL/listTaskByStatus/Completed';
  static const String inProgressTask = '$_baseURL/listTaskByStatus/InProgress';
  static const String cancelledTask = '$_baseURL/listTaskByStatus/Cancelled';

  static const String taskStatusCount = '$_baseURL/taskStatusCount';
  static const String updateProfile = '$_baseURL/ProfileUpdate';
  static String deleteTask(String id) => '$_baseURL/deleteTask/$id';

  static String updateTask(String id,String status) => '$_baseURL/updateTaskStatus/$id/$status';

  static String recoverVerifyEmail  ='$_baseURL/RecoverVerifyEmail';

  static String recoverVerifyOTP ='$_baseURL/RecoverVerifyOTP';

  static String recoverResetPass ='$_baseURL/RecoverResetPassword';



}