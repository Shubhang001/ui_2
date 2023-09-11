import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Hero(
        tag: "background",
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 227, 29, 15), Colors.redAccent],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 32.0, right: 32.0, left: 32.0, bottom: 32.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          height: 40,
                          width: 50,
                          child: IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: const Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                          height: 420.0,
                          width: 450.0,
                          child: Image.asset(
                            "assets/iron_man.png",
                          ),
                        ),
                      ),
                      const Text(
                        "Iron Man",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const Text(
                        "Iron Man, like knights of old, is identified by the armor he wears. The best-dressed of the Marvel heroes, he has changed his look frequently since his debut in 1963, but he can afford to: the man who wears the suits (and designs them) is wealthy inventor Tony Stark.",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
