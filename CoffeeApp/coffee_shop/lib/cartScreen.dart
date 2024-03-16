import 'package:coffee_shop/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List CartList = [];



class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {

  @override
  Widget build(BuildContext context) {
    
      return Column(
          children: [
            Container(
              height: 600,
              width: double.infinity,
              child: CartListView(),
              
            )
          ],
    );
  }
}

class CartListView extends StatefulWidget {
  const CartListView({super.key});

  @override
  State<CartListView> createState() => _CartListViewState();
}

class _CartListViewState extends State<CartListView> {
  @override
  Widget build(BuildContext context) {
     return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: CartList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 260,
                  width: 225,
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(33)),
                    ),
                    //color: Colors.white,
                    elevation: 10,
                    child: Container(
                     // color: Colors.white,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8.0),
                            height: 130,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image:
                                        AssetImage(imagesList[currentIndex]['image1']!),
                                    fit: BoxFit.cover)),
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Spacer(),
                                  Row(
                                    children: [
                                      const Icon(Icons.star,
                                          color: Colors.yellow),
                                      Text(
                                        "4.9",
                                        style: GoogleFonts.lato(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: Colors.yellow),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const Spacer(
                                flex: 1,
                              ),
                              Text(
                                imagesList[currentIndex]['name']!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 23),
                              ),
                              const Spacer(
                                flex: 13,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Spacer(
                                flex: 1,
                              ),
                              Text(
                                type[currentIndex]['Name1']!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal, fontSize: 10),
                              ),
                              const Spacer(
                                flex: 12,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Spacer(
                                flex: 1,
                              ),
                              Text(
                                type[currentIndex]['Orders']!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal, fontSize: 19),
                              ),
                              const Spacer(
                                flex: 8,
                              ),
                              GestureDetector(
                                onTap: () {
                                 // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AddToCart()));
                                },
                                child: Container(
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    color: Colors.brown,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                      onPressed: () {
                                        //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AddToCart()));
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        size: 20,
                                        color: Colors.white,
                                      )),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
  }
}
