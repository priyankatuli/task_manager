import 'package:flutter/material.dart';
import 'package:task_manager/UI/screens/authentication/sign_in_screen.dart';
import 'package:task_manager/UI/screens/authentication/update_profile_screen.dart';
import 'package:task_manager/UI/utility/app_colors.dart';
import 'package:task_manager/UI/widgets/network_cached_image.dart';
import 'package:task_manager/ui/controllers/authentication_controller.dart';

AppBar profileAppBar(context,
    [bool isUpdate= false]) {

  return AppBar(

    backgroundColor: AppColors.themeColor,
    leading: const Padding(
      padding: EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 10,
        child: NetworkCachedImage(url: '',),
      ),
    ),
    title: GestureDetector(
      onTap: (){
        if(isUpdate){
          return;
        }
        Navigator.push(context, MaterialPageRoute(builder: (context) => const UpdateProfileScreen(),),);
      },
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(AuthenticationController.userData?.fullName ?? '',
            style:const  TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w400
            ),),
          Text(AuthenticationController.userData?.email ?? '',
            style: const TextStyle(
                fontSize: 13,
                color: Colors.white,fontWeight: FontWeight.w400
            ),
          )
        ],
      ),
    ),

    actions: [
      IconButton(onPressed: () async {

        await AuthenticationController.clearAllData();

        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) => const SignInScreen()),
                (route)=>false);

      }, icon: const  Icon(Icons.logout_outlined))
    ],

  );
}
