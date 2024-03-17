import 'package:coffee_shop/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

int currentIndex = -1;

List<Map<String, String>> type = [
  {'Name1': "With Chocolate", 'Orders': '1500rs'},
  {'Name1': "With Low Fat Milk", 'Orders': '150rs'},
  {'Name1': "With Low Fat Milk", 'Orders': '299rs'},
  {'Name1': "With Low Fat Milk", 'Orders': '50k'}
];
//mixin Name1 {}

List<Map<String, dynamic>> imagesList = [
  {'image1': "assets/coffeeCapucino_1.jpg", 'name': 'Cappuccino', 'index': '0'},
  {'image1': "assets/coffee2.png", 'name': 'Cappuccino'},
  {'image1': "assets/coffeeCapucino_1.jpg", 'name': 'Cappuccino'},
  {
    'image1': "assets/coffee2.png",
    'name': 'Cappuccino',
  }
];
mixin image1 {}

List<Map<String, String>> coldbrew1 = [
  {'image2': "assets/coldbrew_assets/ColdBrew1.jpg", 'name1': 'coldBrew'},
  {'image2': "assets/coldbrew_assets/ColdBrew2jpg.jpeg", 'name1': 'coldBrew'},
  {'image2': "assets/coldbrew_assets/ColdBrew3.jpg", 'name1': 'coldBrew'},
  {
    'image2': "assets/coldbrew_assets/ColdBrew4.jpg",
    'name1': 'coldBrew',
  }
];
mixin image2 {}
List<Map<String, dynamic>> coldBrew2 = [
  {'Name2': "With Chocolate", 'Orders2': '1500rs'},
  {'Name2': "With Low Fat Milk", 'Orders2': '150rs'},
  {'Name2': "with Extra Milk", 'Orders2': '299rs'},
  {'Name2': "With Low Fat Milk with Chocolate", 'Orders2': '50k'}
];
mixin Name2 {}

List<Map<String, String>> Espresso1 = [
  {'image3': "assets/Espresso/Espresso1.webp", 'name1': 'Espresso'},
  {'image3': "assets/Espresso/Espresso2.jpg", 'name1': 'Espresso'},
  {'image3': "assets/Espresso/Espresso3.webp", 'name1': 'Espresso'},
  {
    'image3': "assets/Espresso/Espresso4.jpeg",
    'name1': 'Espresso',
  },
  {
    'image3': "assets/Espresso/Espresso5.jpeg",
    'name1': 'Espresso',
  }
];
mixin image3 {}
List<Map<String, dynamic>> Espresso2 = [
  {'Name3': "With Chocolate", 'Orders2': '1500rs'},
  {'Name3': "With Low Fat Milk", 'Orders2': '150rs'},
  {'Name3': "with Extra Milk", 'Orders2': '299rs'},
  {'Name3': "With Low Fat Milk with Chocolate", 'Orders2': '50k'}
];
mixin Name3 {}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  //================================= TAB CONTROLLER ====================================
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.brown),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.notifications_active_outlined),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Good morning, Aditya",
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: const Color.fromRGBO(0, 0, 0, 1)),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(top: 4),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                prefixIcon: Icon(Icons.search_rounded,
                    color: Color.fromRGBO(166, 166, 170, 1), weight: 19),
              ),
            ),
            const SizedBox(height: 10),
            Text("Categories",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: const Color.fromRGBO(1, 1, 1, 1))),
            const SizedBox(height: 10),
            DefaultTabController(
              length: 3,
              child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  isScrollable: false,
                  unselectedLabelColor: const Color.fromRGBO(1, 1, 1, 1),
                  labelColor: Colors.black,
                  indicatorPadding: const EdgeInsets.only(top: 10, bottom: 10),
                  indicator: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromRGBO(132, 96, 70, 1)),
                  controller: _tabController,
                  tabs: [
                    Tab(
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/Cappuccino.png",
                            color: Colors.white,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Cappuccino",
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              //color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/Cold Brew.png",
                            color: Colors.white,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Cold Brew",
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              //color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/Expresso.png",
                            color: Colors.white,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Expresso",
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              //color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: const [
                CappucinoCoffee(),
                ColdBrewCoffee(),
                Espresso(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

//========================= CappucinoCoffee Class ===============================

class ColdBrewCoffee extends StatefulWidget {
  const ColdBrewCoffee({super.key});

  @override
  State<ColdBrewCoffee> createState() => _ColdBrewCoffeeState();
}

class _ColdBrewCoffeeState extends State<ColdBrewCoffee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: const HorizontalListViewBuilderForColBrew(),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Special Offer",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  "assets/fire.png",
                  height: 40,
                  width: 40,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const AddToCartColdBrew()));
            },
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(23))),
              elevation: 10,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 150,
                      width: 170,
                      child: Image.asset(
                        fit: BoxFit.contain,
                        "assets/specialOffer.png",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 140,
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: 30,
                            width: 80,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: Colors.brown),
                            child: const Row(
                              children: [
                                Spacer(
                                  flex: 1,
                                ),
                                Text(
                                  "Limited",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(
                                  flex: 1,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            height: 100,
                            width: 150,
                            child: const Text(
                              "Buy 1 get 1 free if you buy with Gopay",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

//========================= ColdBrewCoffee Class ===============================

class CappucinoCoffee extends StatefulWidget {
  const CappucinoCoffee({super.key});

  @override
  State<CappucinoCoffee> createState() => _CappucinoCoffeeState();
}

class _CappucinoCoffeeState extends State<CappucinoCoffee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: HorizontalListViewBuilder(),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Special Offer",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  "assets/fire.png",
                  height: 40,
                  width: 40,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => AddToCart()));
            },
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(23))),
              elevation: 10,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 150,
                      width: 170,
                      child: Image.asset(
                        fit: BoxFit.contain,
                        "assets/specialOffer.png",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 140,
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: 30,
                            width: 80,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: Colors.brown),
                            child: const Row(
                              children: [
                                Spacer(
                                  flex: 1,
                                ),
                                Text(
                                  "Limited",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(
                                  flex: 1,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            height: 100,
                            width: 150,
                            child: const Text(
                              "Buy 1 get 1 free if you buy with Gopay",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

//========================= Expresso Class ===============================

class Espresso extends StatefulWidget {
  const Espresso({super.key});

  @override
  State<Espresso> createState() => _EspressoState();
}

class _EspressoState extends State<Espresso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: HorizontalListViewBuilderEspresso(),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Special Offer",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  "assets/fire.png",
                  height: 40,
                  width: 40,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(23))),
              elevation: 10,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 150,
                      width: 170,
                      child: Image.asset(
                        fit: BoxFit.contain,
                        "assets/specialOffer.png",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 140,
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: 30,
                            width: 80,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: Colors.brown),
                            child: const Row(
                              children: [
                                Spacer(
                                  flex: 1,
                                ),
                                Text(
                                  "Limited",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(
                                  flex: 1,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            height: 100,
                            width: 150,
                            child: const Text(
                              "Buy 1 get 1 free if you buy with Gopay",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class HorizontalListViewBuilder extends StatefulWidget {
  const HorizontalListViewBuilder({super.key});

  @override
  State<HorizontalListViewBuilder> createState() =>
      _HorizontalListViewBuilderState();
}

//class for cappuccino
class _HorizontalListViewBuilderState extends State<HorizontalListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagesList.length,
        itemBuilder: (BuildContext context, int index) {
          currentIndex = index;
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
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8.0),
                            height: 130,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        imagesList[index]['image1']!),
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
                                imagesList[index]['name']!,
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
                                type[index]['Name1']!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10),
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
                                type[index]['Orders']!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 19),
                              ),
                              const Spacer(
                                flex: 8,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              AddToCart()));
                                },
                                child: Container(
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    color: Colors.brown,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        AddToCart()));
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
      ),
    );
  }
}
//class for Coldbrew

