import 'package:flutter/material.dart';
import '../widgets/notification_widget.dart';
import '../widgets/post_widget.dart';
import '../widgets/groups_widget.dart';
import '../widgets/settings_widget.dart';
import '../widgets/live_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Color.fromRGBO(24, 119, 242, 1.0),
            unselectedLabelColor: Colors.grey,
            indicatorColor: Color.fromRGBO(24, 119, 242, 1.0),
            tabs: <Tab>[
              Tab(
                child: Icon(
                  Icons.home,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.live_tv,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.group,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.notifications_none,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.menu,
                ),
              ),
            ],
          ),
          title: Image.asset("assets/facebook.png"),
          backgroundColor: Colors.white,
          elevation: 4,
        ),
        body: TabBarView(
          children: <Widget>[
            PostWidget(),
            LiveWidget(),
            GroupsWidget(),
            NotificationWidget(),
            SettingsWidget(),
          ],
        ),
      ),
    );
  }
}
