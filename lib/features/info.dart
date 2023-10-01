import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/router/appRoutesEnum.dart';

class InfoView extends StatelessWidget {
  const InfoView({Key? key, required this.data}) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    return _InfoView(data: data,);
  }
}

class _InfoView extends StatelessWidget {
  const _InfoView({Key? key, required this.data}) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text('Info'),
          ),
        ),
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverFillRemaining(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
                child: Column(
                  children: [
                    Material(
                      elevation: 8,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        // height: 320,
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  "Showing the image",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom: 20),
                                        child: Text(
                                          data,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 12),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amberAccent,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 6),
                                            child: Text(
                                              "Rating",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 12),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.white24,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                const Expanded(
                                                  child: Text(
                                                    "Add your rating & review",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Container(
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  8)),
                                                    ),
                                                    // color: Colors.white,
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                        "Rate now",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          context
                                              .go(AppRoutes.booking.routePath, extra: data);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.pink,
                                        ),
                                        child: const Text(
                                          "Book now",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("He'd have you all unravel at the"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("He'd have you all unravel at the"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("He'd have you all unravel at the"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("He'd have you all unravel at the"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("He'd have you all unravel at the"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("He'd have you all unravel at the"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
