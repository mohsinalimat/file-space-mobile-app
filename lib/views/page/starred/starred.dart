import 'package:flutter/material.dart';
import 'package:space_client_app/views/page/home/enums.dart';
import 'package:space_client_app/views/page/home/widgets/file_tile.dart';

class StarredPage extends StatefulWidget {
  const StarredPage({Key? key}) : super(key: key);
  @override
  State<StarredPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<StarredPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                forceElevated: innerBoxIsScrolled,
                title: const Text("My Favorites"),
                floating: true,
              )
            ];
          },
          body: SafeArea(
              maintainBottomViewPadding: true,
              top: false,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 350,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            contentPadding: const EdgeInsets.all(8),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(24)),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: "Search for anything",
                            prefixIcon: const Icon(Icons.search_sharp),
                          ),
                        )),
                    const SizedBox(height: 24),
                    Flexible(
                        child: ListView(
                      children: const [
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.image),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.image),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.video),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.document),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.image),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.image),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.folder),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.image),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.image),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.image),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.image),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.image),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.video),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.video),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.document),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.other)
                      ],
                    ))
                  ],
                ),
              ))),
    );
  }
}