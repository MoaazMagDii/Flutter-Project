import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pro1/screens/Product_ScreenGl1.dart';
import 'package:pro1/screens/Product_ScreenGl2.dart';
import 'package:pro1/screens/Product_ScreenGl3.dart';
import 'package:pro1/screens/Product_ScreenGl4.dart';

class ProductsWidgetGlove extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: SizedBox(
              width: 270,
              child: Stack(
                children: [
                  SizedBox(
                    height: 320,
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.flat,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                        color: Color(0xFFF3F6FD),
                        intensity: 1,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: InkWell(
                                onTap: () {
                                  if (index == 0) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (Index) =>
                                              ProductScreenGl1(),
                                        ));
                                  }
                                  if (index == 1) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (Index) =>
                                              ProductScreenGl2(),
                                        ));
                                  }
                                  if (index == 2) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (Index) =>
                                              ProductScreenGl3(),
                                        ));
                                  }
                                  if (index == 3) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (Index) =>
                                              ProductScreenGl4(),
                                        ));
                                  }
                                },
                                child: Image.asset(
                                  "assets/images/glove${index + 1}.png",
                                  height: 250,
                                  width: 250,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Text(
                              "Gloves",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "\$10",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Color(0xFF35324C),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                spreadRadius: 4,
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
