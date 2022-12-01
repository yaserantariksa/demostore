import 'dart:convert';

import 'package:fluttershop/models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductService {
  String baseUrl = 'http://10.0.2.2:8000/api';

  Future<List<ProductModel>> getProduct() async {
    var url = Uri.parse('$baseUrl/products');
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(url, headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductModel> products = [];

      for (var product in data) {
        products.add(ProductModel.fromJson(product));
      }

      return products;
    } else {
      throw Exception('Gagal ambil data product');
    }
  }
}
