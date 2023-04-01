
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';

List<SideMenuItem> items = [
  SideMenuItem(
    // Priority of item to show on SideMenu, lower value is displayed at the top
    priority: 0,
    title: 'Dashboard',
    //onTap: () => page.jumpToPage(0),
    icon: Icon(Icons.home),
    badgeContent: Text(
      '3',
      style: TextStyle(color: Colors.white),
    ),
  ),
  SideMenuItem(
    priority: 1,
    title: 'Settings',
  //  onTap: () => page.jumpToPage(1),
    icon: Icon(Icons.settings),
  ),
  SideMenuItem(
    priority: 2,
    title: 'Exit',
   // onTap: () {},
    icon: Icon(Icons.exit_to_app),
  ),
];

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
   // PageController page = PageController();
   // var page = ;
    return Scaffold(
      
      body: Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    SideMenu(
      // Page controller to manage a PageView
      controller: Page,
      // Will shows on top of all items, it can be a logo or a Title text
      title: Image.asset('assets/images/easy_sidemenu.png'),
      // Will show on bottom of SideMenu when displayMode was SideMenuDisplayMode.open
      footer: Text('demo'),
      // Notify when display mode changed
      onDisplayModeChanged: (mode) {
        print(mode);
      },
      // List of SideMenuItem to show them on SideMenu
      items: items,
    ))