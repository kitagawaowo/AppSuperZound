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
                children: [
                  Text("ColdPlay"),
                  Text("2000")
                ],
              ),
            ),
          );
        } ),
    );
  }
}