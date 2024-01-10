import 'package:flutter/material.dart';

class CustomTab extends StatefulWidget {
  const CustomTab({super.key});

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  int _curr = 0;
  late PageController controller;
  final List<Widget> _list = <Widget>[
    Center(
        child: Pages(
      text: "Page 1",
    )),
    Center(
        child: Pages(
      text: "Page 2",
    )),
    Center(
        child: Pages(
      text: "Page 3",
    )),
    Center(
        child: Pages(
      text: "Page 4",
    ))
  ];

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: _curr,keepPage: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Custom Tab"),
        backgroundColor: Colors.green,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              "Page: ${_curr + 1}/${_list.length}",
              textScaleFactor: 2,
            ),
          )
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        reverse: false,
        itemCount:_list.length ,
        // physics: BouncingScrollPhysics(),
        controller: controller,
        onPageChanged: (num) {
          setState(() {
            _curr = num;
          });
        },
        itemBuilder: (context, index) =>  _list[_curr],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _curr,
        onTap: (value) {
          controller.jumpToPage(value);
        },
        selectedItemColor: Colors.red,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Home",
          ),
        ],
      ),
    );
  }
}

class Pages extends StatelessWidget {
  final text;

  Pages({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ]),
    );
  }
}
