import 'package:coffee/details_Page.dart';
import 'package:coffee/models/menu.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
   ItemCard(this.item,{super.key});
  Menu item;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:const EdgeInsets.all(20),
      height: 470,
      width: 250,

      //The box

      decoration: BoxDecoration(
       color:  const Color.fromRGBO(33, 35, 37, 1),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
           BoxShadow(
                  color: Colors.black.withOpacity(0.5), 
                  spreadRadius: 5, 
                  blurRadius: 7, 
                  offset:const Offset(0, 3), 
                ),
        ]
      ),

      child:InkWell( 
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>
                DetailsPage(widget.item)));

        },
        child:Column(
          
          children: [
           
        //The image of the item
        Container(
          height: 170,
          width: 200,
          margin: EdgeInsets.all(10),

          decoration: BoxDecoration(

            image: DecorationImage(
              image: AssetImage(widget.item.image!),
              fit:BoxFit.contain,
              
              ),
              borderRadius: BorderRadius.circular(10),
          
          ),

        ),
        //make a distance
        const SizedBox(height: 10,),

        // The category

        Align(
          alignment: Alignment.bottomLeft,
          child:Row(
            children: [ 
          const SizedBox(width: 15,),
          Text(widget.item.category!,style:const TextStyle(color: Colors.white,fontSize: 20),),
          ],),
       
        ),
        const SizedBox(height: 5,),

        // The title

        Align(

          alignment: Alignment.bottomLeft,
          child:Row(

            children: [ 

          const SizedBox(width: 15,),
          Text(widget.item.title!,style:const TextStyle(color: Color.fromARGB(143, 255, 255, 255),fontSize: 15),),
          ],),
       
        ),
        const SizedBox(height: 10,),

      

         Align(
          alignment: Alignment.bottomLeft,
          child:Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [ 
         //The price 
          Row(
            children: [ 
            const SizedBox(width: 15,),
              const Text('\$ ',style: TextStyle(color: Color.fromRGBO(209, 120, 66, 1),fontSize: 20,fontWeight: FontWeight.bold),),
          Text(widget.item.price!,style:const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
          ],),

          //The + Button

          Container(
            width: 40,
            height: 40,
            margin:const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromRGBO(209, 120, 66, 1),
            ),
            child: TextButton(child: const Text('+',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),onPressed: (){},),
          ),
        
        
          ],),
       
        ),
        
      ]), 
      )
      
       



    );
  }
}