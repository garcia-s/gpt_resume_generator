class UserEducationItem {
  final int? id;
  String organization;
  String title;
  DateTime startDate;
  DateTime endDate;
  UserEducationItem({
    this.id,
    required this.organization,
    required this.title,
    required this.startDate,
    required this.endDate,
  });
}
