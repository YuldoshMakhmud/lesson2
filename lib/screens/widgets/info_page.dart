import 'package:flutter/material.dart';


class InfoPage extends StatelessWidget {
  InfoPage({super.key});

  final List<Map> users = [
    {
      "data": "Today",
      "name": "Makhmud",
      "subTitle": "Today go for walk",
      "photo": "https://source.unsplash.com/random/1"
    },
    {
      "data": "09.07.24",
      "name": "Muhammad",
      "subTitle": "Today go for walk",
      "photo": "https://source.unsplash.com/random/1"
    },
    {
      "data": "09.07.24",
      "name": "Zayd",
      "subTitle": "Today go for walk",
      "photo": "https://source.unsplash.com/random/1"
    },
    {
      "data": "Today",
      "name": "Akbar",
      "subTitle": "Today go for walk",
      "photo": "https://source.unsplash.com/random"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            for (Map item in users)
              Container(
                  padding: const EdgeInsets.all(9),
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: double.infinity,
                  child: Row(children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.height*0.03,
                      backgroundImage: NetworkImage(item["photo"]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    item["name"],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23,
                                    ),
                                  ),
                                  Text(
                                    item["data"],
                                    style: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              item["subTitle"],
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ]),
                    )
                  ]))
          ],
        ),
      ),
    );
  }
}
