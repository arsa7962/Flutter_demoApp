import 'package:flutter/material.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 28, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Prepaid',
          ),
          Row(
            children: [
              Expanded(
                  child: TextButton(
                child: Row(
                  children: [Text('7530014349'), Icon(Icons.expand_more)],
                ),
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.only(left: 0),
                ),
              )),
              Icon(Icons.add),
            ],
          )
        ],
      ),
    );
  }
}
