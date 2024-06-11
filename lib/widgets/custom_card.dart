import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  'Hospital: Leonardo Martinez',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Text(
                "Ex quis est fugiat dolor velit eu consequat reprehenderit do veniam minim labore. Id nulla sit ipsum velit irure quis nisi ad laborum duis. Non nisi veniam sit magna minim. Ipsum tempor irure labore ea consectetur minim commodo. Aliquip dolor veniam eu dolor pariatur exercitation cupidatat excepteur. Duis fugiat ullamco exercitation aute minim incididunt magna fugiat adipisicing do non Lorem irure."),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text("Ver informacion"),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