class HorizontalListViewBuilderForColBrew extends StatefulWidget {
  const HorizontalListViewBuilderForColBrew({super.key});

  @override
  State<HorizontalListViewBuilderForColBrew> createState() =>
      _HorizontalListViewBuilderForColBrewState();
}

class _HorizontalListViewBuilderForColBrewState
    extends State<HorizontalListViewBuilderForColBrew> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: coldBrew2.length,
        itemBuilder: (BuildContext context, int index) {
          currentIndex = index;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  height: 260,
                  width: 225,
                  child: Card(
                    color: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    elevation: 10,
                    child: Container(
                      // color: Colors.white,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            height: 130,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image:
                                        AssetImage(coldbrew1[index]['image2']!),
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
                                        "5.0",
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
                                coldbrew1[index]['name1']!,
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
                                coldBrew2[index]['Name2']!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10),
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
                                coldBrew2[index]['Orders2']!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 19),
                              ),
                              const Spacer(
                                flex: 8,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    color: Colors.brown,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (BuildContext
                                                        context) =>
                                                    const AddToCartColdBrew()));
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
      ),
    );
  }
}

//Class For Espresso
class HorizontalListViewBuilderEspresso extends StatefulWidget {
  const HorizontalListViewBuilderEspresso({super.key});

  @override
  State<HorizontalListViewBuilderEspresso> createState() =>
      _HorizontalListViewBuilderEspressoState();
}

class _HorizontalListViewBuilderEspressoState
    extends State<HorizontalListViewBuilderEspresso> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Espresso2.length,
        itemBuilder: (BuildContext context, int index) {
          currentIndex = index;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  height: 260,
                  width: 225,
                  child: Card(
                    color: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    elevation: 10,
                    child: Container(
                      // color: Colors.white,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            height: 130,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image:
                                        AssetImage(Espresso1[index]['image3']!),
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
                                        "5.0",
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
                                Espresso1[index]['name1']!,
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
                                Espresso2[index]['Name3']!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10),
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
                                Espresso2[index]['Orders2']!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 19),
                              ),
                              const Spacer(
                                flex: 8,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const AddToCartEspresso()));
                                },
                                child: Container(
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    color: Colors.brown,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (BuildContext
                                                        context) =>
                                                    const AddToCartEspresso()));
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
      ),
    );
  }
}
