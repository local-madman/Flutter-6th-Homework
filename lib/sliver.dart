import 'package:flutter/material.dart';

class SliverAppBarExample extends StatefulWidget {
  const SliverAppBarExample({Key? key}) : super(key: key);

  @override
  State<SliverAppBarExample> createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<SliverAppBarExample> {
  final List<int> rowData = Iterable<int>.generate(100).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _SliverAppBar(),
          SliverGrid.count(crossAxisCount: 4, children: [
            ...rowData.map((element) {
              return Card(child: Text('$element'));
            })
          ])
        ],
      ),
    );
  }
}

class _SliverAppBar extends StatelessWidget {
  const _SliverAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      pinned: true,
      expandedHeight: 300,
      flexibleSpace: FlexibleSpaceBar(
        title: const Text('Sliver App Bar'),
        centerTitle: true,
        background: Image.network(
          'https://images.freeimages.com/images/large-previews/a31/colorful-umbrella-1176220.jpg',
          color: Color.fromARGB(137, 0, 0, 0),
          colorBlendMode: BlendMode.overlay,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}