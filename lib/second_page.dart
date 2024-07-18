import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});



  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1746365508.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3907606727.

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'VAZIFALAR',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(7),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          'https://www.pngall.com/wp-content/uploads/13/Nike-Shoes-PNG-Cutout.png',
                          height: 160,
                        ),
                        Text(
                          'Nike',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox()
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(7),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          'https://m.media-amazon.com/images/I/610ILkK-gtS._AC_UY1000_.jpg',
                          height: 160,
                        ),
                        Text(
                          'Converse',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox()
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(7),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          'https://d2j6dbq0eux0bg.cloudfront.net/images/50694034/2123456995.jpg',
                          height: 160,
                        ),
                        Text(
                          'Sport ',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox()
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(7),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          'https://underarmour.scene7.com/is/image/Underarmour/3025007-102_DEFAULT?rp=standard-30pad%7CpdpMainDesktop&scl=1&fmt=jpg&qlt=85&resMode=sharp2&cache=on%2Con&bgc=f0f0f0&wid=566&hei=708&size=536%2C688',
                          height: 160,
                        ),
                        Text(
                          'Nike',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox()
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(7),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          'https://cdn.shopify.com/s/files/1/0607/6678/1671/products/SRM-02V_SRM-02V_BLU-R.BLU_2.jpg?v=1670325414',
                          height: 160,
                        ),
                        Text(
                          'New Balance',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox()
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(7),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          'https://underarmour.scene7.com/is/image/Underarmour/3025013-001_DEFAULT?rp=standard-30pad%7CpdpMainDesktop&scl=1&fmt=jpg&qlt=85&resMode=sharp2&cache=on%2Con&bgc=f0f0f0&wid=566&hei=708&size=536%2C688',
                          height: 160,
                        ),
                        Text(
                          'Nike',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
