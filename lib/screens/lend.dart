import 'package:borrow/widgets/appbar.dart';
import 'package:borrow/widgets/bottomnavbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LendPage extends StatefulWidget {
  const LendPage({super.key});

  @override
  State<LendPage> createState() => _LendPageState();
}

class _LendPageState extends State<LendPage> {
  int index = 0;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myappBar(context, 'Lend Requests'),
        backgroundColor: Color(0xff0A2647),
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xff144272),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/lend.svg',
                ),
                label: '',
                activeIcon: SvgPicture.asset('assets/lend1.svg'),
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/post.svg',
                  ),
                  label: '',
                  activeIcon: SvgPicture.asset('assets/post1.svg')),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/borrow.svg',
                  ),
                  label: '',
                  activeIcon: SvgPicture.asset('assets/borrow1.svg'))
            ]));
  }
}
