class ProductModel {
  int? id;
  String? name;
  int? price;
  String? description;
  Null? tags;
  int? categoriesId;
  String? createdAt;
  String? updatedAt;
  CategoryModel? category;
  List<GalleriesModel>? galleries;

  ProductModel(
      {this.id,
      this.name,
      this.price,
      this.description,
      this.tags,
      this.categoriesId,
      this.createdAt,
      this.updatedAt,
      this.category,
      this.galleries});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    description = json['description'];
    tags = json['tags'];
    categoriesId = json['categories_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    category = json['category'] != null
        ? CategoryModel.fromJson(json['category'])
        : null;
    if (json['galleries'] != null) {
      galleries = <GalleriesModel>[];
      json['galleries'].forEach((v) {
        galleries!.add(GalleriesModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['description'] = this.description;
    data['tags'] = this.tags;
    data['categories_id'] = this.categoriesId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    if (this.galleries != null) {
      data['galleries'] = this.galleries!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryModel {
  int? id;
  String? name;
  String? createdAt;
  String? updatedAt;

  CategoryModel({this.id, this.name, this.createdAt, this.updatedAt});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class GalleriesModel {
  int? id;
  int? productsId;
  String? url;
  String? createdAt;
  String? updatedAt;

  GalleriesModel(
      {this.id, this.productsId, this.url, this.createdAt, this.updatedAt});

  GalleriesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productsId = json['products_id'];
    url = json['url'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['products_id'] = this.productsId;
    data['url'] = this.url;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
