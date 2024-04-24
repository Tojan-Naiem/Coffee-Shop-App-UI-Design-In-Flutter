import 'package:coffee/home.dart';
import 'package:coffee/models/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
   DetailsPage(this.item,{super.key});
  Menu item;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(33, 35, 37, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(33, 35, 37, 1),
        iconTheme: IconThemeData(color: Colors.white),
      
      
        
        
      ),



body: SingleChildScrollView(
  child: Column(
    children: [
      Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.item.image!),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //The title

                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.item.category!,
                            style: const TextStyle(
                              color: Color.fromRGBO(213, 122, 67, 1),
                              fontSize: 30,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(height: 10),

                          //The star

                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.amber),
                              Text(
                                widget.item.rating!,
                                style: const TextStyle(
                                  color: Color.fromRGBO(33, 35, 37, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),

                          //The description

                          const Text(
                            'Description',
                            style: TextStyle(
                              color: Color.fromRGBO(33, 35, 37, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            widget.item.description!,
                            style: const TextStyle(
                              color: Color.fromRGBO(33, 35, 37, 0.8),
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                         
                         const SizedBox(height: 10),
                         const Text(
                            'Size',
                            style: TextStyle(
                              color: Color.fromRGBO(33, 35, 37, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                width: 120,
                                height: 40,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(33, 35, 37, 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text('Small', style: TextStyle(color: Colors.white)),
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 40,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(33, 35, 37, 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text('Medium', style: TextStyle(color: Colors.white)),
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(33, 35, 37, 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text('Large', style: TextStyle(color: Colors.white)),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(213, 122, 67, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Buy now',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  ),
),
    );
  }
}