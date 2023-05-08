import 'package:flutter/material.dart';

class MyPost3 extends StatelessWidget {
  const MyPost3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/dance3.jpg'),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
            child: Container(
              alignment: const Alignment(-1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: const [
                      Text(
                        '@craig_love',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text('The most satisfying job #fyp #satisfying')
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.music_note),
                      Text('Roddy - The Round')
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: const Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 24,
                          backgroundImage:
                              const AssetImage('assets/images/dp.jpg'),
                          child: Container(
                            margin: const EdgeInsets.only(
                              top: 30,
                            ),
                            child: const CircleAvatar(
                              backgroundColor: Colors.pink,
                              radius: 10,
                              child: Text(
                                '+',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Icon(Icons.favorite),
                  const Text('1.2M'),
                  const SizedBox(
                    height: 25,
                  ),
                  const Icon(Icons.comment),
                  const Text('123'),
                  const SizedBox(
                    height: 25,
                  ),
                  const Icon(Icons.send_rounded),
                  const Text('Share'),
                  const SizedBox(
                    height: 60,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
