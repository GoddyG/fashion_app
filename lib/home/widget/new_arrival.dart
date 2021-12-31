import 'package:fashion_a_pp/home/widget/clothes_item.dart';
import 'package:fashion_a_pp/models/clothes.dart';
import 'package:flutter/material.dart';

import 'categories_list.dart';

class NewArrival extends StatelessWidget {

  final clothesList = Clothes.generateClothes();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryList("New Arrival"),
          Container(
            height: 280,
            child:
            ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index)=> ClothesItem(clothesList[index]),
                separatorBuilder: (_, index)=>SizedBox(width: 10,),
                itemCount: clothesList.length),

          )
        ],
      ),
    );
  }
}
