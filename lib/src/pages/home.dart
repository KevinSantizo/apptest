import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: []),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Company name'),
                  Icon(MdiIcons.viewGridOutline)
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
