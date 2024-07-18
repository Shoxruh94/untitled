import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[200],
        title: Container(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'What are you looking for',
              prefixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        actions: [
          SizedBox(
            width: 5,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: IconButton(
              icon: Icon(Icons.camera_alt),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.teal[100],
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(width: 5),
                  Text(
                    'Deliver to Tobey - Alhambra 91801',
                  ),
                ],
              ),
            ),
            Container(
              height: 260,
              child: PageView(
                onPageChanged: (int index) {
                  setState(() {
                    currenIndex = index;
                  });
                },
                children: [
                  itemIntro(
                    image: "assets/image/2.jpg",
                    color: Colors.red,
                  ),
                  itemIntro(
                    image: "assets/image/2.jpg",
                    color: Colors.blue,
                  ),
                  itemIntro(
                    image: "assets/image/2.jpg",
                    color: Colors.blue,
                  ),
                  itemIntro(
                    image: "assets/image/2.jpg",
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildIndecator(),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Popular Categories',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(6, (index) {
                        ShapeDecoration.fromBoxDecoration(BoxDecoration());
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.snowshoeing,
                                color: Colors.grey,
                              ),
                              SizedBox(height: 5),
                              Text('SnowShoesing'),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        'For You',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        'New Gatget',
                        style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 25,
                        ),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        'Best Selling',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        'Popular',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      )),
                ],
              ),
            ),
            Container(
              height: 300,
              color: Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: 200,
                    color: Colors.grey,
                    child: Image(
                      image: AssetImage('assets/image/3.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: 200,
                    color: Colors.grey,
                    child: Image(
                      image: AssetImage('assets/image/y.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: 200,
                    color: Colors.grey,
                    child: Image(
                      image: AssetImage('assets/image/c.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_home,
          animatedIconTheme: IconThemeData(size: 22),
          overlayColor: Colors.black,
          overlayOpacity: 0.6,
          onOpen: () => print('Opening Dial'),
          onClose: () => print('Dial Close'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shape: CircleBorder(),
          children: [
            SpeedDialChild(
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
                label: 'Camera',
                labelStyle: TextStyle(fontSize: 18),
                onTap: () => print('First Child')),
            SpeedDialChild(
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
                label: 'Search',
                labelStyle: TextStyle(fontSize: 18),
                onTap: () => print('Second Child')),
          ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More'),
        ],
      ),
    );
  }

  Widget itemIntro({image, title, description, color}) {
    return Container(
      padding: EdgeInsets.only(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
              height: 250,
              color: color,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ))
        ],
      ),
    );
  }

  Widget _indecator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 12,
      width: 12,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: isActive ? Colors.blue : Colors.grey),
    );
  }

  List<Widget> _buildIndecator() {
    List<Widget> indecators = [];
    for (int i = 0; i < 4; i++) {
      if (currenIndex == i) {
        indecators.add(_indecator(true));
      } else {
        indecators.add(_indecator(false));
      }
    }
    return indecators;
  }
}
