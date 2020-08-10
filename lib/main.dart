import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:final2/screens/contacts.dart';
import 'package:final2/screens/home.dart';
import 'package:final2/screens/precautions.dart';
import 'package:flutter/material.dart';
import 'package:final2/screens/instructions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remember the Mask',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State {
  int currentIndex;

  @override
  void initState() {
    super.initState();

    currentIndex = 0;
  }

  changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BubbleBottomBar(
        hasNotch: true,
        opacity: .2,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(16)
        ),
        elevation: 8,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.red,
              ),
              title: Text("Principal")),
          BubbleBottomBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(
                Icons.assignment,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.assignment_turned_in,
                color: Colors.deepPurple,
              ),
              title: Text("Instruções")),
          BubbleBottomBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(
                Icons.event_available,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.event_available,
                color: Colors.indigo,
              ),
              title: Text("Precauções")),
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.contact_phone,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.contact_phone,
                color: Colors.green,
              ),
              title: Text("Contatos"))
        ],
      ),
      body: (currentIndex == 0)      
          ?  HomePage()
          : (currentIndex == 1)
          ?  Instructions()
          : (currentIndex == 2)
          ?  Precautions()
          :  Contacts()
    );
  }
}
