import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final List<int> myList = [10, 20, 50, 100];
  bool myKey = false;
  bool mycolor = false;
  double _currentvalue = 0;
  final List<AssetImage> myImage = const [
    AssetImage('assets/avatar.png'),
    AssetImage('assets/avatar (1).png'),
    AssetImage('assets/avatar (2).png'),
    AssetImage('assets/avatar (3).png'),
    AssetImage('assets/avatar.png'),
    AssetImage('assets/avatar (1).png'),
    AssetImage('assets/avatar (2).png'),
    AssetImage('assets/avatar (3).png'),
    AssetImage('assets/avatar (2).png'),
    AssetImage('assets/avatar (3).png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xFF176049),
              ),
            ),
          ),
          Positioned(
            top: 30,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: ListTile(
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white54,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () => setState(() {
                    mycolor = true;
                  }),
                  icon: Icon(
                    Icons.star,
                    color: mycolor
                        ? const Color(0xFFFfbf00)
                        : const Color(0xFF176049),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 580,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
            ),
          ),
          const Positioned(
            top: 190,
            child: Text(
              'How much would you like to send ? ',
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontStyle: FontStyle.italic),
            ),
          ),
          const Positioned(
            top: 210,
            child: Divider(
              color: Colors.black,
              thickness: 2,
            ),
          ),
          Positioned(
            top: 260,
            child: Container(
              width: 350,
              child: Row(children: [
                IconButton(
                  onPressed: (() {
                    setState(() {
                      _currentvalue -= 10;
                    });
                  }),
                  icon: const Icon(
                    Icons.remove_circle_outline_sharp,
                    color: Color(0xFF176049),
                  ),
                ),
                const Spacer(),
                const Text(
                  'RM ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(0xFF176049),
                  ),
                ),
                Text(
                  _currentvalue.toStringAsFixed(2),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(0xFF176049),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: (() {
                    setState(() {
                      _currentvalue += 10;
                    });
                  }),
                  icon: const Icon(
                    Icons.add_circle_outline,
                    color: Color(0xFF176049),
                  ),
                ),
              ]),
            ),
          ),
          Positioned(
            top: 320,
            child: Container(
              width: 300,
              child: Slider(
                value: _currentvalue,
                onChanged: ((value) {
                  setState(() {
                    _currentvalue = value;
                  });
                }),
                min: 0,
                max: 10000,
                label: _currentvalue.toString(),
                activeColor: const Color(0xFF176049),
              ),
            ),
          ),
          //Positioned(child: Chip(label: 'label'))
          Positioned(
            top: 370,
            child: Container(
              height: 50,
              width: 350,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    height: 40,
                    width: 90,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300]),
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            _currentvalue += myList[index];
                          });
                        },
                        child: Text(
                          myList[index].toString(),
                          style: TextStyle(color: Colors.grey[800]),
                        )),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 15,
                  );
                },
              ),
            ),
          ),
          const Positioned(
            top: 440,
            child: Text(
              'Choose recipient',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Positioned(
            top: 490,
            left: 20,
            child: Center(
              child: Container(
                width: 400,
                height: 90,
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: myImage[index], fit: BoxFit.cover),
                        ),
                      );
                    },
                    separatorBuilder: ((context, index) {
                      return const SizedBox(
                        width: 15,
                      );
                    }),
                    itemCount: 10),
              ),
            ),
          ),
          Positioned(
              top: 625,
              child: Container(
                width: 350,
                height: 50,
                child: Row(
                  children: const [
                    cancel_sendtap(
                      data: 'Cancel',
                    ),
                    Spacer(),
                    cancel_sendtap(
                      data: 'Send',
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class cancel_sendtap extends StatelessWidget {
  const cancel_sendtap({Key? key, required this.data}) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 170,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:
                data == 'Cancel' ? Colors.grey[300] : const Color(0xFF176049)),
        child: Center(
          child: Text(
            data,
            textAlign: TextAlign.center,
            style: TextStyle(
                color:
                    data == 'Cancel' ? const Color(0xFF176049) : Colors.white,
                fontSize: 25),
          ),
        ),
      ),
    );
  }
}
