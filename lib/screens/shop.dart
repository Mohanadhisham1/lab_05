import 'package:flutter/material.dart';
import 'package:thisapp/models/urlmodel.dart';
import 'package:thisapp/screens/Home_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text("shop freely"),
              bottom: TabBar(tabs: [
                IconButton(onPressed: (() {}), icon: Icon(Icons.man)),
                IconButton(onPressed: (() {}), icon: Icon(Icons.woman)),
                IconButton(onPressed: (() {}), icon: Icon(Icons.contact_page))
              ]),
            ),
            body: TabBarView(children: [
              ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: [
                      Image(
                          image: NetworkImage(
                              "https://c.static-nike.com/a/images/t_PDP_1280_v1/f_auto/fubkthbkpaja1pudd6wx/futura-icon-t-shirt-knTPx8V7.jpg")),
                      ListTile(
                        title: Text("Nike Futura Icon Men's T-Shirt"),
                        subtitle: Text("Price 56 dollors"),
                        leading: Icon(Icons.add),
                      ),
                      Image(
                          image: NetworkImage(
                              "https://scene7.zumiez.com/is/image/zumiez/image/adidas-Originals-Trefoil-Black-T-Shirt-_260905.jpg")),
                      ListTile(
                        title: Text("adidas Originals Trefoil Black T-Shirt"),
                        subtitle: Text("Price 80 dollors"),
                        leading: Icon(Icons.add),
                      ),
                      Image(
                          image: NetworkImage(
                              "https://th.bing.com/th/id/R.8d4642b1a3cf72e1b9c904029756586e?rik=EuStpOH2Y72LKg&pid=ImgRaw&r=0")),
                      ListTile(
                        title: Text("Nike Sportswear"),
                        subtitle: Text("Price 120 dollors"),
                        leading: Icon(Icons.add),
                      ),
                      Image(
                          image: NetworkImage(
                              "https://th.bing.com/th/id/OIP.79iJRTNQeYJvsyiiRZNsBwHaI-?pid=ImgDet&rs=1")),
                      ListTile(
                        title: Text(" Adidas Originals Trefoil"),
                        subtitle: Text("Price 140 dollors"),
                        leading: Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
              ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: [
                      Image(
                          image: NetworkImage(
                              "https://th.bing.com/th/id/OIP.HsH9IcDpjA4VjbrjasIsWQHaJQ?pid=ImgDet&rs=1")),
                      ListTile(
                        title:
                            Text("Nike Sportswear Essential Women's T-Shirt"),
                        subtitle: Text("Price 70 dollors"),
                        leading: Icon(Icons.add),
                      ),
                      Image(
                          image: NetworkImage(
                              "https://th.bing.com/th/id/OIP.u22I4hrRUPVA1xpRN1Jy7QHaNC?pid=ImgDet&rs=1")),
                      ListTile(
                        title: Text(
                            "- adidas Women's Basic Badge of Sport T-Shirt "),
                        subtitle: Text("Price 90 dollors"),
                        leading: Icon(Icons.add),
                      ),
                      Image(
                          image: NetworkImage(
                              "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto/e1d94ff3-f90c-455a-906e-1418320bbe7c/sportswear-tech-fleece-womens-pants-2dFd6t.jpg")),
                      ListTile(
                        title:
                            Text("Nike Sportswear Tech Fleece Women's Pants"),
                        subtitle: Text("Price 130 dollors"),
                        leading: Icon(Icons.add),
                      ),
                      Image(
                          image: NetworkImage(
                              "https://th.bing.com/th/id/R.366cf8dda0273c3016201f19dc181d30?rik=8c1lViBA%2fKw%2fOQ&pid=ImgRaw&r=0")),
                      ListTile(
                        title: Text("Adidas - Flared Track Pants"),
                        subtitle: Text("Price 120 dollors"),
                        leading: Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://th.bing.com/th/id/R.a9b4543de90135151f15b4d604c574ff?rik=cMyhVe1RRUBqTw&riu=http%3a%2f%2fnewcanadiandrain.com%2fwp-content%2fuploads%2f2011%2f11%2fContact-Us-2000x1039.jpg&ehk=zmtaSlD9kWZh1RW5SQtgisoqbALASsuHA6vLmFkJ6oo%3d&risl=&pid=ImgRaw&r=0"))),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: facebook_function,
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("faebook"),
                            subtitle: Text("join our facebook page"),
                            leading: Icon(Icons.facebook),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: instagram_function,
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("instagram"),
                            subtitle: Text("join our instagram page"),
                            leading: Icon(Ionicons.logo_instagram),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 200,
                    ),
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Home();
                            },
                          ));
                        },
                        icon: Icon(Icons.home),
                        label: Text("Back to home page"))
                  ],
                ),
              ),
            ])));
  }
}
