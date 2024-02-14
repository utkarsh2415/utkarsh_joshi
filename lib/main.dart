import 'package:designs_one/WidgetPages/DealsList.dart';
import 'package:designs_one/WidgetPages/deals_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DesignsFirst());
}

List<Deals> deals = getDeals();
List<trending> trends = getTrends();

class DesignsFirst extends StatefulWidget {
  const DesignsFirst({super.key});

  @override
  State<DesignsFirst> createState() => _DesignsFirstState();
}

class _DesignsFirstState extends State<DesignsFirst> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const DesignOne(),
    );
  }
}

class DesignOne extends StatefulWidget {
  const DesignOne({super.key});

  @override
  State<DesignOne> createState() => _DesignOneState();
}
class _DesignOneState extends State<DesignOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
          children: [
            Container(
              height: 54,width: 343,
              margin: const EdgeInsets.only(
                top: 25,left: 24,right: 24
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Back",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.lightGreen),),
                  Text("Market",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),),
                  Text("Filter",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.lightGreen),),
                ],
              ),
            ),
           Padding(padding: const EdgeInsets.only(left: 24,right: 24,top: 20,bottom: 10),
           child: TextField(
             decoration: InputDecoration(
               contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 24),
               hintText: "Search",
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(40),
                 borderSide: BorderSide(),
               )
             ),
           ),
           ),
            const Padding(padding: EdgeInsets.only(top: 10,bottom: 10,right: 24,left: 24),
            child: Text("Hot Deals",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,top: 20,bottom: 20),
              child: Container(
                height: 180,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: buildDealList(),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10,bottom: 10,right: 24,left: 24),
            child: Text("Trending",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 24,right: 24,top: 20,bottom: 20),
              child: Container(
                height: 180,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: buildTrendsList(),
                ),
              ),
            )
          ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(icon: CircleAvatar(child: Icon(Icons.home,color: Colors.lightGreen,)),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.wallet,color: Colors.lightGreen,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart,color: Colors.lightGreen,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded,color: Colors.lightGreen,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_alert,color: Colors.lightGreen,),label: ''),
        ],
      ),
    );
  }
}

List<Widget> buildDealList(){
  List<Widget> deals_ = [];
  for(var i = 0;i<deals.length;i++){
     deals_.add(buildDeals(deals[i]));
  }
  return deals_;
}

List<Widget> buildTrendsList(){
  List<Widget> trends_ = [];
  for(var i = 0;i<trends.length;i++){
     trends_.add(buildTrends(trends[i]));
  }
  return trends_;
}
