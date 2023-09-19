import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff0A2647),
      body: Column(
        children: [
          SizedBox(
            height: h * 6 / 80,
          ),
          Container(
              height: h * 176 / 800,
              width: w,
              child: Image(image: AssetImage('assets/logo.png'))),
          Center(
            child: Text('BORROW',
                style: GoogleFonts.euphoriaScript(
                    fontSize: 70,
                    fontWeight: FontWeight.w400,
                    color: Colors.white)),
          ),
          Spacer(),
          Stack(children: [
            FittedBox(
                child: SvgPicture.asset(
              'assets/vec2.svg',
              fit: BoxFit.cover,
            )),
            FittedBox(
                child: SvgPicture.asset(
              'assets/vec1.svg',
              fit: BoxFit.cover,
            )),
            Column(children: [
              SizedBox(
                height: h * 15 / 80,
              ),
              Center(
                child: Text(
                  'Log in to your Account',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: h * 50 / 800,
              ),
              Container(
                  width: w * 413 / 520,
                  height: h * 53 / 800,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: w * 413 / 520,
                            height: h * 53 / 800,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(73.30833435058594),
                                topRight: Radius.circular(73.30833435058594),
                                bottomLeft: Radius.circular(73.30833435058594),
                                bottomRight: Radius.circular(73.30833435058594),
                              ),
                              color: Color.fromRGBO(10, 38, 71, 1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/google_logo.svg'),
                                Text(
                                  'Login with Google',
                                  style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ))),
                  ]))
            ])
          ])
        ],
      ),
    );
  }
}

// class CustomClipPath extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height - 100);
//     path.quadraticBezierTo(
//         size.width, size.height, size.width / 2, size.height - 100);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }
