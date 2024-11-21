import 'package:flutter/material.dart';
import 'package:sahayakapp/UI/Client/Content/contents.dart';

class ClientHomePage extends StatefulWidget {
  const ClientHomePage({super.key});

  @override
  State<ClientHomePage> createState() => _ClientHomeState();
}

List<String> title = [
  'Cleaning',
  'Cooking',
  'Laundry',
  'Grocery',
  'Pet Care',
  'Gardening',
  'Plumbing',
  'Electrician',
  'zdfhbk df '
];
List<String> reqiurements = [
  'Cleaning the house',
  'Cooking food',
  'Washing clothes',
  'Buying groceries',
  'Taking care of pets',
  'Gardening',
  'Fixing plumbing issues',
  'Fixing electrical issues',
  'zdfhbk df '
];
List<String> description = [
  'Cleaning the house',
  'Cooking food',
  'Washing clothes',
  'Buying groceries',
  'Taking care of pets',
  'Gardening',
  'Fixing plumbing issues',
  'Fixing electrical issues',
  'zdfhbk df '
];

class _ClientHomeState extends State<ClientHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 39, 161, 237),
                ),
                accountName: Text(
                  'Your Name',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                accountEmail: Text(
                  'your.email@example.com',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text(
                    'Y',
                    style: TextStyle(
                        fontSize: 24.0,
                        color: Color.fromARGB(255, 39, 161, 237),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                title: const Text(
                  'Profile',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  // Add your profile code here!
                },
              ),
              ListTile(
                title: const Text(
                  'Settings',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  // Add your settings code here!
                },
              ),
              ListTile(
                title: const Text(
                  'Logout',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  // Add your logout code here!
                },
              ),
            ],
          ),
        ),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120.0),
          child: AppBar(
            title: const Text('Sahayak'),
            titleTextStyle: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 39, 161, 237),
            leading: IconButton(
              iconSize: 25,
              style: ButtonStyle(
                side: WidgetStateProperty.all(
                  const BorderSide(color: Colors.black, width: 1),
                ),
              ),
              icon: const Icon(Icons.person),
              onPressed: () {
                // Add your onPressed code here!
                _scaffoldKey.currentState?.openDrawer();
              },
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(48.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: Colors.black,
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    hintText: 'Search...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  title: const Text(
                    'Custom Work',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  content: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Work',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          maxLines: 4,
                          decoration: InputDecoration(
                            hintText: 'Description',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: const Text(
                        'Cancel',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 39, 161, 237),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: const Text('Submit'),
                      onPressed: () {
                        // Add your submit code here!
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
          backgroundColor: const Color.fromARGB(255, 39, 161, 237),
          child: const Icon(Icons.add),
        ),
        body: DefaultTabController(
          length: title.length,
          child: Column(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: TabBar(
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.black,
                  tabs: [
                    for (int i = 0; i < title.length; i++)
                      Tab(
                        text: title[i],
                      )
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    for (int i = 0; i < title.length; i++)
                      Contents(
                        title: title[i],
                        requirements: reqiurements[i],
                        description: description[i],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
