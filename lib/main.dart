import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: const Color(0xFf171717),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 10, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          _globalKey.currentState!.openDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10),
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text('Messages',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20))),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Online',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 20))),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Groups',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 20))),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Status',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 20))),
                    const SizedBox(
                      width: 35,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              top: 190,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
                height: 220,
                decoration: const BoxDecoration(
                  color: Color(0xFF27c1a9),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Favorite Contacts',
                          style: TextStyle(color: Colors.white),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    SizedBox(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildContactAvatar('Jane', 'img1.jpeg'),
                            buildContactAvatar('Alex', 'img2.jpeg'),
                            buildContactAvatar('Micle', 'img3.jpeg'),
                            buildContactAvatar('Lisa', 'img4.jpeg'),
                            buildContactAvatar('Ben', 'img5.jpeg'),
                            buildContactAvatar('Carla', 'img6.jpeg'),
                            buildContactAvatar('Ken', 'img7.jpeg'),
                            buildContactAvatar('Alla', 'img8.jpeg'),
                          ],
                        ))
                  ],
                ),
              )),
          Positioned(
              top: 365,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xFFEFFFFC),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                child: ListView(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  children: [
                    buildConversation(
                        'Alla', 'Hello,How are You?..', 'img8.jpeg', 2),
                    buildConversation('Ken', 'Are You there?', 'img7.jpeg', 3),
                    buildConversation('Carla', 'I am Fine ', 'img6.jpeg', 0),
                    buildConversation('Ben', '😊', 'img5.jpeg', 6),
                    buildConversation('Lisa', 'Hii..', 'img4.jpeg', 0),
                    buildConversation(
                        'Micle', 'We Will Meet Tomorrow', 'img3.jpeg', 0),
                    buildConversation('Alex', 'Hola', 'img2.jpeg', 0),
                    buildConversation('Jane', 'ok..', 'img1.jpeg', 0),
                  ],
                ),
              ))
        ],
      ),
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          backgroundColor: const Color(0xFF27c1a9),
          onPressed: () {},
          child: const Icon(
            Icons.edit_outlined,
            color: Colors.white,
          ),
        ),
      ),
      drawer: const Drawer(
        width: 275,
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(40))),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 56,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      UserAvatar(filename: 'img6.jpeg'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'My Name',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  DrawerItem(
                    tittle: 'Account',
                    icon: Icons.key,
                  ),
                  DrawerItem(
                    tittle: 'Chats',
                    icon: Icons.chat_bubble,
                  ),
                  DrawerItem(
                    tittle: 'Notification',
                    icon: Icons.notifications,
                  ),
                  DrawerItem(
                    tittle: 'Data & Storage',
                    icon: Icons.storage,
                  ),
                  DrawerItem(
                    tittle: 'Help',
                    icon: Icons.help,
                  ),
                  Divider(
                    height: 35,
                    color: Color(0xFF27c1a9),
                  ),
                  DrawerItem(tittle: 'Invite a Friend', icon: Icons.people),
                ],
              ),
              DrawerItem(tittle: 'Log Out', icon: Icons.logout),
            ],
          ),
        ),
      ),
    );
  }

  Column buildConversation(
      String name, String messages, String filename, int msgcount) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                UserAvatar(filename: filename),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(color: Colors.black),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      messages,
                      style: const TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 5),
              child: Column(
                children: [
                  const Text(
                    '14:35',
                    style: TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  if (msgcount > 0)
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: const Color(0xFF27c1a9),
                      child: Text(
                        msgcount.toString(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
        const Divider(
          indent: 70,
        ),
      ],
    );
  }

  Padding buildContactAvatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          UserAvatar(
            filename: filename,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String tittle;
  final IconData icon;

  const DrawerItem({
    super.key,
    required this.tittle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
            const SizedBox(
              width: 56,
            ),
            Text(
              tittle,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({
    super.key,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset('assets/images/$filename').image,
      ),
    );
  }
}
