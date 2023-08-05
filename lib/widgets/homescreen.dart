import 'package:flutter/material.dart';

import 'contactcards.dart';

class SlidingCard extends StatelessWidget {
  final String notification;

  SlidingCard(this.notification);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: ListTile(
        title: Text(notification),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Handle notification card tap
        },
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = "Ankur";
    List<String> notifications = [
      "Notification 1",
      "Notification 2",
      "Notification 3",
      "Notification 4",
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "$name",
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        Expanded(
          child: PageView.builder(
            itemCount: notifications.length,
            itemBuilder: (context, index) {
              return SlidingCard(notifications[index]);
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
          height: MediaQuery.of(context).size.height * 0.52,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyWidget(
                    Icons.person_2_sharp,
                    "Heads",
                    Color.fromARGB(255, 133, 195, 217),
                  ),
                  MyWidget(
                    Icons.calendar_today,
                    "Calender",
                    Color(0xFF778DA9),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyWidget(Icons.contacts, "Feedback/about us", Color(0xFF415A77)),
                  MyWidget(Icons.people, "Developers", Color(0xFF303F9F)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
