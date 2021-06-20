import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) => Container(
          padding: EdgeInsets.all(8),
          child: Text('This works!'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          FirebaseFirestore.instance
            .collection('chats/8xfKRFMOuyiywwSLqS9J/messages')
            .snapshots()
            .listen((data) {
              print(data.docs[0]['text']);
            });
        },
      ),
    );
  }
}
