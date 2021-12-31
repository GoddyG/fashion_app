import 'package:fashion_a_pp/home/widget/add_cart.dart';
import 'package:fashion_a_pp/home/widget/clothes_info.dart';
import 'package:fashion_a_pp/home/widget/detail_app_bar.dart';
import 'package:fashion_a_pp/home/widget/size_list.dart';
import 'package:fashion_a_pp/models/clothes.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Clothes clothes;

  const DetailPage({Key key, this.clothes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(
              clothes: clothes,
            ),
            ClothesInfo(clothes),
            SizeList(),
            AddCart(clothes)
          ],
        ),
      ),
    );
  }
}
