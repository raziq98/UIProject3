// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:transfer_bank/widget/homepagewidget3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Transfer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    color: Color(0xFF176049),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                    )),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/60111.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Text(
                        'Welcome back !',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )
                    ],
                  ),
                )),
            drawer_list(
              icon: Icons.home,
              data: 'Home',
            ),
            drawer_list(
              icon: Icons.person,
              data: 'Profile',
            ),
          ],
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -90,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xFF176049)),
            ),
          ),
          Positioned(
            top: 30,
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    _scaffoldKey.currentState?.openDrawer();
                  },
                ),
                trailing: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/60111.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 110,
            left: 30,
            child: const Text(
              "Good morning \nRaziq",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0xFFFFFDD0),
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontFamily: 'Georgia',
                letterSpacing: 2.0,
                wordSpacing: 5.0,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          //next should be searchbar
          Positioned(
            top: 220,
            left: 32,
            child: Center(
              child: Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color(0xFF176049).withOpacity(0.5),
                      width: 1),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.3), // set the shadow color and opacity
                      spreadRadius:
                          2, // set the spread radius to make the border blurry
                      blurRadius:
                          5, // set the blur radius to control the blurriness
                    ),
                  ],
                ),
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.saved_search,
                      size: 30,
                    ),
                  ),
                  title: Text(
                    'Search for a service',
                    style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 290,
              child: Text(
                'What would you like to do?',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 15),
              )),
          //next should be gridview.builder + neumorphism
          Positioned(
            top: 315,
            child: homepage3rdwidget(),
          ),
        ],
      ),
    );
  }
}

class drawer_list extends StatelessWidget {
  const drawer_list({
    Key? key,
    required this.icon,
    required this.data,
  }) : super(key: key);

  final IconData icon;
  final String data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: const Color(0xFF176049),
      ),
      title: Text(
        data,
        style: TextStyle(fontSize: 16),
      ),
      onTap: () {
        // Update the UI based on drawer item selected
        Navigator.pop(context);
      },
    );
  }
}
