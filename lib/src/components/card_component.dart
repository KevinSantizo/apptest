import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {

  final String avatar;
  final String title;
  final String subtitle;
  final Color  buttonColor;
  final Color  stringButtonColor;
  final String stringButton;
  final String time;
  final String price;

  const CardComponent({
    Key key, 
    @required this.avatar, 
    @required this.title, 
    @required this.subtitle, 
    @required this.buttonColor, 
    @required this.stringButton, 
    @required this.time, 
    @required this.price, 
    @required this.stringButtonColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage( avatar ),
                    ),
                    VerticalDivider(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title ?? '',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(subtitle ?? ''),
                      ],
                    )
                  ],
                ),
                TextButton(
                  style: ButtonStyle( backgroundColor: MaterialStateProperty.all( buttonColor ), ),
                  onPressed: () {},
                  child: Text(
                    stringButton ?? '',
                    style: TextStyle(color: stringButtonColor),
                  )
                ),
              ],
            ),
            Divider(
              thickness: 0.5,
              height: 20.0,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.access_time),
                        VerticalDivider(),
                        Text(time ?? ''),
                      ],
                    ),
                    SizedBox( height: 15.0, ),
                    Row(
                      children: [
                        Icon(Icons.attach_money_outlined),
                        VerticalDivider(),
                        Text(price ?? ''),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}