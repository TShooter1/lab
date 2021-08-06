import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:lab/homepage/second_page.dart';

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
