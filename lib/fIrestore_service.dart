import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: avoid_classes_with_only_static_members
class FirestoreService {
  static var firestore = Firestore.instance;

  static void configure() {
    firestore.settings(timestampsInSnapshotsEnabled: true);
  }
}
