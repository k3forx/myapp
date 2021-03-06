import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('next page'),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Center(
              child: RaisedButton(
                child: Text('Back'),
                onPressed: () {
                  Navigator.pop(context, this.name);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
