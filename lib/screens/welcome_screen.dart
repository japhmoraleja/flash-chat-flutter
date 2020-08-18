import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/components/buttons.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with TickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 4),
      vsync: this,
    );

    animation = ColorTween(begin: Colors.blue, end: Colors.white).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            FlashChatHeaderText(),
            SizedBox(height: 48.0),
            LogInButton(),
            RegistrationButton(),
          ],
        ),
      ),
    );
  }
}

class FlashChatHeaderText extends StatelessWidget {
  const FlashChatHeaderText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Hero(
          tag: 'flash-logo',
          child: Container(
            child: Image.asset('images/logo.png'),
            height: 60,
          ),
        ),
        TypewriterAnimatedTextKit(
          speed: Duration(milliseconds: 300),
          pause: Duration(milliseconds: 2000),
          totalRepeatCount: 4,
          text: ['Flash Chat'],
          textStyle: TextStyle(
            fontSize: 45.0,
            fontWeight: FontWeight.w900,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}

//                                           ▓▓██████          ██████
//                                         ▓▓██    ▓▓██      ██▓▓  ████
//                                         ██  ░░░░  ▓▓████████░░░░  ██
//                                         ██  ░░░░░░▓▓██████████░░░░██
//                                         ██░░░░░░████████  ██████░░██
//                                         ██░░████████████  ██████████
//                                         ████████████████░░██████████
//                                       ████████████▓▓▓▓██░░██▓▓████████
//                                       ██▓▓    ████    ▓▓  ▓▓  ████████
//                                       ██▓▓    ▓▓████      ░░██████░░██
//                                       ██      ██████████░░██████▓▓░░██
//                                       ██░░    ██████████  ██████▓▓░░██
//                                       ██▓▓      ██████      ▓▓▓▓  ▓▓██
//                                       ██▓▓                        ▓▓
//                                       ██▓▓                      ░░▓▓
//                                     ██████▓▓░░░░      ▓▓██▓▓  ░░▓▓██
//                                     ████████▓▓        ██████  ░░▓▓██
//                                     ████▓▓▓▓██▓▓░░░░  ▓▓██▓▓░░▓▓████
//                                     ██▓▓░░░░▓▓▓▓░░░░░░░░░░░░▓▓██████
//                                   ████▓▓                ░░░░████▓▓████
//                                   ██████▓▓                  ░░▓▓▓▓████
//                                 ████████▓▓▓▓                  ▓▓▓▓████
//                               ██████▓▓                      ░░░░░░░░██
//                             ████████▓▓                      ░░░░░░░░▓▓██
//                             ████████▓▓                      ░░░░░░░░▓▓██
//                           ██████████▓▓░░░░            ░░░░░░▒▒░░▒▒░░▓▓██
//                           ████████████▒▒  ░░      ░░░░░░░░░░▒▒░░▒▒░░▓▓██
//                         ██████████████▓▓░░                ░░░░░░░░▓▓████
//                       ████▓▓▓▓██████████▓▓░░░░▒▒░░░░░░░░░░░░▒▒░░▒▒▓▓████
//                       ██▓▓    ▓▓████████▓▓    ░░░░      ░░░░░░░░▓▓██████
//                     ████▓▓      ▓▓████████▓▓  ░░░░░░  ░░░░░░░░  ▓▓████
//                     ████▓▓      ░░▓▓██████▓▓░░▒▒░░░░▒▒▒▒░░▒▒▒▒  ▓▓████
//   ░░░░              ████▓▓        ▓▓██▓▓▓▓    ▓▓░░░░░░░░░░▒▒░░  ▓▓████
// ░░    ░░████      ██████▓▓        ░░▓▓        ▓▓░░░░░░░░▒▒▒▒░░  ▓▓▓▓██
// ░░    ░░████████████████▓▓        ░░▓▓        ▓▓░░░░▒▒▒▒░░▓▓      ▓▓██
//   ░░░░░░▓▓██████████████▓▓        ░░▓▓        ▓▓▒▒▒▒▒▒▒▒░░▓▓      ▒▒
//       ████▓▓▓▓████████▓▓        ░░██▓▓          ▓▓▒▒▒▒▒▒██▓▓      ▒▒
//           ████▓▓▓▓████      ▒▒▒▒████▓▓          ▓▓▒▒▒▒████▓▓      ▒▒
//               ████████        ░░░░██░░▓▓        ▓▓░░▒▒▒▒░░▓▓      ▒▒
//                     ░░░░          ░░░░▓▓        ▓▓░░░░░░▓▓░░      ░░
//                       ▒▒░░░░        ▓▓▓▓          ▓▓▓▓▓▓  ▒▒        ▒▒
//                         ░░░░░░░░░░░░░░  ▒▒        ░░      ░░          ▒▒
//                             ▒▒▒▒▒▒▒▒    ▒▒      ░░▒▒▒▒    ▒▒      ░░░░░░
//                                         ▒▒      ░░░░▒▒      ▒▒░░░░░░░░▒▒
//                                           ▒▒░░▒▒▒▒▒▒          ░░░░▒▒▒▒
