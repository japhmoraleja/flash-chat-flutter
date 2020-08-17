import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
      onGenerateRoute: (route) {
        switch (route.name) {
          case WelcomeScreen.id:
            return PageTransition(
              child: WelcomeScreen(),
              type: PageTransitionType.fade,
            );
            break;
          case LoginScreen.id:
            return PageTransition(
              child: LoginScreen(),
              type: PageTransitionType.fade,
            );
            break;
          case RegistrationScreen.id:
            return PageTransition(
              child: RegistrationScreen(),
              type: PageTransitionType.fade,
            );
            break;
          case ChatScreen.id:
            return PageTransition(
              child: ChatScreen(),
              type: PageTransitionType.fade,
            );
            break;
          default:
            return null;
        }
      },
      // initialRoute: WelcomeScreen.id,
      // routes: {
      //   WelcomeScreen.id: (context) => WelcomeScreen(),
      //   LoginScreen.id: (context) => LoginScreen(),
      //   RegistrationScreen.id: (context) => RegistrationScreen(),
      //   ChatScreen.id: (context) => ChatScreen(),
      // },
    );
  }
}

class PageTransitions extends FlashChat {
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
