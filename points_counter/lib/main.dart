import 'package:flutter/material.dart';

void main() {
  runApp(PointerCounter());
}

class PointerCounter extends StatefulWidget {
  @override
  State<PointerCounter> createState() => _PointerCounterState();
}

class _PointerCounterState extends State<PointerCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Basketball',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.orange,
        ),

        ///Main Column
        body: Column(
          children: [
            ///SizeBox For Top
            const SizedBox(
              height: 50,
            ),

            ///Row between 2 Column
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ///Left Column Team A
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 35),
                    ),
                    Text(
                      '$teamAPoints',
                      style: const TextStyle(fontSize: 170),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints += 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        // ignore: deprecated_member_use
                        primary: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    ///SixeBox For btn1&btn2
                    const SizedBox(
                      height: 18,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        // ignore: deprecated_member_use
                        primary: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    ///SixeBox For btn2&btn3
                    const SizedBox(
                      height: 18,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        // ignore: deprecated_member_use
                        primary: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 430,
                  child: VerticalDivider(
                    thickness: 2,
                  ),
                ),

                ///Right Column Team B
                Column(
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(fontSize: 35),
                        ),
                        Text(
                          '$teamBPoints',
                          style: const TextStyle(fontSize: 170),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints += 1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            // ignore: deprecated_member_use
                            primary: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                        ///SixeBox For btn1&btn2
                    const SizedBox(
                      height: 18,
                    ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints += 2;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            // ignore: deprecated_member_use
                            primary: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          child: const Text(
                            'Add 2 Point',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                        ///SixeBox For btn2&btn3
                    const SizedBox(
                      height: 18,
                    ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints += 3;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            // ignore: deprecated_member_use
                            primary: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          child: const Text(
                            'Add 3 Point',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      teamAPoints = 0;
                      teamBPoints = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    minimumSize: const Size(150, 50),
                  ),
                  child: const Text(
                    'Reset',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
