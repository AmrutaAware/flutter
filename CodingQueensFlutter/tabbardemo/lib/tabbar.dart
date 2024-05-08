import 'package:flutter/material.dart';

class TabbarExample extends StatefulWidget {
  const TabbarExample({super.key});

  @override
  State<TabbarExample> createState() => _TabbarExampleState();
}

class _TabbarExampleState extends State<TabbarExample> {
bool isExpand=false;
String para="In 1989, Arthur Andersen and Andersen Consulting became separate units of Andersen Worldwide Société Coopérative (AWSC). Throughout the 1990s, there was increasing tension between Andersen Consulting and Arthur Andersen. Andersen Consulting was paying Arthur Andersen up to 15% of its profits each year (a provision of the 1989 split was that the more profitable unit – whether AA or AC – pay the other the 15 percent), while at the same time Arthur Andersen was competing with Andersen Consulting through its own newly established business consulting service line called Arthur Andersen Business Consulting. This dispute came to a head in 1998 when Andersen Consulting put the 15% transfer payment for that year and future years into escrow and issued a claim for breach of contract against AWSC and Arthur Andersen. In August 2000, as a result of the conclusion of arbitration with the International Chamber of Commerce, Andersen Consulting broke all contractual ties with AWSC and Arthur Andersen. As part of the arbitration settlement, Andersen Consulting paid the sum held in escrow (then 1.2 billion) to Arthur Andersen, and was required to change its name, resulting in the entity being renamed Accenture.[13]";
  @override
  Widget build(BuildContext context) {
    return  Material(
    child: DefaultTabController(length: 6,child: Scaffold(appBar: 
    AppBar(
    title: Text("TabBar"),
    bottom: TabBar(tabs:
     [
    Tab(icon: Icon(Icons.home ),),
    Tab(icon: Icon(Icons.settings ),),
    Tab(icon: Icon(Icons.camera ),),
    Tab(icon: Icon(Icons.star),),
    Tab(icon: Icon(Icons.star),),
     Tab(icon: Icon(Icons.star),),
    ],
    ),
    ),
    body: TabBarView(children: [

    //Icon(Icons.home),
Column(
  children: [
    Text(isExpand?para:para.substring(0,para.length~/2)),
    ElevatedButton(onPressed: (){
    setState(() {
      isExpand=!isExpand;
    });
    }, child: Text(isExpand?'view less': 'view more'),),
  ],
),
    Icon(Icons.settings),
    Icon(Icons.camera),
    Icon(Icons.star),
    Icon(Icons.menu),
    Icon(Icons.star),
    ],),
    ),
    ),
    );
  }
}