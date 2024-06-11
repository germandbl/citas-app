import 'package:flutter/material.dart';

class CreateAppointmentScreen extends StatefulWidget {
  const CreateAppointmentScreen({super.key});

  @override
  State<CreateAppointmentScreen> createState() =>
      _CreateAppointmentScreenState();
}

class _CreateAppointmentScreenState extends State<CreateAppointmentScreen> {
  final FocusNode hospitalFocusNode = FocusNode();
  final FocusNode doctorFocusNode = FocusNode();
  final FocusNode dateFocusNode = FocusNode();
  final FocusNode descriptionFocusNode = FocusNode();
  final TextEditingController hospitalController = TextEditingController();
  final TextEditingController doctorController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear una cita'),
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
                  maxLines: 15,
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
                          if (_formKey.currentState!.validate()) {}
                        },
                        style: FilledButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: const Text('Agendar cita')),
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
