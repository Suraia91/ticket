import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ticket/data/models/bolet_models.dart';

class BoletoListController {
  final boletNotifier = ValueNotifier<List<BoletoModel>>(<BoletoModel>[]);
  List<BoletoModel> get bolet => boletNotifier.value;
  final firestoreInstance = FirebaseFirestore.instance.collection('boletos');
  FirebaseMessaging fm = FirebaseMessaging.instance;
  int? size;

  set bolet(List<BoletoModel> value) => boletNotifier.value = value;

  BoletoListController() {
    //fm.getToken().then((value) => token = value);
    //  getBolets();
    //getFirebaseBolets();
  }
  //getfromLocalData
  Future<void> getBolets() async {
    try {
      final instance = await SharedPreferences.getInstance();
      final response = instance.getStringList('boletos') ?? <String>[];
      //bolet = response.map((e) => BoletoModel.fromJson(e)).toList();
    } catch (e) {
      bolet = <BoletoModel>[];
    }
  }

  //getFromRemoteData
  Future<void> getFirebaseBolets() async {
    final instance = await SharedPreferences.getInstance();
    final mailKey = instance.getString('mail');

    final ticketData = FirebaseFirestore.instance
        .collection('boletos')
        .doc(mailKey)
        .collection('ticket')
        .withConverter<BoletoModel>(
          fromFirestore: (snapshot, _) =>
              BoletoModel.fromJson(snapshot.data()!),
          toFirestore: (boleto, _) => boleto.toJson(),
        );
    List<QueryDocumentSnapshot<BoletoModel>> movies =
        await ticketData.get().then((snapshot) => snapshot.docs);
    if (movies.isNotEmpty) {
      bolet.clear();
      movies.forEach((element) {
        bolet.add(element.data());
      });
    } else {
      print('n tem dados');
    }
  }
}
