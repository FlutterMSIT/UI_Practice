import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clone/themes.dart';
import 'package:twitter_clone/widgets/post.dart';

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
      theme: TwitterTheme.lightTheme(),
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
  int? index;
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
      body: ListView(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 40,
              padding: const EdgeInsets.only(left: 16),
              itemBuilder: (context, index) {
                return CircleAvatar();
              },
            ),
          ),
          PostWidget(),
          PostWidget(),
          PostWidget(),
          PostWidget(),
        ],
      ),
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
