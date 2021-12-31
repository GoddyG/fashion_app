import 'package:fashion_a_pp/detail/details.dart';
import 'package:fashion_a_pp/models/clothes.dart';
import 'package:flutter/material.dart';

class ClothesItem extends StatelessWidget {
final Clothes clothes;
ClothesItem(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage(clothes: clothes,)));
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(8.0),
                    height: 170,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(clothes.imageUrl),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  Positioned(
                      right: 20,
                      top: 15,
                      child:Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.9),
                          shape: BoxShape.circle
                        ),
                        child: Icon(Icons.favorite, color: Colors.red,size: 15,),
                      ) )
                ],
              ),
                Text(clothes.title, style: TextStyle(fontWeight: FontWeight.bold, height: 1.5),),
              Text(clothes.subtitle,style: TextStyle(fontWeight: FontWeight.bold, height: 1.5)),
              Text(clothes.price,style: TextStyle(fontWeight: FontWeight.bold, height: 1.5, color: Theme.of(context).primaryColor), )
            ],
          ),
        ),
      )
    );
  }
}
