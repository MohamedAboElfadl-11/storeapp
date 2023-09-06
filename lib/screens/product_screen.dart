import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapp/models/product_model.dart';

import '../widget/custom_button.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({
    super.key,
  });

  static String id = "Product Screen";

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          product.title,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.cartPlus,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  product.image,
                  height: 240,
                ),
              ),
              const SizedBox(
                height: 32.0,
              ),
              Text(
                product.title,
                style: const TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                product.description,
                maxLines: 5,
                style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 18.0,
                  color: Colors.grey,
                  // fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 32.0,
              ),
               Row(
                children: [
                  const Text(
                    "Price",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "${product.ratingModel?.rate} \$",
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
               Row(
                children: [
                  const Text(
                    "Count",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Text(
                   "${product.ratingModel?.count}",
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
               Row(
                children: [
                  const Text(
                    "Rating",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        "${product.ratingModel?.rate}",
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
               Row(
                children: [
                  const Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    product.category,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32.0,
              ),
              Center(
                child: customButton(onTap: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
