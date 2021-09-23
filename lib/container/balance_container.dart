import 'package:flutter/material.dart';

import '../core/services/balance_services.dart';
import '../widgets/balance.dart';

class BalanceContainer extends StatefulWidget {
  const BalanceContainer({Key? key}) : super(key: key);

  @override
  _BalanceContainerState createState() => _BalanceContainerState();
}

class _BalanceContainerState extends State<BalanceContainer> {
  var balanceList;
  @override
  void initState() {
    super.initState();
    balanceList = BalanceService.getBalanceData(context);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: balanceList,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            return BalanceList(snapshot.data);
          }
          return Center(
            child: Text('Error!'),
          );
        });
  }
}
