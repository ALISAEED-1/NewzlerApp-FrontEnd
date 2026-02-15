import 'package:flutter/material.dart';
import 'package:front_end_project/line_4/bookmark_3.dart';
import 'package:front_end_project/line_5/full_coveage.dart';
import 'package:front_end_project/line_5/search_1.dart';
import 'package:front_end_project/sign_in.dart';
import 'package:front_end_project/sign_up.dart';
import 'package:front_end_project/splashscreen.dart';
import 'package:front_end_project/welcome_screen.dart';

import 'add_profilepic.dart';
import 'confirm_email.dart';
import 'forget_password.dart';
import 'forget_username.dart';
import 'initial_page.dart';
import 'line_2/account_1.dart';
import 'line_2/account_2.dart';
import 'line_2/account_3.dart';
import 'line_2/account_4.dart';
import 'line_2/my_category.dart';
import 'line_2/my_language.dart';
import 'line_2/my_publisher.dart';
import 'line_2/notification_1.dart';
import 'line_2/setting_screen.dart';
import 'line_2/theme_1.dart';
import 'line_2/theme_2.dart';
import 'line_3/change_password.dart';
import 'line_3/create_password.dart';
import 'line_3/edit_profile.dart';
import 'line_3/my_profile.dart';
import 'line_3/profie_3.dart';
import 'line_3/profile_4.dart';
import 'line_3/profile_5.dart';
import 'line_3/profile_6.dart';
import 'line_3/profile_7.dart';
import 'line_3/profile_8.dart';
import 'line_3/profile_9.dart';
import 'line_4/bookmark_1.dart';
import 'line_4/bookmark_2.dart';
import 'line_5/login_signup.dart';
import 'line_5/search_3.dart';
import 'line_5/tranding.dart';
import 'line_6/video_live_new_1.dart';
import 'line_6/video_live_new_3.dart';
import 'line_7/cricket_score.dart';
import 'line_7/dark_mode.dart';
import 'line_7/home_1.dart';
import 'line_7/score_detail.dart';
import 'line_8/404.dart';
import 'line_8/force_update.dart';
import 'line_8/load_more.dart';
import 'line_8/loadingbuttons.dart';
import 'line_8/maintanence.dart';
import 'line_8/no_internet.dart';
import 'line_8/search_loading.dart';
import 'line_8/toastmessage.dart';
import 'line_8/update_available.dart';
import 'mylanguage.dart';
import 'onboarding_1.dart';
import 'onboarding_2.dart';
import 'onboarding_select.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  SplashscreenDemo(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
