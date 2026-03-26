class KayePitySprintConcernedUpon {
  late String title;
  late String url;
  late String orderId;
  late int payMode;

  late bool showHtmlTitle;
  late bool showNavbar;

  KayePitySprintConcernedUpon(
    this.title,
    this.url,
    this.orderId,
    this.payMode, {
    this.showNavbar = true,

    this.showHtmlTitle = false,
  });
}
