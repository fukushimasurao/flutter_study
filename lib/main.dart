import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'こんにちは',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: const [
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
              ],
            ),
          )),
    );
  }
}

class TweetTile extends StatelessWidget {
  const TweetTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://1.bp.blogspot.com/-AXPN-GR4IFc/V8VFDMcn7tI/AAAAAAAA9YQ/q4fSpPcdRmwtk5TKxGgwSLnijDQ-7VZSACLcB/s800/onigiri_nori.png'),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text('こんぶ @ Flutter大学'),
                  SizedBox(width: 8),
                  Text('2022/05/05'),
                ],
              ),
              const SizedBox(height: 4),
              const Text('最高でした。'),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
              )
            ],
          ),
        ],
      ),
    );
  }
}
