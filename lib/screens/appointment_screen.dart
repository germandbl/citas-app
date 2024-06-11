import 'package:citas_app/models/appointment.dart';
import 'package:citas_app/providers/appointments_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key, required this.appointment});
  final Appointment appointment;
  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  final FocusNode hospitalFocusNode = FocusNode();
  final FocusNode patientFocusNode = FocusNode();
  final FocusNode doctorFocusNode = FocusNode();
  final FocusNode dateFocusNode = FocusNode();
  final FocusNode descriptionFocusNode = FocusNode();
  final TextEditingController hospitalController = TextEditingController();
  final TextEditingController patientController = TextEditingController();
  final TextEditingController doctorController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    hospitalController.text = widget.appointment.hospital!;
    descriptionController.text = widget.appointment.description!;
    doctorController.text = widget.appointment.doctor!;
    dateController.text = widget.appointment.schedule!;
    patientController.text = widget.appointment.patient!;
  }

  @override
  Widget build(BuildContext context) {
    final appointmentsProvider = context.read<AppointmentsProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cita'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                TextFormField(
                  focusNode: hospitalFocusNode,
                  controller: hospitalController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingresa un hospital';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Nombre del hospital...",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10)),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  focusNode: patientFocusNode,
                  controller: patientController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingresa un paciente';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Paciente...",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10)),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  focusNode: doctorFocusNode,
                  controller: doctorController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingresa un doctor';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Doctor...",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10)),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  focusNode: dateFocusNode,
                  controller: dateController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingresa la fecha';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Fecha...",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10)),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  focusNode: descriptionFocusNode,
                  controller: descriptionController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingresa la descripción';
                    } else {
                      return null;
                    }
                  },
                  maxLines: 10,
                  decoration: InputDecoration(
                      alignLabelWithHint: true,
                      labelText: "Descripción de la cita...",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10)),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FilledButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            appointmentsProvider.update(Appointment(
                                appointmentId: widget.appointment.appointmentId,
                                hospital: hospitalController.text,
                                description: descriptionController.text,
                                patient: patientController.text,
                                schedule: dateController.text,
                                doctor: doctorController.text));
                          }
                        },
                        style: FilledButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: const Text('Guardar cambios')),
                        FilledButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            appointmentsProvider.delete(widget.appointment.appointmentId!);
                            context.pop();
                          }
                        },
                        style: FilledButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: const Text('Guardar cambios')),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
