import 'package:flutter/material.dart';
import 'package:task_manager/presentation/ui/screens/cancelled_task_screen.dart';
import 'package:task_manager/presentation/ui/screens/completed_screen.dart';
import 'package:task_manager/presentation/ui/screens/in_progress_screen.dart';
import 'package:task_manager/presentation/ui/screens/new_task_screen.dart';
import 'package:task_manager/presentation/ui/widgets/profile_app_bar.dart';


class MainBottomNavigationBar extends StatefulWidget{
  const MainBottomNavigationBar({super.key});

  @override
  State<StatefulWidget> createState() {

    return MainBottomNavigationBarState();
  }

}

class MainBottomNavigationBarState extends State<MainBottomNavigationBar>{

  int _selectedIndex = 0;

  //to create list of screens
  final List<Widget> _screens = const [
    NewTaskScreen(),
    CompletedScreen(),
    InProgressScreen(),
    CancelledTaskScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar(context),
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.grey.shade200,
        //surfaceTintColor: Colors.green,
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.task_outlined),
              label: 'New'
          ),
          NavigationDestination(
              icon: Icon(Icons.done_outline_outlined),
              label: 'Completed'
          ),
          NavigationDestination(
              icon: Icon(Icons.watch_later_outlined),
              label: 'In Progress'
          ),
          NavigationDestination(
              icon: Icon(Icons.cancel_outlined),
              label: 'Cancelled'
          )
      ],
      ),

      /*bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index){
          _selectedIndex = index;
          if(mounted){
            setState(() {

            });
          }
        },
        selectedItemColor: AppColors.themeColor1,
        unselectedItemColor: Colors.purple.shade300,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon:Icon(Icons.abc),label: 'New Task'),
          BottomNavigationBarItem(icon:Icon(Icons.done),label: 'Completed'),
          BottomNavigationBarItem(icon:Icon(Icons.ac_unit),label: 'In Progress'),
          BottomNavigationBarItem(icon:Icon(Icons.close),label: 'Cancelled'),
        ],
      ),
    );
       */

    );
  }


}

