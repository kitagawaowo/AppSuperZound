import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppSuperZound'),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return const Card(
            child: ListTile(
              title: Text("Parachutes"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ColdPlay"),
                  Text("2000")
                ],
              ),
              leading: Image(
                image: NetworkImage(
                  'https://avatars.githubusercontent.com/u/128727709?s=400&u=8fdd3a2adfe01e35d376966deafd4b769d155ee5&v=4'
                )
              )
            ),
          );
        } ),
    );
  }
}