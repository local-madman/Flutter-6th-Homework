import 'package:flutter/material.dart';

class HorizontalScrollList extends StatefulWidget {
  const HorizontalScrollList({Key? key}) : super(key: key);

  @override
  State<HorizontalScrollList> createState() => _HorizontalScrollListState();
}

class _HorizontalScrollListState extends State<HorizontalScrollList> {
  final List<int> _rowData = Iterable<int>.generate(100).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Column(
        children: [
          Expanded(child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                double _width = constraints.maxWidth;
                return _width > 500
                    ? ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: _rowData.length,
                    itemBuilder: (BuildContext context, int count) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 50,
                          child: Card(
                            color: Colors.amber.shade200,
                            child: Text('$count'),
                          ),
                        ),
                      );
                    })
                    : GridView.builder(
                    itemCount: _rowData.length,
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 150),
                    itemBuilder: (context, count) {
                      return Card(
                        child: Text('$count'),
                      );
                    });
              })),
        ],
      ),
    );
  }
}