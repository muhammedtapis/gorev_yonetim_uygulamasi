import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gorev_yonetim_uygulamasi/people_model.dart';


import 'about.dart';
import 'about1.dart';
import 'about2.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List <Person> persons =[
    Person(
      name: 'Muhammed Ali Tapış',
      img:  'img/mami.jpeg',
      job: 'Software Developer',
      clock: '12:50',
      page: About1()
    ),
    Person(
      name: 'Alex De Souza',
      img:  'img/alex.jpg',
      job: 'Footballer',
      clock: '19:10',
        page: About()
    ),
    Person(
      name: 'Samurai Jack',
      img:  'img/samuraijack.jpeg',
      job: 'Samurai',
      clock: '05:50',
        page: About2()
    )
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body :  new Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(18, 50, 18, 18),
              color: Color(0xFF90A4AE),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Anasayfa",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 36),),
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
                ],
              ),
            ),

            Expanded(child: ListView.builder(
              itemCount: persons.length,
              itemBuilder: (context, index) => InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>persons[index].page));
                },
                child : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25,vertical:10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage(persons[index].img),
                      ),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25,vertical:10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(persons[index].name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                            ),
                            Text(persons[index].job,style: TextStyle(fontSize: 15),
                            ),
                            Icon(Icons.access_time_outlined,size: 20),
                          ],
                        ),
                      ),
                      ),
                      Text(persons[index].clock)
                    ],
                  ),
                ),


              ),
            ),
            ),
          ],
        ),
    );
  }
}
