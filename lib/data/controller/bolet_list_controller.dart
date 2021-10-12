import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ticket/data/models/bolet_models.dart';

class BoletoListController {
  final boletNotifier = ValueNotifier<List<BoletoModel>>(<BoletoModel>[]);
  List<BoletoModel> get bolet => boletNotifier.value;

  set bolet(List<BoletoModel> value) => boletNotifier.value = value;
  BoletoListController() {
    getBolets();
  }
  Future<void> getBolets() async {
    try {
      final instance = await SharedPreferences.getInstance();
      final response = instance.getStringList('boletos') ?? <String>[];
      bolet = response.map((e) => BoletoModel.fromJson(e)).toList();
    } catch (e) {
      bolet = <BoletoModel>[];
    }
  }
}
