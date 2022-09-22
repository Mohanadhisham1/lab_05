import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri facebook_url = Uri.parse('https://www.facebook.com');
final Uri instagram_url = Uri.parse('https://www.instagram.com');

Future<void> facebook_function() async {
  if (!await launchUrl(facebook_url)) {
    throw 'Could not launch $facebook_url';
  }
}

Future<void> instagram_function() async {
  if (!await launchUrl(instagram_url)) {
    throw 'Could not launch $instagram_url';
  }
}

class urlclass extends StatelessWidget {
  urlclass(
      {required this.myfunction,
      required this.platformicon,
      required this.platformsubtitle,
      required this.platformtitle});

  String? platformtitle;
  String? platformsubtitle;

  IconData? platformicon;
  Function()? myfunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myfunction,
      child: Column(
        children: [
          ListTile(
            title: Text("$platformtitle"),
            subtitle: Text("$platformsubtitle"),
            leading: Icon(platformicon),
          ),
        ],
      ),
    );
  }
}
