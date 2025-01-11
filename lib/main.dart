import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none, // Allows overlap outside the stack
                children: [
                  // Top clipped image
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30), // Adjust the curvature
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.network(
                      'https://cdn.wikifarmer.com/images/thumbnail/2023/10/Harvest-yield-1-1200x630.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 200, // Adjust height as needed
                    ),
                  ),
                  // Circle avatar in the middle
                  Positioned(
                    bottom: -50, // Adjust overlap
                    left: MediaQuery.of(context).size.width / 2 -
                        50, // Center horizontally
                    child: CircleAvatar(
                      radius: 50, // Adjust size
                      backgroundImage: NetworkImage(
                        'https://scontent.fdac1-2.fna.fbcdn.net/v/t1.6435-9/131787061_2857763421211257_3276200803092784704_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeGQeoBECv1WtEh6SvS3GpWaTiL3UCzIotZOIvdQLMii1mNOR9ThoRdStHC65M7bGoTYHjuKhKRoVVWcGH92kVLB&_nc_ohc=2cJnEcL7yDcQ7kNvgGjCkH7&_nc_zt=23&_nc_ht=scontent.fdac1-2.fna&_nc_gid=AvbViYNSH-IQhZd32G-XXu3&oh=00_AYA4FMVgvn-rcyARXObqPnfCsQ4gzCjcY5mF0XZEZqml1w&oe=67AA05D0',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height: 60), // Add space below the Stack for proper alignment
              // Text and other details
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      "Marylin Hymel",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Welcome to Your Next Stay!",
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 4),
                    Text(
                      "I'm thrilled to have you here and hope you have a wonderful experience. "
                      "If you need anything or have any questions during your time with me, please don't hesitate to reach out.",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
