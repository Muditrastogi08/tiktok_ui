import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List items = [
    'https://images.unsplash.com/photo-1682686581556-a3f0ee0ed556?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80',
    'https://images.unsplash.com/photo-1682353213695-43df0be81aab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
    'https://plus.unsplash.com/premium_photo-1682630628672-c9c3edafe682?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1469&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.person_add_alt_1_outlined,
          color: Colors.black,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Jacob West',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
                image: const DecorationImage(
                  image: AssetImage('assets/images/dp.jpg'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            '@jacob_w',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Text(
                    '375',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    'Following',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              Column(
                children: const [
                  Text(
                    '37',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    'Followers',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              Column(
                children: const [
                  Text(
                    '30',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    'Likes',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Icon(
                    Icons.bookmark_outline,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 15),
            child: Text(
              'Tap to add bio',
              style: TextStyle(
                  color: Colors.grey.shade400, fontWeight: FontWeight.w500),
            ),
          ),
          Divider(
            color: Colors.grey.shade400,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.grid_4x4_sharp,
                color: Colors.grey.shade800,
              ),
              Icon(
                Icons.favorite_outline,
                color: Colors.grey.shade400,
              ),
            ],
          ),
          SizedBox(
            height: 200,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Image.network(
                    items[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
