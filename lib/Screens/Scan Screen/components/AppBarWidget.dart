import 'package:flutter/material.dart';

AppBar AppBarWidget(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new),)
      ),
      centerTitle: true,
      title: Text("Scan Your Face"),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Icon(Icons.info),
        )
      ],
    );
  }