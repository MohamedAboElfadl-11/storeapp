import 'package:storeapp/helper/api.dart';

class AllCategoryServices {
  Future<List<dynamic>> getAllCategory() async {
    List<dynamic> data =
        await Api().get(url: "https://fakestoreapi.com/products/categories");

    return data;
  }
}
