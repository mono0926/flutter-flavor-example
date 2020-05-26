import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Fab extends StatefulWidget {
  @override
  _FabState createState() => _FabState();
}

class _FabState extends State<Fab> {
  var _count = 0;
  final _counterRef =
      Firestore.instance.collection('counters').document('global');

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        _counterRef.setData(<String, dynamic>{'value': _count + 1});
      },
      icon: const Icon(Icons.add),
      label: Text('Count: $_count'),
    );
  }

  @override
  void initState() {
    super.initState();
    _counterRef.snapshots().listen((snap) {
      final count = snap.data['value'] as int;
      print('count: $count');
      setState(() {
        _count = count;
      });
    });
  }
}
