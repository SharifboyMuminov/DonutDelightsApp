import 'package:donut_delights_app/extensions/context_extensions.dart';
import 'package:donut_delights_app/pages/cart/widget/cart_item.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<String> _imagePaths = [
    "assets/images/careemy.png",
    "assets/images/chocolate.png",
    "assets/images/filled.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Color(0xFFF9F9F9),
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "My Cart",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        actions: [
          SizedBox(
            width: 40,
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.white,
                elevation: 2,
              ),
              child: Icon(Icons.close, color: Colors.black, size: 20),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: [
          ...List.generate(_imagePaths.length, (index) {
            return CartItem(imagePath: _imagePaths[index]);
          }),
          SizedBox(height: 40),
          _getRow("Sub Total", "\$21.6"),
          _getRow("Promocode", "\$4.00"),
          _getRow("Delivery Charges", "Free"),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              Text(
                "\$17.6",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 28,
                  color: Color(0xFFFF4A4C),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          SafeArea(
            child: SizedBox(
              width: context.width,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFFFF4A4C),
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(16),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Order",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getRow(String titleOne, String titleTow) {
    return Column(
      children: [
        SizedBox(height: 13),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleOne,
              style: TextStyle(
                color: Color(0xFFACA9A7),
                fontSize: 18,
                fontWeight: FontWeight.w400,
                height: 0.1,
              ),
            ),
            Text(
              titleTow,
              style: TextStyle(
                color: Color(0xFFACA9A7),
                fontSize: 18,
                fontWeight: FontWeight.w400,
                height: 0.1,
              ),
            ),
          ],
        ),
        Text(
          "_ " * 100,
          maxLines: 1,
          style: TextStyle(color: Color(0xFFE6E6E6)),
        ),
      ],
    );
  }
}
