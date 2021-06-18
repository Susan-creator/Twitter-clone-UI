import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_ui/ui/main_screen.dart';
import 'package:twitter_ui/ui/message_page.dart';
import 'package:twitter_ui/ui/search_page.dart';

class NotificationPage extends StatefulWidget {
  final index;
  const NotificationPage({Key key, this.index}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      key: _scaffoldKey,
      drawer: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Drawer(
          child: Material(
            color: Colors.black,
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  accountName: Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Susan Owoicho",
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.white70),
                        ),
                        Container(
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.blue,
                            ),
                            iconSize: 25.0,
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  accountEmail: Text(
                    "@officialsusen",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white38,
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: Icon(Icons.person),
                      iconSize: 45.0,
                      color: Colors.black26,
                      onPressed: () {},
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white24,
                ),
                Container(
                  color: Colors.black,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.white38,
                        ),
                        title: Text(
                          "Profile",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.list,
                          color: Colors.white38,
                        ),
                        title: Text(
                          "Lists",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.topic,
                          color: Colors.white38,
                        ),
                        title: Text(
                          "Topics",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.bookmark,
                          color: Colors.white38,
                        ),
                        title: Text(
                          "Bookmarks",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          MaterialCommunityIcons.flash_outline,
                          color: Colors.white38,
                        ),
                        title: Text(
                          "Moments",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      Divider(
                        color: Colors.white24,
                      ),
                      ListTile(
                        title: Text(
                          "Settings and Privacy",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: Text(
                          "Help Center",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      Divider(
                        color: Colors.white24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: IconButton(
                              icon: FaIcon(FontAwesomeIcons.lightbulb),
                              iconSize: 25.0,
                              color: Colors.blue,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            child: IconButton(
                              icon: Icon(Icons.qr_code),
                              iconSize: 25.0,
                              color: Colors.blue,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.blue,
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        title: Text('Notifications'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            iconSize: 25.0,
            color: Colors.blue,
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.home,
                  color: widget.index == 0
                      ? Colors.blue
                      : Colors.white.withOpacity(.40)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainScreen(index: 0),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.search,
                  color: widget.index == 1
                      ? Colors.blue
                      : Colors.white.withOpacity(.40)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchPage(index: 1),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.bell,
                  color: widget.index == 2
                      ? Colors.blue
                      : Colors.white.withOpacity(.40)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationPage(index: 2),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.envelope,
                  color: widget.index == 3
                      ? Colors.blue
                      : Colors.white.withOpacity(.40)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MessagePage(index: 3),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
