import 'package:amerchendice/pages/client/account/account.dart';
import 'package:amerchendice/pages/client/home_page/home_page.dart';
import 'package:amerchendice/pages/client/whislist/whistlist.dart';
import 'package:amerchendice/thema.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedPage = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _listPage = [
      HomePage(),
      WhistlistPage(),
      AccountPage(),
    ];

    final _bottomNavBarItem = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          Icons.dashboard_outlined,
        ),
        title: Text(
          "Dashboard",
          style: GoogleFonts.poppins(
            fontSize: 10,
          ),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.favorite_outline,
        ),
        title: Text(
          "Whistlist",
          style: GoogleFonts.poppins(
            fontSize: 10,
          ),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.person_outline,
        ),
        title: Text(
          "Account",
          style: GoogleFonts.poppins(
            fontSize: 10,
          ),
        ),
      ),
    ];

    final bottomNavbar = BottomNavigationBar(
      items: _bottomNavBarItem,
      currentIndex: _selectedPage,
      backgroundColor: kWhiteColor,
      selectedItemColor: kPurpleColor,
      unselectedItemColor: kBlackColor,
      type: BottomNavigationBarType.fixed,
      onTap: _onItemTapped,
    );

    return Scaffold(
      body: _listPage[_selectedPage],
      bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
          child: bottomNavbar),
    );
  }
}
