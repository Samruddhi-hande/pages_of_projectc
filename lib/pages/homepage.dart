import 'package:flutter/material.dart';


class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Home",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w100,
                      fontSize: 40),
                ),
                IconButton(
                  icon: Icon(Icons.show_chart, size: 60),
                  onPressed: () {
                    // Handle icon press
                  },
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: Text("Expenses"),
                        style: ButtonStyle(
                          minimumSize:
                          MaterialStateProperty.all(Size(200.0, 60.0)),
                        )),
                  ],
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const invest())),
                      child: Text("Invest"),
                      style: ButtonStyle(
                        minimumSize:
                        MaterialStateProperty.all(Size(200.0, 60.0)),
                      ))
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const saving())),
                      child: Text("Saving"),
                      style: ButtonStyle(
                        minimumSize:
                        MaterialStateProperty.all(Size(200.0, 60.0)),
                      ))
                ],
              )
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite, size: 60),
                    onPressed: () {
                      // Handle icon press
                    },
                  ),

                ],
              ),
              Row(
                children: [
                  IconButton(
                      icon:Icon( Icons.music_note, color: Colors.blue, size: 40.0),onPressed: (){})
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
