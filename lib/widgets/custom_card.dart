import 'package:citas_app/models/appointment.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.appointment});
  final Appointment appointment;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  appointment.hospital ?? '',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
                height: 120,
                child: Text((appointment.description != null)
                    ? (appointment.description!.length > 200
                        ? ('${appointment.description!.substring(0, 200)}...')
                        : appointment.description!)
                    : '')),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FilledButton(
                  onPressed: () {
                    context.goNamed('appointment', extra: appointment);
                  },
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
