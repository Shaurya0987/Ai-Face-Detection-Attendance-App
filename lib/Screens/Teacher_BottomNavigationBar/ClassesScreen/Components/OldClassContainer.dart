import 'package:flutter/material.dart';

class OldClassContainer extends StatelessWidget {
  const OldClassContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,bottom: 0,left: 25),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0), // UI unchanged
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.circle,
                            size: 8, color: Colors.grey.shade100),
                        const SizedBox(width: 5),
                        Text(
                          "Upcoming",
                          style:
                              TextStyle(color: Colors.grey.shade800),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "10:00 - 11:15 AM",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              const Text(
                "CS-101: Data Structures",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 0),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on,
                            color: Colors.grey.shade600, size: 19),
                        const SizedBox(width: 8),
                        Text(
                          "Room 210",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 40),
                    Row(
                      children: [
                        Icon(Icons.people,
                            color: Colors.grey.shade600, size: 19),
                        const SizedBox(width: 8),
                        Text(
                          "38 Students",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 15,
                          ),
                        ),
                      ],
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