import 'package:flutter/material.dart';
import 'package:food_delivery/order.dart';

const kSubTextStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.normal,
  color: Color(0xff868686),
);
const kMainTextStyle = TextStyle(
    fontSize: 38, fontWeight: FontWeight.bold, color: Color(0xff40434B));

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdfdfdf),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //image
          Center(child: Image.asset('images/photo.png')),
          //sizedBox
          const SizedBox(height: 20),
          //container with text and button
          Container(
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            height: 370,
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 60),
                const Text('Order Your Favourite \n Japanese Food',
                    textAlign: TextAlign.center, style: kMainTextStyle),
                const SizedBox(height: 20),
                const Text(
                  'When you order, we\'ll hook you up with  \n exclusive coupons and special offers',
                  style: kSubTextStyle,
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: 90,
                  height: 90,
                  child: FloatingActionButton(
                    backgroundColor: const Color(0xff40434B),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Order(),
                          ));
                    },
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
