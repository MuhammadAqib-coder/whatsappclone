import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_design/cubits/call_cubit.dart';
import 'package:ios_design/cubits/country_cubit.dart';
import 'package:ios_design/cubits/notificationCubits/message_cubit.dart';
import 'package:ios_design/practice.dart';
import 'package:ios_design/screens/callScreen/all_calls_screen.dart';
import 'package:ios_design/screens/callScreen/calls_screen.dart';
import 'package:ios_design/screens/chatScreen/chat_selection_screen.dart';
import 'package:ios_design/screens/chatScreen/chats_main_screen.dart';
import 'package:ios_design/screens/chatScreen/chatting_screen.dart';
import 'package:ios_design/screens/cupertino_tab_screen.dart';
import 'package:ios_design/screens/phone_number_screen.dart';
import 'package:ios_design/screens/settingScreens/account_screen.dart';
import 'package:ios_design/screens/settingScreens/chats_screen.dart';
import 'package:ios_design/screens/settingScreens/data_storage_screen.dart';
import 'package:ios_design/screens/settingScreens/edit_profile_screen.dart';
import 'package:ios_design/screens/settingScreens/notification_screen.dart';
import 'package:ios_design/screens/settingScreens/starred_messages.dart';
import 'package:ios_design/screens/statusScreens/status_editting_screen.dart';
import 'package:ios_design/screens/statusScreens/status_screen.dart';
import 'package:ios_design/widgets/chat_summary_widget.dart';

import 'cubits/notificationCubits/group_cubit.dart';
import 'cubits/notificationCubits/preview_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp()
      //   DevicePreview(
      //   enabled: !kReleaseMode,
      //   builder: (context) => MyApp(),
      // )
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => CountryCubit()),
            BlocProvider(create: (_) => CallCubit()),
            BlocProvider(create: (_) => MessageCubit()),
            BlocProvider(create: (_) => GroupCubit()),
            BlocProvider(create: (_) => PreviewCubit()),
          ],
          child: CupertinoApp(
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            theme: CupertinoThemeData(brightness: Brightness.light),
            home: child,
          ),
        );
      },
      child: PhoneNumberScreen(),
    );
  }
}
