import 'package:designs_one/WidgetPages/DealsList.dart';
import 'package:flutter/material.dart';

Widget buildDeals(Deals deal){
  return GestureDetector(
      onTap: (){},
    child: Container(
      margin: EdgeInsets.only(right: 10),
      width: 110, height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 110,height: 110,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(deal.image),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 5),
          child: Text(deal.itemName,),
          ),
          Padding(padding: EdgeInsets.only(top: 1),
          child: Text(deal.goesHere),
          ),
          Padding(padding: EdgeInsets.only(top: 1),
          child: Text(deal.price),
          ),
        ],
      ),
    ),
  );
}

Widget buildTrends(trending t){
  return GestureDetector(
    onTap: (){},
    child: Container(
      margin: EdgeInsets.only(right: 10),
      width: 110,height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 110,height: 110,
            decoration: BoxDecoration(
              image: DecorationImage(
               image: AssetImage(t.image),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 5),
          child: Text(t.item),
          ),
          Padding(padding: EdgeInsets.only(top: 1),
          child: Text(t.goesHere),
          ),
          Padding(padding: EdgeInsets.only(top: 1),
          child: Text(t.price),
          )
        ],
      ),
    ),
  );
}