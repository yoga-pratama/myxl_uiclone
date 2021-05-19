import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String promo1 = "WOW! Akrab, 63GB* quota only Rp.110.000!";
    String promo2 = "Akrab 63 GB, GoPay PayLater Cashback 25rb";
    Widget header = Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Icon(
            Icons.account_circle_sharp,
            size: 50,
            color: Colors.white,
          ),
          Container(
            padding: EdgeInsets.only(left: 5),
            child: Column(
              children: [
                Text(
                  "YOGA PRATAMA",
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        builder: (context) {
                          return new Container(
                              height: MediaQuery.of(context).size.height - 100,
                              /* color: Colors.transparent, */
                              child: new Container(
                                  child: new Column(
                                children: [
                                  ListTile(
                                    leading: GestureDetector(
                                      onTap: () => {Navigator.pop(context)},
                                      child: Icon(
                                        Icons.close,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                    ),
                                    title: Text(
                                      "Choose Account",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    child: Divider(
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                  Container(
                                    height: 120,
                                    padding: EdgeInsets.only(
                                        top: 30, left: 30, right: 30),
                                    child: Card(
                                        elevation: 2.0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            side: BorderSide(
                                                width: 3,
                                                color: Colors.blue[900])),
                                        shadowColor: Colors.grey,
                                        child: Container(
                                          padding: EdgeInsets.all(10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.account_circle,
                                                size: 35,
                                              ),
                                              Container(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "YOGA PRATAMA",
                                                        style: TextStyle(),
                                                      ),
                                                      Text(
                                                        "0819XXXXXX",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )
                                                    ],
                                                  ))
                                            ],
                                          ),
                                        )),
                                  ),
                                  Container(
                                    height: 80,
                                    padding:
                                        EdgeInsets.only(left: 30, right: 30),
                                    child: Card(
                                        elevation: 2.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        shadowColor: Colors.grey,
                                        child: Container(
                                            padding: EdgeInsets.all(10),
                                            child: ListTile(
                                              leading: Icon(
                                                Icons.add_circle,
                                                size: 30,
                                              ),
                                              title: Text(
                                                "Add New Account ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ))),
                                  )
                                ],
                              )));
                        });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "0819XXXXXX",
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                          size: 25,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 150),
            child: GestureDetector(
              child: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );

    Widget promoContent = Container(
      child: Column(
        children: [
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: ListTile(
                      title: Text(
                        "Promo",
                        style: TextStyle(fontSize: 15, color: Colors.teal[400]),
                      ),
                      subtitle: Text(
                        promo1,
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: ListTile(
                      title: Text(
                        "Promo",
                        style: TextStyle(fontSize: 15, color: Colors.teal[400]),
                      ),
                      subtitle: Text(
                        promo2,
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    )),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          shadowColor: Colors.white,
                          shape: StadiumBorder(),
                          side: BorderSide(width: 1.0, color: Colors.white),
                          onSurface: Colors.white),
                      child: Text(
                        "Activate",
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );

    Widget icon1 = Container(
      height: 150,
      child: GridView.count(
        crossAxisCount: 4,
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Icon(
                    Icons.view_list,
                    color: Colors.blue[900],
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Buy Package",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            padding: const EdgeInsets.all(8),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Icon(
                    Icons.account_box,
                    color: Colors.blue[900],
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Sharing",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            padding: const EdgeInsets.all(8),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Icon(
                    Icons.qr_code_scanner,
                    color: Colors.blue[900],
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Scan Voucher",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            padding: const EdgeInsets.all(8),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Icon(
                    Icons.supervisor_account,
                    color: Colors.blue[900],
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Akrab",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            padding: const EdgeInsets.all(8),
          ),
        ],
      ),
    );

    Widget card1 = Container(
      height: 150,
      padding: EdgeInsets.all(10),
      child: Card(
        /* shadowColor: Colors.grey[350], */
        elevation: 2.0,
        shadowColor: Colors.grey[400],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
            padding: EdgeInsets.only(top: 15, left: 10),
            child: Row(
              children: [
                Container(
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.only(right: 35),
                      child: Text(
                        "Remaining Balance",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500]),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "IDR 10.000",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 9),
                        child: Text(
                          "Active Until 7 June 2021",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[500]),
                        ))
                  ]),
                ),
                Container(
                    width: 100,
                    height: 30,
                    margin: EdgeInsets.only(left: 90, bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(15)),
                    child: TextButton(
                        onPressed: null,
                        child: Text(
                          "Top Up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )))
              ],
            )),
      ),
    );

    Widget card2 = Container(
      height: 210,
      padding: EdgeInsets.all(10),
      child: Card(
        elevation: 2.0,
        shadowColor: Colors.grey[400],
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: ListTile(
                title: Text(
                  "View My Package",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500]),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.signal_cellular_alt_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      /*  SizedBox(height: 5), */
                      Row(
                        children: [
                          Text('600 MB', style: TextStyle(fontSize: 12)),
                          IconButton(
                              icon: Icon(
                                Icons.add_circle,
                                color: Colors.blue[900],
                              ),
                              onPressed: null)
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: 1,
                    height: 75,
                    color: Colors.grey[400],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 30,
                      ),
                      /*  SizedBox(height: 5), */
                      Row(
                        children: [
                          Text('6 Jam', style: TextStyle(fontSize: 12)),
                          IconButton(
                              icon: Icon(
                                Icons.add_circle,
                                color: Colors.blue[900],
                              ),
                              onPressed: null)
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: 1,
                    height: 75,
                    color: Colors.grey[400],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.message_sharp,
                        color: Colors.black,
                        size: 30,
                      ),
                      /*  SizedBox(height: 5), */
                      Row(
                        children: [
                          Text('200 Pesan', style: TextStyle(fontSize: 12)),
                          IconButton(
                              icon: Icon(
                                Icons.add_circle,
                                color: Colors.blue[900],
                              ),
                              onPressed: null)
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 350,
              height: 1,
              color: Colors.grey[400],
            ),
            Container(
              height: 30,
              child: ListTile(
                title: Text(
                  "View My Package",
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                trailing: Icon(
                  Icons.navigate_next_rounded,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );

    Widget card3 = Container(
      height: 208,
      padding: EdgeInsets.all(10),
      child: Card(
        elevation: 2.0,
        shadowColor: Colors.grey[400],
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "My Points",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                title: Text(
                  "5000 Points",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "500 points will expire within 100 days",
                  style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 350,
                height: 1,
                color: Colors.grey[400],
              ),
              ListTile(
                title: Text(
                  "View My Rewards",
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                trailing: Icon(
                  Icons.navigate_next_rounded,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );

    // TODO: implement build
    return ListView(
      scrollDirection: Axis.vertical,
      children: [header, promoContent, icon1, card1, card2, card3],
    );
  }
}
