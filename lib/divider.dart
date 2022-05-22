
import 'package:flutter/material.dart';

class ListViewDivider extends StatefulWidget {
  const ListViewDivider({Key? key}) : super(key: key);

  @override
  State<ListViewDivider> createState() => _ListViewDividerState();
}

class _ListViewDividerState extends State<ListViewDivider> {
  List<int> rowData2 = Iterable<int>.generate(100).toList();

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Divider'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ListView.separated(
                controller: _scrollController,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.grey,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: ListTile(title: Text('${rowData2[index]}')),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(
                      indent: 10,
                      endIndent: 10,
                      color: Colors.green,
                      thickness: 2,
                      height: 1,
                    ),
                  );
                },
                itemCount: rowData2.length),
          ],
        ),
      ),
    );
  }
}