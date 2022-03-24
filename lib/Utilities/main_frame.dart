import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Call_Screen.dart';
import 'package:whatsapp_clone/Screens/Camera_Feature.dart';
import 'package:whatsapp_clone/Screens/Chat_Screen.dart';
import 'package:whatsapp_clone/Screens/Status_Screen.dart';

class MainFrame extends StatefulWidget {
  @override
  _MainFrameState createState() => _MainFrameState();
}

class _MainFrameState extends State<MainFrame> with TickerProviderStateMixin {
  late TabController tabController;
  var fabIcon = Icon(Icons.message);

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(
        () => setState(() {
          switch (tabController.index) {
            case 0:
              break;
            case 1:
              fabIcon = Icon(Icons.message);
              break;
            case 2:
              fabIcon = Icon(Icons.camera_alt);
              break;
            case 3:
              fabIcon = Icon(Icons.add_call);
              break;
          }
        }),
      );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double cameraWidth = width / 24;
    double yourWidth = (width - cameraWidth) / 5;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('WhatsApp'),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                print('SEARCH TAPPED'); //todo : SEARCH BETWEEN CHATS
              },
              child: Icon(Icons.search),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                print('SIDE MENU BAR TAPPED'); //todo : SMALL SIDE MENU BAR
              },
              child: Icon(Icons.more_vert),
            ),
          ),
        ],
        bottom: TabBar(
          isScrollable: true,
          labelPadding: EdgeInsets.symmetric(
              horizontal: (width - (cameraWidth + yourWidth * 3)) / 8),
          controller: tabController,
          tabs: <Widget>[
            Container(
              child: Tab(icon: Icon(Icons.camera_alt)),
              width: cameraWidth,
              alignment: Alignment.center,
            ),
            Container(
              child: Tab(text: 'CHATS'),
              width: yourWidth,
            ),
            Container(
              child: Tab(text: 'STATUS'),
              width: yourWidth,
            ),
            Container(
              child: Tab(text: 'CALLS'),
              width: yourWidth,
            ),
          ],
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          CameraFeature(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //todo each FAB purpose
        },
        child: fabIcon,
        backgroundColor: Colors.teal,
      ),
    );
  }
}
