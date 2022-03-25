class SupplierModel {
  bool? success;
  String? message;
  List<Data>? data;

  SupplierModel(
      {required this.success, required this.message, required this.data});

  SupplierModel.fromJson(Map<String, dynamic> json) {
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
  int? id;
  String? namaSupplier;
  String? namaBarang;
  String? alamat;
  String? noWa;

  Data(
      {required this.id,
      required this.namaSupplier,
      required this.namaBarang,
      required this.alamat,
      required this.noWa});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    namaSupplier = json['nama_supplier'];
    namaBarang = json['nama_barang'];
    alamat = json['alamat'];
    noWa = json['no_wa'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama_supplier'] = this.namaSupplier;
    data['nama_barang'] = this.namaBarang;
    data['alamat'] = this.alamat;
    data['no_wa'] = this.noWa;
    return data;
  }
}
