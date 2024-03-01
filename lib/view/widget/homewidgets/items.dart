import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Best Sells",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            padding: const EdgeInsets.only(top: 0),
            physics: const NeverScrollableScrollPhysics(),
            //  scrollDirection: Axis.horizontal,
            itemCount: 20,
            shrinkWrap: true,
            itemBuilder: (context, index) => Card(
              color: Colors.white70,
              child: ListTile(
                leading: CircleAvatar(
                  child: Text("$index"),
                ),
                title: const Text("Title"),
                subtitle: const Text("Subtitle"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
