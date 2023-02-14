import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await launchUrl(Uri.parse("https://www.amazon.in/"));
                },
                child: const Text("Amazon"),
              ),
              ElevatedButton(
                onPressed: () async {
                  await launchUrl(Uri.parse("tel: 7046632533"));
                },
                child: const Text("Call"),
              ),
              ElevatedButton(
                onPressed: () async {
                  await launchUrl(Uri.parse("sms: 7046632533?body=Hello hii"));
                },
                child: const Text("SMS"),
              ),
              ElevatedButton(
                onPressed: () async {
                  Share.share("Hi Hello");
                },
                child: const Text("Share"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
