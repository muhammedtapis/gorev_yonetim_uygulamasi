import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gorev_yonetim_uygulamasi/IconContainer.dart';
import 'package:gorev_yonetim_uygulamasi/feed.dart';

class About1 extends StatelessWidget {
  const About1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF90A4AE),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(18, 50, 18, 40),
            margin: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>FeedPage()),);},
                        child: Icon(Icons.menu, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(20),
                          primary: Colors.transparent, // <-- Button color
                          onPrimary: Colors.red, // <-- Splash color
                        ),
                      ),

                      Icon(Icons.search ,size: 30),
                    ]
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 80,
                      margin: const EdgeInsets.only(left: 20,right: 20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("img/mami.jpeg"),
                        ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(right: 30),
                      child: Column(
                        children: [
                          Text("Muhammed Ali Tapış",style: TextStyle(fontSize: 16,color: Color(0xFF0d253e)),),
                          Text("Software Developer",style: TextStyle(fontSize: 18),)
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xFF18FFFF),
            ),
          ),

          Expanded(child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 18,right: 18),
              child:Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Görevlerim",style: TextStyle(fontSize: 30,color: Color(0xFF0d253e)),),
                      IconContainer(bgColor: Color(0xFF3d9398), width: 80, height: 80, size: 30, index: 0,borderColor: Colors.grey)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconContainer(bgColor: Color(0xFF795548), width: 80, height: 80, size: 30, index: 1,borderColor: Colors.grey),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Görevlerim",style: TextStyle(fontSize: 25,color: Color(0xFF0d253e)),),
                          Text("Bekleyen Görevler",style: TextStyle(fontSize: 20,color: Color(0xFFE0E0E0)),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconContainer(bgColor: Color(0xFFCDDC39), width: 80, height: 80, size: 30, index: 2,borderColor: Colors.grey),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mayıs Görevleri",style: TextStyle(fontSize: 25,color: Color(0xFF0d253e)),),
                          Text("Proje Toplantısı",style: TextStyle(fontSize: 20,color: Color(0xFFE0E0E0)),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconContainer(bgColor: Color(0xFF2196F3), width: 80, height: 80, size: 30, index: 3,borderColor: Colors.grey),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Konum",style: TextStyle(fontSize: 25,color: Color(0xFF0d253e)),),
                          Text("Müşteri Ziyaretleri",style: TextStyle(fontSize: 20,color: Color(0xFFE0E0E0)),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("Aktif Projeler",style: TextStyle(fontSize: 25,color: Color(0xFF0d253e)),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 180,
                        height: 220,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Color(0xFF3d9398)
                        ),
                        child:Column(
                          children: [
                            Padding(padding: const EdgeInsets.only(left: 10,right: 10,top: 50),
                                child: IconContainer(bgColor: Color(0xFF3d9393), borderColor: Colors.grey, width: 80, height: 80, size: 30, index: 4)
                            ),
                            SizedBox(height: 15,),
                            Text("Otomasyon Proj.",style: TextStyle(fontSize: 15,color: Colors.white)),
                            SizedBox(height: 10,),
                            Text("Fermuar Fabrikası",style: TextStyle(fontSize: 12,color: Colors.white)),
                          ],
                        ),
                      ),
                      Container(
                        width: 180,
                        height: 220,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Color(0xFF795548)
                        ),
                        child:Column(
                          children: [
                            Padding(padding: const EdgeInsets.only(left: 10,right: 10,top: 50),
                                child: IconContainer(bgColor: Color(0xFF795548), borderColor: Colors.grey, width: 80, height: 80, size: 30, index: 5)
                            ),
                            SizedBox(height: 15,),
                            Text("Tasarım",style: TextStyle(fontSize: 15,color: Colors.white)),
                            SizedBox(height: 10,),
                            Text("Mobil App Ön yüz",style: TextStyle(fontSize: 12,color: Colors.white)),
                          ],
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
