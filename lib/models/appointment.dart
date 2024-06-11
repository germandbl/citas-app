class Appointment {
  final String? patient;
  final String? description;
  final String? hospital;
  final String? schedule;
  final String? doctor;

  Appointment(this.hospital,
      {required this.patient,
      required this.description,
      required this.schedule,
      required this.doctor});
}
