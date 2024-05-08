import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
bool isExpand=false;
String para="Accenture began as the business and technology consulting division of accounting firm Arthur Andersen[9] in the early 1950s when it conducted a feasibility study for General Electric to install a computer at Appliance Park in Louisville, Kentucky,[10] which led to GE's installation of a UNIVAC I computer and printer,[11] believed to be the first commercial use of a computer in the U.S.[12] Joseph Glickauf, an early pioneer of computer consulting, held a position as head of Arthur Andersen's administrative services division.[10]";
  @override
  Widget build(BuildContext context) {
  return Material(
  child: DefaultTabController(length: 2,
  
    child: Scaffold(appBar: AppBar(
    title: Text("Tabbar"),
    bottom: TabBar(tabs: [
    Tab(icon: Icon(Icons.home),),
    Tab(icon: Icon(Icons.settings),)
    ],),
    ),
    body: TabBarView(children: [

    Column(
      children: [
        Text(isExpand? para:para.substring(0,para.length~/2),
        
        ),
      
    ElevatedButton(onPressed: (){
    setState(() {
      isExpand=!isExpand;
    });
    }, child: Text(isExpand?"view less":"view more")),
    ],
    ),
   Icon(Icons.home),
   Icon(Icons.settings_accessibility)
])
  
    ),
  ),
    );
  }
}
