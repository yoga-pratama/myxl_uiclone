import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Scaffold(
          body: Container(
            color: Colors.transparent,
            height: 300.0,
            child: Container(
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0))),
              child: Text("Test"),
            ),
          ),
        ));
  }
}
