class WorkExperience {
  final int? id;
  String company;
  String jobTitle;
  DateTime startTime;
  DateTime? endTime;
  String responsabilities;

  WorkExperience({
    this.id,
    required this.company,
    required this.jobTitle,
    required this.startTime,
    required this.endTime,
    required this.responsabilities,
  });
}
