import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/calls_screen.dart';
import 'package:whatsapp_clone/pages/camera_screen.dart';
import 'package:whatsapp_clone/pages/chats_screen.dart';
import 'package:whatsapp_clone/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 1,length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {

    SnackBar _snackBar(String text){
      return SnackBar(
        content: Text(text),
        action: SnackBarAction(
          label: "Ok",
          onPressed: (){
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("WhatsApp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: "CHATS",),
            Tab(text: "STATUS",),
            Tab(text: "CALLS",),
          ],
        ),
        actions: [
            GestureDetector(
                child: Icon(Icons.search),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(_snackBar("Coming Soon!"));
              },
            ),
            SizedBox(width: 20,),
            Icon(Icons.more_vert),
            SizedBox(width: 10,),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          CameraScreen(),
          ChatsScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.message,color: Colors.white,),
        onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(_snackBar("You have no other contacts!"));
        },
      ),
    );
  }
}
