
import 'package:coffee/models/menu.dart';
import 'package:coffee/widget/cards.dart';
import 'package:coffee/widget/name.dart';
import 'package:coffee/widget/popularList.dart';
import 'package:coffee/widget/search.dart';
import 'package:coffee/widget/title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Menu>list=Menu.Cappuccino; // The list that will show after we click to the item in the list

  bool TextColor=false; // To change the color of the text if we click to the button


  List coffeeType=[

   ['Cappuccino',true,],
   ['Hot Coffee',false,],
   ['Latte',false,],
   ['Cold Coffee',false,],
  ];


  void coffeeTypeSelected (int index){  // To change the list after the click

    setState(() {
      for(int i=0;i<coffeeType.length;i++){
      coffeeType[i][1]=false;
    }

    coffeeType[index][1]=true;
    if(coffeeType[index][0]=='Cappuccino')list=Menu.Cappuccino;
    else if(coffeeType[index][0]=='Hot Coffee')list=Menu.hotCoffee;
    else if(coffeeType[index][0]=='Latte')list=Menu.latte;
    else if(coffeeType[index][0]=='Cold Coffee')list=Menu.coldCoffee;
    });
    

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color.fromRGBO(33, 35, 37, 1),//change the background color

      appBar:appBar(),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:const Color.fromRGBO(33, 35, 37, 1) ,
        unselectedItemColor: Colors.white,
        selectedItemColor: const Color.fromRGBO(209, 120, 66, 1),
         elevation: 0.0,
        items:const [
          BottomNavigationBarItem(icon:Icon(CupertinoIcons.home),label: 'Home'),
          BottomNavigationBarItem(icon:Icon(CupertinoIcons.search),label: 'Search'),
          BottomNavigationBarItem(icon:Icon(CupertinoIcons.heart),label: 'Favorite'),
        ]
        ),

      body:SingleChildScrollView(

        child:Column(
        children: [ 
          const SizedBox(height: 30,),
          const TitleW(),
          const SizedBox(height: 10,),
          const SearchBox(),
          Container(
          width: double.infinity,
          height: 40,
          child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:coffeeType.length,
          itemBuilder: (context, index) {
          return Name(
            coffeeType: coffeeType[index][0],
            isSelected: coffeeType[index][1],
            onTap: (){
            coffeeTypeSelected(index);
           },
           
          );
        }
        
        ),
  
    ),
          const SizedBox(height: 10,),
           Cards(list),

           const SizedBox(height: 5,),

          const Align(

            alignment: Alignment.topLeft,

            child:Padding(
              padding: EdgeInsets.only(left: 10),
            child:Text('Popular',style: TextStyle(
            fontSize: 20,
            color: Colors.white,
           ),) ,) 

           ),

           for(int i=0;i<Menu.popularList.length;i++)PopularItem(Menu.popularList[i]),

           const SizedBox(height: 10,),

              const Align(

            alignment: Alignment.topLeft,

            child:Padding(

              padding: EdgeInsets.only(left: 10),

            child:Text('Sweets',
            style:TextStyle(
            fontSize: 20,
            color: Colors.white,
           )
           ,)
            ,) 
           ),
           const SizedBox(height:5),
           Cards(Menu.cakes),
          

          
        
        ],
      ),
      ),

    
    );
  }


  AppBar appBar()  { // App Bar function that return AppBar

    return  AppBar(

        backgroundColor:Color.fromRGBO(33, 35, 37, 1), 

        title: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,// To make a space beween the menu icon and the image

          children: [

         const Icon(Icons.menu,color: const Color.fromRGBO(151, 154, 157, 1),),

           Container(
            height: 50,
            width: 50,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: const Color.fromRGBO(82, 85, 90, 1),width: 2),
              color: Colors.white,
              image:const DecorationImage(
                image: AssetImage('images/man.jpg'),
                fit: BoxFit.cover
                )
            ),
          )
        ]),
      );
  }
}