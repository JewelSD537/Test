import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyActivity(),
    );
  }
}

class MyActivity extends StatelessWidget {
  const MyActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facebook"),
        titleSpacing: 30,
        toolbarHeight: 60,
        elevation: 2,
        toolbarOpacity: 0.9,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Settings not found")));
              },
              icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Searce not found")));
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("mail not found")));
              },
              icon: Icon(Icons.mail))
        ],
      ),
      body: Center(
        child: Text("Hello I'am andriod"),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 30,
        onPressed: () {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Not Found")));
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("Not found")));
                  },
                  icon: Icon(Icons.home)),
              label: "Home"),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Contact Not Found")));
                  },
                  icon: Icon(Icons.contact_mail)),
              label: "Contact"),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("See Not Found")));
                  },
                  icon: Icon(Icons.person)),
              label: "Profile")
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Menu")),
            ListTile(
              title: const Text("Home"),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Mail"),
              leading: Icon(Icons.mail),
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text("Contact"),
              leading: Icon(Icons.contact_emergency),
            ),
            ListTile(
              title: const Text("Share"),
              leading: Icon(Icons.share),
            )
          ],
        ),
      ),
    );
  }
}
