import 'package:citas_app/models/appointment.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NotesService {
  final appointmentsInstance =
      FirebaseFirestore.instance.collection('appointments');

  Future<List<Appointment>> getAppointments() async {
    List<Appointment> appointments = [];
    final snapshot = await appointmentsInstance.get();

    appointments = snapshot.docs.map((doc) {
      return Appointment(
          appointmentId: doc.id,
          patient: doc.data()['patient'],
          description: doc.data()['description'],
          schedule: doc.data()['schedule'],
          doctor: doc.data()['doctor'],
          hospital: doc.data()['hospital']);
    }).toList();

    return appointments;
  }

  Future<DocumentReference> create(Appointment appointment) {
    return appointmentsInstance.add(<String, dynamic>{
      'hospital': appointment.hospital,
      'description': appointment.description,
      'patient': appointment.patient,
      'doctor': appointment.doctor,
      'schedule': appointment.schedule
    });
  }

  Future deleteAppointmentById(String noteId) {
    return appointmentsInstance.doc(noteId).delete();
  }

  Future updateAppointment(Appointment appointment) {
    return appointmentsInstance.doc(appointment.appointmentId).update({
      'hospital': appointment.hospital,
      'description': appointment.description,
      'doctor': appointment.doctor,
      'patient': appointment.patient,
      'schedule': appointment.schedule
    });
  }
}
