import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const TwitterClone());
}

class TwitterClone extends StatelessWidget {
  const TwitterClone({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter Clone UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.blue.shade300),
          elevation: 0,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          elevation: 0,
          selectedIconTheme:
              IconThemeData(color: Colors.blue.shade300, size: 22),
          unselectedIconTheme:
              IconThemeData(color: Colors.grey.shade400, size: 22),
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FaIcon(FontAwesomeIcons.twitter),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.send),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Container(
          margin: EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://images.pexels.com/photos/10004698/pexels-photo-10004698.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                height: 200,
              ),
              Text('This is a Kanya')
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.home), label: ''),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.search),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.bell), label: ''),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.envelope), label: ''),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
