import 'dart:convert';

import 'package:flutter/material.dart';

import '../models/balance.dart';

class BalanceService {
  static Future getBalanceData(BuildContext context) async {
    final response =
        await DefaultAssetBundle.of(context).loadString('mock/data.json');
    final data = jsonDecode(response);
    final balanceList = data.map((item) => Balance.fromJson(item)).toList();
    return balanceList;
  }
}
