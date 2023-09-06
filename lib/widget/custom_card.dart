import 'package:flutter/material.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/screens/product_screen.dart';
import 'package:storeapp/screens/update_product_page.dart';

class CustomCard extends StatefulWidget {
  CustomCard({super.key, required this.productModel});

  ProductModel productModel;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isFav = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onDoubleTap: () {
      //   Navigator.pushNamed(
      //     context,
      //     UpdateProductPage.id,
      //     arguments: widget.productModel,
      //   );
      // },
      onTap: () {
        Navigator.pushNamed(
          context,
          ProductScreen.id,
          arguments: widget.productModel,
        );
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            child: Card(
              color: Colors.white,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.grey.shade100),
              ),
              elevation: 4,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.productModel.title,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ ${widget.productModel.price} ",
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            isFav =! isFav;
                            setState(() {
                            });
                          },
                          icon: isFav ? Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          ) :
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 15.0,
            bottom: 85.0,
            child: Image.network(
              widget.productModel.image,
              height: 80,
               width: 70,
            ),
          ),
        ],
      ),
    );
  }
}
