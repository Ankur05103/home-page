

import 'package:flutter/material.dart';

import 'widgets/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color? backgroundColor = Theme.of(context).appBarTheme.backgroundColor;

    Color buttonColor = backgroundColor ?? Color.fromARGB(255, 65, 65, 65);
    return Scaffold(
      appBar: AppBar(
        title: Text('PCSB'),
        actions: [
          ElevatedButton(
            child: Icon(Icons.account_circle),
            style: ButtonStyle(

              backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 58, 200, 131),
              ),
              child: DrawerHeader(child: Icon(Icons.person_rounded)),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.collections_sharp),
              title: const Text(' Gallery'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.event),
              title: const Text(' Events '),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.feedback),
              title: const Text(' About Us '),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.contact_page),
              title: const Text(' Contacts '),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Home()
      ),
    );
  }
}
