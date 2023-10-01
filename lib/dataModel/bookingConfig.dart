class BookingListConfig {
  String place;
  List<String> availableTime;
  bool isCancellable;
  Function()? onListItemTap;

  BookingListConfig(
      {required this.place,
      required this.isCancellable,
      required this.onListItemTap,
      required this.availableTime});
}
