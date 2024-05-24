import 'package:flutter/material.dart';
import 'package:nocoast_flutter/app/utils/song_data.dart';
import 'package:nocoast_flutter/app/views/player_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:
            const Text('Music Player', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          ListView.separated(
            shrinkWrap: true,
            itemCount: audioFiles.length,
            separatorBuilder: (context, index) {
              return const Divider(
                color: Colors.white24,
              );
            },
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(titles[index],
                    style: const TextStyle(color: Colors.white)),
                subtitle: Text(artists[index],
                    style: const TextStyle(color: Colors.white)),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(posters[index]),
                ),
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      elevation: 0,
                      backgroundColor: Colors.black,
                      builder: (context) {
                        return FractionallySizedBox(
                          heightFactor: 0.96,
                          child: PlayerPage(
                            title: titles[index],
                            artist: artists[index],
                            poster: posters[index],
                            audioFile: audioFiles[index],
                          ),
                        );
                      });
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
