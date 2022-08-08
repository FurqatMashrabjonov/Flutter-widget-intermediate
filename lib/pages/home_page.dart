import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plus Messages'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.lock_open_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.folder_copy_outlined))
        ],
      ),
      drawer:  Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            color: Colors.teal,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.account_box),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.bolt),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.account_balance_sharp),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.rocket),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.cabin),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.baby_changing_station),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.g_mobiledata_outlined),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.alternate_email),
                  color: Colors.white,
                ),
              ],
            ),
          ),
         Expanded(
             child: ListView(
               children: [
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
                 _Messages(username: 'John Doe', message: 'Hello Worlddddddddddddddddddddd', avatar: 'https://picsum.photos/200'),
               ],
             )
         )
        ],
      ),
    );
  }

  Widget _Messages({username, message, avatar}){
    return  Container(
        height: 60,
        padding: EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(avatar),
          ),
          SizedBox(width: 15.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(username, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),) ,
              Text(message + '...', style: TextStyle(color: Color(0xFF070000).withOpacity(0.5)),)
            ],
          ),
          SizedBox(width: 10.0),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.teal,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child:  Text('99+')
              )
            ],
          )
        ],
      ),
    );
  }
}
//https://picsum.photos/200
