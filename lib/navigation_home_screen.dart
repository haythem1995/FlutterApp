//import 'package:best_flutter_ui_templates/feedback_screen.dart';
//import 'package:best_flutter_ui_templates/help_screen.dart';
//import 'package:best_flutter_ui_templates/invite_friend_screen.dart';
import 'package:flutter/material.dart';
import 'package:hello_flutter/Gestion_Evenement/event_home_screen.dart';
import 'package:hello_flutter/app_theme.dart';
import 'package:hello_flutter/bottom_navigation_view/fitness_app_home_screen.dart';
import 'package:hello_flutter/custom_drawer/drawer_user_controller.dart';
import 'package:hello_flutter/custom_drawer/home_drawer.dart';
import 'package:hello_flutter/home_screen.dart';

class NavigationHomeScreen extends StatefulWidget {
  const NavigationHomeScreen({Key key, this.animationController})
      : super(key: key);
  final AnimationController animationController;
  @override
  _NavigationHomeScreenState createState() => _NavigationHomeScreenState();
}

class _NavigationHomeScreenState extends State<NavigationHomeScreen> {
  Widget screenView;
  DrawerIndex drawerIndex;

  @override
  void initState() {
    drawerIndex = DrawerIndex.HOME;
    screenView = const EventHomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: AppTheme.nearlyWhite,
          body: DrawerUserController(
            screenIndex: drawerIndex,
            drawerWidth: MediaQuery.of(context).size.width * 0.75,
            onDrawerCall: (DrawerIndex drawerIndexdata) {
              changeIndex(drawerIndexdata);
              //callback from drawer for replace screen as user need with passing DrawerIndex(Enum index)
            },
            screenView: screenView,
            //we replace screen view as we need on navigate starting screens like MyHomePage, HelpScreen, FeedbackScreen, etc...
          ),
        ),
      ),
    );
  }

  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;
      if (drawerIndex == DrawerIndex.HOME) {
        setState(() {
          screenView = const MyHomePage();
        });
      } else if (drawerIndex == DrawerIndex.Help) {
        setState(() {
          screenView = FitnessAppHomeScreen();
        });
      } /* else if (drawerIndex == DrawerIndex.FeedBack) {
        setState(() {
          screenView = FeedbackScreen();
        });
      } else if (drawerIndex == DrawerIndex.Invite) {
        setState(() {
          screenView = InviteFriend();
        });
      } */
      else {
        //do in your way......
      }
    }
  }
}
