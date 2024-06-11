import 'package:citas_app/providers/appointments_provider.dart';
import 'package:citas_app/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appointmentsProvider = context.watch<AppointmentsProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis citas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Expanded(
              child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 15,
                      ),
                  itemCount: appointmentsProvider.appointments.length,
                  itemBuilder: (context, index) => CustomCard(
                      appointment: appointmentsProvider.appointments[index])))
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('/create-appointment');
        },
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
