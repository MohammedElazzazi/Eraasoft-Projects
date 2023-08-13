import 'package:flutter/material.dart';
import 'package:new_weather_app/pages/search_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App App',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SearchPage();
                  },
                ),
              );
            },
            icon: Icon(Icons.search),
            iconSize: 25,
          ),
        ],
      ),
      body: const Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'there\'s no weather 😟 start searching now 🔍',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
