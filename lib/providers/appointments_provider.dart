import 'package:citas_app/models/appointment.dart';
import 'package:citas_app/services/appointments_service.dart';
import 'package:flutter/material.dart';

class AppointmentsProvider extends ChangeNotifier {
  final appointmentsService = AppointmentsService();
  List<Appointment> appointments = [];

  Future<void> getAppointments() async {
    final allAppointments = await appointmentsService.getAppointments();
    appointments = allAppointments;
    notifyListeners();
  }

  Future<void> create(Appointment appointment) async {
    await appointmentsService.create(appointment);
    await getAppointments();
  }

  Future<void> update(Appointment appointment) async {
    appointments = appointments
        .map((a) =>
            (a.appointmentId == appointment.appointmentId) ? appointment : a)
        .toList();
    await appointmentsService.updateAppointment(appointment);
    notifyListeners();
  }

  Future<void> delete(String appointmentId) async {
    await appointmentsService.deleteAppointmentById(appointmentId);
    appointments.removeWhere(
        (appointment) => appointment.appointmentId == appointmentId);
    notifyListeners();
  }
}
