import 'package:coffee_shop/home_screen.dart';
import 'package:coffee_shop/login.dart';
import 'package:coffee_shop/taskbar/taskmain.dart';
import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagesList[currentIndex]['image1']!),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const TaskMain()));
                            // Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 33,
                          ))),
                  const Spacer(
                    flex: 9,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        imagesList[currentIndex]['name']!,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        type[currentIndex]['Name1']!,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                width: 390,
                // color: const Color.fromARGB(255, 176, 197, 208),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 231, 229, 226)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                        "assets/addtocart_assets/openmoji_roasted-coffee-bean.png"),
                    const SizedBox(
                      width: 7,
                    ),
                    const Text(
                      "Coffee",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text("|"),
                    const SizedBox(
                      width: 7,
                    ),
                    Image.asset(
                        "assets/addtocart_assets/emojione_chocolate-bar.png"),
                    const SizedBox(
                      width: 7,
                    ),
                    const Text(
                      "chocolate",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text("|"),
                    const SizedBox(
                      width: 7,
                    ),
                    const Text(
                      "Medium Roasted",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "About",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: double.infinity,
                child: const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(220, 50)),
                backgroundColor: MaterialStatePropertyAll(Colors.brown),
               
              ),
                onPressed: () {},
                child: const Text(
                  "Buy Now",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white
                  ),
                )),
          ),
              const SizedBox(height: 10,)
        ],
      ),
    );
  }
}

class ListviewModule extends StatefulWidget {
  const ListviewModule({super.key});

  @override
  State<ListviewModule> createState() => _ListviewModuleState();
}

class _ListviewModuleState extends State<ListviewModule> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: imagesList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagesList[index]['image1']!)),
              ),
            );
          }),
    );
  }
}
