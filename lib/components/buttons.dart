import 'package:flutter/material.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';

// ********************************************************************* //
// *                                                                   * //
// *                                                                   * //
// *                           Menu Button                             * //
// *                                                                   * //
// *                                                                   * //
// ********************************************************************* //

// class MenuButton extends StatelessWidget {
//   const MenuButton(
//       {@required this.buttonColor, @required this.buttonText, @required this.onPressed});

//   final Color buttonColor;
//   final String buttonText;
//   final Function onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 16.0),
//       child: Material(
//         elevation: 5.0,
// color: buttonColor,
// color: Colors.lightBlueAccent,
//         borderRadius: BorderRadius.circular(30.0),
//         child: MaterialButton(
// onPressed: () {
//   Navigator.pushNamed(context, LoginScreen.id);
// },
//           onPressed: onPressed,
//           minWidth: 200.0,
//           height: 42.0,
//           child: Text(buttonText),
//         ),
//       ),
//     );
//   }
// }

class LogInButton extends StatelessWidget {
  const LogInButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, LoginScreen.id);
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            'Log In',
          ),
        ),
      ),
    );
  }
}

class RegistrationButton extends StatelessWidget {
  const RegistrationButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, RegistrationScreen.id);
          },
          minWidth: 200.0,
          height: 42.0,
          child: InkWell(
            highlightColor: Color(0xFF152E5A),
            child: Text(
              'Register',
            ),
          ),
          // child: Text(
          //   'Register',
          // ),
        ),
      ),
    );
  }
}

// ********************************************************************* //
// *                                                                   * //
// *                                                                   * //
// *                        Registration Button                        * //
// *                                                                   * //
// *                                                                   * //
// ********************************************************************* //

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: () {
            //Implement registration functionality.
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            'Register',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
