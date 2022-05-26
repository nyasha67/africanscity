import 'package:flutter/material.dart';
import 'package:real_estate/model/house.dart';

class Forsale extends StatelessWidget {
  final forsaleList=House.generateForSale();
  @override
  Widget build(BuildContext context,) {
    return Container(
      height:340,
      child:ListView.separated(
          scrollDirection:Axis.horizontal,
          itemBuilder: (context, index)=>
              Container(
                height: 300,
                width: 230,
                padding: EdgeInsets.all(10),
                decoration:BoxDecoration(
                    color:Colors.white,
                    borderRadius:BorderRadius.circular(8)
                ),
                child: Image.asset(forsaleList[index].imageUrl,fit: BoxFit.cover,),
              ),
          separatorBuilder: (_,index)=>SizedBox(width: 20,),
          itemCount:forsaleList.length
      ),
    );
  }
}