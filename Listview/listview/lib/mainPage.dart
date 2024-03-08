import 'package:flutter/material.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> itemList = [
    "https://i2.wp.com/akm-img-a-in.tosshub.com/indiatoday/images/story/202004/msdhoni11.jpeg?strip=all",
    "https://i2.wp.com/akm-img-a-in.tosshub.com/indiatoday/images/story/202004/msdhoni11.jpeg?strip=all",
    "https://i2.wp.com/akm-img-a-in.tosshub.com/indiatoday/images/story/202004/msdhoni11.jpeg?strip=all",
    "https://i2.wp.com/akm-img-a-in.tosshub.com/indiatoday/images/story/202004/msdhoni11.jpeg?strip=all",
    "https://i2.wp.com/akm-img-a-in.tosshub.com/indiatoday/images/story/202004/msdhoni11.jpeg?strip=all",
    "https://i2.wp.com/akm-img-a-in.tosshub.com/indiatoday/images/story/202004/msdhoni11.jpeg?strip=all",
    "https://i2.wp.com/akm-img-a-in.tosshub.com/indiatoday/images/story/202004/msdhoni11.jpeg?strip=all",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        centerTitle:true,
        title: const Text("Listview"),
      ),
      // body:ListView(
      //   children:[
      //     Container(
      //       height:400,
      //       width:double.infinity,
      //       margin: const EdgeInsets.all(15),
      //       child:Image.network("https://singhiv.files.wordpress.com/2019/06/2s5e7891.jpg"),
      //     ),
      //     Container(
      //       height:400,
      //       width:double.infinity,
      //       margin: const EdgeInsets.all(15),
      //       child:Image.network("https://img.etimg.com/thumb/msid-101306861,width-480,height-360,imgsize-101548,resizemode-75/sehwag-reveals.jpg"),
      //     ),
      //     Container(
      //       height:400,
      //       width:double.infinity,
      //       margin: const EdgeInsets.all(15),
      //       child:Image.network("https://i2.wp.com/akm-img-a-in.tosshub.com/indiatoday/images/story/202004/msdhoni11.jpeg?strip=all"),
      //     ),
      //     Container(
      //       height:400,
      //       width:double.infinity,
      //       margin: const EdgeInsets.all(15),
      //       child:Image.network("https://i.pinimg.com/736x/3e/b1/c2/3eb1c2ed04cc648248e013c7728d81ce.jpg"),
      //     ),
      //     Container(
      //       height:300,
      //       width:double.infinity,
      //       margin: const EdgeInsets.all(15),
      //       child:Image.network("https://www.thestatesman.com/wp-content/uploads/2018/10/MS-Dhoni-6.jpg"),
      //     ),
      //     Container(
      //       height:300,
      //       width:double.infinity,
      //       margin: const EdgeInsets.all(10),
      //       child:Image.network("https://news24online.com/wp-content/uploads/2023/04/MS-Dhoni-will-lead-CSK-for-200th-time-in-IPL.jpg"),
      //     ),
      //   ],
      // ),
      body: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 220,
            width: 220,
            margin: const EdgeInsets.all(10),
            child: ListView.separated(
              itemCount: itemList.length,
              itemBuilder: (BuildContext context, int index){
                  return Image.network(itemList[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Text("------------------------");
              },
        
              ),
          );
          
        }
      ),
    );
  }
}