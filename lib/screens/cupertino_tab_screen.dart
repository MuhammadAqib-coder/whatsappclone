import 'package:flutter/cupertino.dart';
import 'package:ios_design/main.dart';
import 'package:ios_design/screens/callScreen/calls_screen.dart';
import 'package:ios_design/screens/camera_screen.dart';
import 'package:ios_design/screens/chatScreen/chats_main_screen.dart';
import 'package:ios_design/screens/settingScreens/setting_main_screen.dart';
import 'package:ios_design/screens/statusScreens/status_screen.dart';

class CupertinoTabScreen extends StatelessWidget {
  CupertinoTabScreen({super.key});

  var data = [
    const StatusScreen(),
    CallsScreen(),
    CameraScreen(),
    ChatsMainScreen(),
    const SettingMainScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.arrow_2_circlepath_circle),
                label: 'Status'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.phone_fill), label: 'Call'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.camera), label: 'Camera'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_2_fill), label: 'Chats'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings), label: 'Setting'),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (_) => data[index],
          );
        });
  }
}
