import 'package:flutter/material.dart';
import 'package:super_zoundv2/data/album.dart';
import 'package:super_zoundv2/data/http_helper.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Album>? albums; 
  HttpHelper? httpHelper;

  @override
  void initState() async {
    httpHelper = HttpHelper();
    initialize();
    super.initState();
  }

  Future initialize() async{
    albums = List.empty();
    albums = await httpHelper?.getAlbums();
  }
  //final albums = [Album(id: '1', name: 'Parachutes', artist: 'ColdPaly', yearReleased: '3000', urlPoster: 'https://avatars.githubusercontent.com/u/128727709?s=400&u=8fdd3a2adfe01e35d376966deafd4b769d155ee5&v=4')];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppSuperZound'),
      ),
      body: ListView.builder(
        itemCount: albums.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(albums[index].name!),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(albums[index].artist!),
                  Text(albums[index].yearReleased!),
                ],
              ),
              leading: Image(
                image: NetworkImage(
                  albums[index].urlPoster!,
                )
              )
            ),
          );
        } ),
    );
  }
}