import 'package:flutter/material.dart';

import '../resources/strings.dart';
import '../theme/appTheme.dart';

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
            Strings.myPrepaid,
            style: TextStyle(
              color: AppTheme.colors.greyishBrownTwo,
              fontSize: 12,
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: TextButton(
                child: Row(
                  children: [
                    Text(
                      Strings.id,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_down_outlined),
                      iconSize: 25,
                      color: AppTheme.colors.black,
                    ),
                  ],
                ),
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.only(left: 0),
                ),
              )),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              )
            ],
          )
        ],
      ),
    );
  }
}
