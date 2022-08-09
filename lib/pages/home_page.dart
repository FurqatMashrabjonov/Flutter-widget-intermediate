import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;

  int _selectedPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Home Page'),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home),),
                Tab(icon: Icon(Icons.school), ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.blue,
                child: const Center(
                  child: Text('Home'),
                ),
              ),
              Container(
                color: Colors.red,
                child: const Center(
                  child: Text('School'),
                ),
              )
            ],
          ),
        )
    );
  }
}
//https://picsum.photos/200
