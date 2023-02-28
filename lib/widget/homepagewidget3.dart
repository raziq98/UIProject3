import 'package:flutter/material.dart';

import '../page/forthpage.dart';
import '../page/secondpage.dart';
import '../page/thirdpage.dart';
import '../page/firstpage.dart';

class homepage3rdwidget extends StatefulWidget {
  homepage3rdwidget({super.key});

  @override
  State<homepage3rdwidget> createState() => _homepage3rdwidgetState();
}

class _homepage3rdwidgetState extends State<homepage3rdwidget> {
  final List<IconData> myIcon = [
    Icons.balance,
    Icons.account_balance,
    Icons.add_card,
    Icons.compare_arrows,
  ];

  final List<String> myText = ['Balance', 'Statement', 'Add Card', 'Transfer'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 350,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: .05,
          mainAxisSpacing: .05,
        ),
        children: [
          GestureDetector(
            onTap: (() {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const FirstPage()),
              );
            }),
            child: gridcontainer(myIcon: myIcon[0], myText: myText[0]),
          ),
          GestureDetector(
            onTap: (() {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SecondPage()),
              );
            }),
            child: gridcontainer(myIcon: myIcon[1], myText: myText[1]),
          ),
          GestureDetector(
            onTap: (() {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ThirdPage()),
              );
            }),
            child: gridcontainer(myIcon: myIcon[2], myText: myText[2]),
          ),
          GestureDetector(
            onTap: (() {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ForthPage()),
              );
            }),
            child: gridcontainer(myIcon: myIcon[3], myText: myText[3]),
          ),
        ],
      ),
    );
  }
}

class gridcontainer extends StatelessWidget {
  const gridcontainer({
    Key? key,
    required this.myIcon,
    required this.myText,
  }) : super(key: key);

  final IconData myIcon;
  final String myText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      height: 500.0,
      alignment: Alignment.center,
      transformAlignment: Alignment.center,
      child: Container(
        width: 118,
        height: 118,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(12.1, 12.1),
              blurRadius: 10,
              spreadRadius: 0.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              myIcon,
              size: 39,
              color: const Color(0xFF176049),
            ),
            Text(
              myText,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
