class KayeGogglesBladder {
  late String img;
  late String url;

  KayeGogglesBladder(this.img, this.url);

  factory KayeGogglesBladder.fromJson(Map<String, dynamic> json) {
    return KayeGogglesBladder(json['img'], json['url']);
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'img': img, 'url': url};
  }
}
