class KayeFlushUpon {
  late String title;
  late String url;

  late bool showHtmlTitle;
  late bool showNavbar;

  KayeFlushUpon(
    this.title,
    this.url, {
    this.showNavbar = true,

    this.showHtmlTitle = false,
  });
}
