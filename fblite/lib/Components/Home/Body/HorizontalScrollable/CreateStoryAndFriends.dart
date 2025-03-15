import 'package:fblite/Components/Modals/alert_modal/alert.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:flutter/material.dart';

class Createstoryandfriends extends StatefulWidget {
  @override
  _CreateStoryAndFriendState createState() => _CreateStoryAndFriendState();
}

class _CreateStoryAndFriendState extends State<Createstoryandfriends> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth = screenWidth * 0.35; // Dynamic width
    double containerHeight = 200;

    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  AlertModal(
                    context,
                    "Allow Facebook Lite to use your phone's storage?",
                    "This lets you share from your camera roll, and enables other features for photos and videos",
                  );
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: containerHeight,
                      width: containerWidth,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1.0, color: Colors.grey),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: containerHeight * 0.5,
                            decoration: BoxDecoration(
                              color: Color(0xFFE4E6E8),
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10),
                              ),
                            ),
                          ),

                          Container(
                            height: containerHeight * 0.45,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Create Story",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: containerHeight * 0.45,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),

              // Find Friend Card
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/find_frind.png',
                      width: containerWidth,
                      height: containerHeight,
                      fit: BoxFit.fill,
                    ),
                  ),
                  // Text Background for Better Visibility
                  Positioned(
                    bottom: 10,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      color: Colors.black54,
                      child: Text(
                        "Find Friend",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 10),
          BottomBorderline(height: 3.0),
        ],
      ),
    );
  }
}
