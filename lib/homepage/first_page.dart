import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:lab/homepage/second_page.dart';

var a = [
  'SOLUTIONS',
  '''HIGH-END INDUSTRIAL
  MOBILITY SOLUTION,
  SMART PARTNER
  IN INDUSTRIAL FIELD!''',
  'Retailers need automated retail solution to reduce their lost sales, and increase their revenue. By managing the store in real time, they can have accurate figures regarding their inventory or store operation.',
  'Learn about'
];

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Get.to(SecondPage());
                },
                child: Text("MobileBase"),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.to(SecondPage());
                },
                child: Text("Company"),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.to(SecondPage());
                },
                child: Text("Solution"),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.to(SecondPage());
                },
                child: Text("Product"),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.red,
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 400.0,
                  child: new Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return new Image.network(
                          // "http://via.placeholder.com/350x150",
                          "https://picsum.photos/800/600",
                          fit: BoxFit.fill,
                        );
                      },
                      itemCount: 3,
                      pagination: new SwiperPagination(),
                      control: new SwiperControl(),
                      autoplay: true,
                      autoplayDelay: 1000),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.amber,
                  child: Image.asset('img/1.jpg'),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.amber,
                  child: Image.asset(
                    'img/2.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Row 에서 Container width, height 없이 균등 배분 할려면
                // IntrinsicHeight, Expanded 두개를 사용해야 한다.
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.asset(
                          'img/3.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              for (var i in a) Text(i)
                              // Text(a[0]),
                              // Text(a[1]),
                              // Text(a[2]),
                              // Text(a[3]),
                            ],
                          ),
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.amber,
                  height: 1000,
                ),
                TextButton(
                  onPressed: () {
                    Get.to(SecondPage());
                  },
                  child: Text("Second Page"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
