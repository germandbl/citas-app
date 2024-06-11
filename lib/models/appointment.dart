class Appointment {
  final String? title;
  final String? description;
  final String? hospital;
  final String? schedule;
  final String? doctor;

  Appointment(this.hospital,
      {required this.title,
      required this.description,
      required this.schedule,
      required this.doctor});
}
