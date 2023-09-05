import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/update_product.dart';
import 'package:storeapp/widget/text_input_field.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});

  static String id = "Update Product";

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, description, image, price;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;

    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Update Product",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              defaultFormFailed(
                hintText: "Product Name",
                onSubmit: (data) {
                  productName = data;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              defaultFormFailed(
                hintText: "Description",
                onSubmit: (data) {
                  description = data;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              defaultFormFailed(
                textInputType: TextInputType.number,
                hintText: "Price",
                onSubmit: (data) {
                  price = data;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              defaultFormFailed(
                hintText: "Image",
                onSubmit: (data) {
                  image = data;
                },
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () async {
                  isLoading = true;
                  setState(() {});
                  try {
                    await updateProduct(product);
                    print("success");
                  } catch (e) {
                    print(e.toString());
                  }
                  isLoading = false;
                  setState(() {});
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadiusDirectional.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Update",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().updateProductService(
      id: product.id,
      title: productName == null ? product.title : productName!,
      description: description == null ? product.description : description!,
      price: price == null ? product.price.toString() : price!,
      image: image == null ? product.image : image!,
      category: product.category,
    );
  }
}
