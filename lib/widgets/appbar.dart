import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar myappBar(BuildContext context, String title) {
  return AppBar(
      backgroundColor: Color(0xff144272),
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () {},
      ),
      centerTitle: true,
      title: Text(title,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),
          )),
      actions: [
        GestureDetector(
          onTap: () {},
          child: SvgPicture.asset(
            'assets/vec3.svg',
            height: 30,
            width: 30,
          ),
        ),
        SizedBox(
          width: 15,
        )
      ]);
}
