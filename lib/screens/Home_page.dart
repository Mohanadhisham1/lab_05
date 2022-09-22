import 'package:flutter/material.dart';
import 'package:thisapp/screens/shop.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Center(
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return Discover();
                    })));
                  },
                  icon: Icon(Icons.circle),
                  label: Text("enter shop")),
            )
          ],
          title: Row(
            children: [Text("Home Page"), Icon(Icons.home)],
          ),
        ),
        body: Center(
            child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://th.bing.com/th/id/R.23b9774f0a5e9ba2b3de439d91120e97?rik=VrbmdiEmmiDuuA&pid=ImgRaw&r=0"))),
          child: Row(
            children: [
              Center(
                child: Text(
                  "welcome to our online shop",
                  style: TextStyle(
                      color: Color.fromARGB(255, 24, 48, 235),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              Icon(Icons.shop)
            ],
          ),
        )),
      ),
    );
  }
}
