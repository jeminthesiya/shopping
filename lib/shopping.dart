import 'package:flutter/material.dart';

class shopping extends StatefulWidget {
  const shopping({Key? key}) : super(key: key);

  @override
  State<shopping> createState() => _shoppingState();
}

class _shoppingState extends State<shopping> {
  List ImageList = [
    "assets/images/shoes.png",
    "assets/images/t-shirt.jpg",
    "assets/images/girls-top.jpg",
    "assets/images/court.jpg",
    "assets/images/hoodi.jpg",
    "assets/images/jeans.jpg",
    "assets/images/sport.jpg",
    "assets/images/puma.jpg",
    "assets/images/teo-in0one.jpg",
    "assets/images/sweter.jpg",
    "assets/images/watch.jpg",
    "assets/images/shirt.jpg",
  ];

  List nameList = [
    "SHOES",
    "T-SHIRT",
    "TOP",
    "BLAZER",
    "HOODIE",
    "JEANS",
    "COMBO",
    "JACKET",
    "SHRUG",
    "HOT WEAR",
    "WATCH",
    "SHIRT"
  ];

  List PriceList = [
    "30.33",
    "52.00",
    "40.00",
    "99.99",
    "70.00",
    "72.30",
    "56.27",
    "60.90",
    "90.99",
    "45.90",
    "99.99",
    "25.33",
  ];

  List RatingList = [
    "5.0",
    "4.5",
    "4.2",
    "4.7",
    "4.3",
    "4.0",
    "4.1",
    "4.4",
    "4.9",
    "4.8",
    "4.2",
    "4.0",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent.shade100,
          centerTitle: true,
          title: Text(
            "SHOPPING GALLERY UI",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0.1,
                    0.5,
                  ],
                  colors: [
                    Colors.blue.shade200,
                    Colors.purple.shade200,
                  ],
                ),
              ),
            ),
            GridView.builder(
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) => product(nameList[index],
                  PriceList[index], ImageList[index], RatingList[index]),
              itemCount: nameList.length,
            ),
          ],
        ),
      ),
    );
  }

  Widget product(String Name, String Price, String image, String rate) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "${image}",
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 20,
                width: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${rate}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 8,
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Colors.black26,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "$Name",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "\$ $Price",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
