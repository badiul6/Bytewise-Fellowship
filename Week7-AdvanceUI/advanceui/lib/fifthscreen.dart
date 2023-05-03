import 'package:flutter/material.dart';

class Silvers extends StatelessWidget {
  const Silvers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Shaders"),
      // ),
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          // title: Text("Shaders"),
          backgroundColor: Colors.blue,
          pinned: true,
          stretch: true,
          onStretchTrigger: () async {
            print("Load more data");
          },
          // floating: true,
          // snap: true,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: const <StretchMode>[StretchMode.zoomBackground],
            title: const Text("Shaders"),
            background: DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: <Color>[
                    Color.fromARGB(255, 141, 185, 221),
                    Colors.transparent
                  ])),
              child: Image.asset(
                "assets/sea.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (BuildContext context, index) {
            return const ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Dan Brown"),
              subtitle: Text("Software Developer"),
              trailing: Icon(Icons.star_outline),
            );
          },
          childCount: 20,
        )),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('grid item $index'),
              );
            },
            childCount: 20,
          ),
        )
      ]),
    );
  }
}
