class ReportMonth {
  bool? success;
  String? message;
  List<Data>? data;

  ReportMonth(
      {required this.success, required this.message, required this.data});

  ReportMonth.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? title;
  String? slug;
  String? foto;
  String? kategori;

  Data(
      {required this.title,
      required this.slug,
      required this.foto,
      required this.kategori});

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    slug = json['slug'];
    foto = json['foto'];
    kategori = json['kategori'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['slug'] = this.slug;
    data['foto'] = this.foto;
    data['kategori'] = this.kategori;
    return data;
  }
}
