import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:testapp/src/components/card_component.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff079DF2), Color(0xff57C2FF)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
              child: SafeArea(
                child: Column(
                  children: [
                    //children 1
                    Padding(
                      padding: EdgeInsets.only(
                          left: 15.0, bottom: 15.0, top: 10.0, right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //children 1 row
                          Text(
                            'Company name',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                          //children 2 row
                          Icon(
                            MdiIcons.viewGridOutline,
                            color: Colors.white,
                            size: 30.0,
                          )
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 15.0, bottom: 20.0),
                      child: Row(
                        children: [
                          //children 1
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(3.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://img2.freepng.es/20180623/iqh/kisspng-computer-icons-avatar-social-media-blog-font-aweso-avatar-icon-5b2e99c40ce333.6524068515297806760528.jpg'),
                            ),
                          ),

                          VerticalDivider(),

                          //children 2
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //children1
                              Text(
                                'Hello Carlitoss',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23.0),
                              ),

                              //children 2
                              Text('Welcome back',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.0))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: -25,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Avail Offers (11)",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Current Jobs (2)",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Completed Jobs (2)",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 25.0,
        ),
        Expanded(
          child: MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: ListView(
              children: [

                CardComponent(
                  avatar: 'https://thumbs.dreamstime.com/b/businessman-icon-vector-male-avatar-profile-image-profile-businessman-icon-vector-male-avatar-profile-image-182095609.jpg',
                  title: 'Binford',
                  subtitle: "1901 Thornridge Cir, Shilo, Hawai",
                  stringButton: "Flat",
                  price: "173",
                  time: "12.00 - 17.00 (5 hours)",
                  buttonColor: Colors.green.withOpacity(0.3),
                  stringButtonColor: Colors.green,
                ),

                CardComponent(
                  avatar: 'https://thumbs.dreamstime.com/b/businessman-icon-vector-male-avatar-profile-image-profile-businessman-icon-vector-male-avatar-profile-image-182095609.jpg',
                  title: "Barone LLC", 
                  subtitle: "2715 Ash Dr. San Jose, South Dakota", 
                  buttonColor: Colors.red.withOpacity(0.3), 
                  stringButton: "Office", 
                  time: "15.00 - 17.00 (2 hours)", 
                  price: "34",
                  stringButtonColor: Colors.red,
                ),

                


                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 25.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                        Row(
                          children: [
                            CircleAvatar(),
                            VerticalDivider(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "BigKahuna",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                ),
                                Text("2972 Westheimer RD, SantaAna, Illinois"),
                              ],
                            ),
                            TextButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.orange.withOpacity((0.3)))),
                                onPressed: () {},
                                child: Text(
                                  "Apartment",
                                  style: TextStyle(color: Colors.orange),
                                ))
                          ],
                        ),
                        Divider(
                          thickness: 0.5,
                          height: 20.0,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.access_time_outlined),
                                VerticalDivider(),
                                Text("15.00 - 17.00 (2 hours)"),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.attach_money_outlined),
                                VerticalDivider(),
                                Text("234")
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 25.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                        Row(
                          children: [
                            CircleAvatar(),
                            VerticalDivider(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "BigKahuna",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                ),
                                Text("2972 Westheimer RD, SantaAna, Illinois"),
                              ],
                            ),
                            TextButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.orange.withOpacity((0.3)))),
                                onPressed: () {},
                                child: Text(
                                  "Apartment",
                                  style: TextStyle(color: Colors.orange),
                                ))
                          ],
                        ),
                        Divider(
                          thickness: 0.5,
                          height: 20.0,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.access_time_outlined),
                                VerticalDivider(),
                                Text("15.00 - 17.00 (2 hours)"),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.attach_money_outlined),
                                VerticalDivider(),
                                Text("234")
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
