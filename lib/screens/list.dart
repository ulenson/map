import 'package:flutter/material.dart';
import 'package:map/model/saved_locations.dart';
import 'package:map/screens/yandex_map.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

final locations = <SavedLocation>[];

class List extends StatefulWidget {
  const List({Key? key}) : super(key: key);

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Местоположение'),
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (_, i) => ListTile(
          title: Text(
            locations[i].name,
          ),
          subtitle: Text(locations[i].point.props.toString()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final SavedLocation locs = (await Navigator.push(
            context,
            MaterialPageRoute(builder: (context)
            => const YandexMapPage()) ,

          ))as SavedLocation;
          if (locs == null) return;
          locations.add(locs);
          setState(() {});
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }

}