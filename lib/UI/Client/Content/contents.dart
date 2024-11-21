import 'package:flutter/material.dart';

class Contents extends StatelessWidget {
  const Contents(
      {super.key,
      required this.title,
      required this.requirements,
      required this.description});
  final String title;
  final String requirements;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.image,
                    size: 200,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Text(
                'Title',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(title),
              const SizedBox(height: 15),
              const Text(
                'Requirements',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(requirements),
              const SizedBox(height: 15),
              const Text(
                'Description',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(description),
            ]),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  height: 40,
                  minWidth: 200,
                  onPressed: () {},
                  color: Colors.blue,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text('Apply',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
