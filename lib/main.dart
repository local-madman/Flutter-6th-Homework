import 'package:flutter/material.dart';
import 'sliver.dart';
import 'text_field.dart';
import 'divider.dart';
import 'horizontal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InitialPage(),
    );
  }
}

class InitialPage extends StatelessWidget {
  const InitialPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeWork 6'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((BuildContext context) =>
                      const TextFieldStyled()),
                    ),
                  );
                },
                child: const Text('Text Field Styled'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((BuildContext context) =>
                      const ListViewDivider()),
                    ),
                  );
                },
                child: const Text('List View Divider'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((BuildContext context) =>
                      const SliverAppBarExample()),
                    ),
                  );
                },
                child: const Text('Sliver AppBar'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              HorizontalScrollList()));
                },
                child: const Text('Horizontal List'),
              )
            ],
          ),
        ),
      ),
    );
  }
}