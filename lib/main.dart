import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:iconsax/iconsax.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
void main()
{
  runApp(app());
}
class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        fontFamily: 'Crimson',

      ),

    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color c=Color.fromARGB(255, 36, 36, 35);
  Color c2=Color.fromARGB(255, 51, 53, 51);
  Color fon=Color.fromARGB(255, 255, 255, 255);
  Color pro1=Color.fromARGB(255, 37, 161, 142);
  Color pro2=Color.fromARGB(255, 85, 214, 190);
  Color reds=Color.fromARGB(255, 191, 19, 62);

  Color bn=Color.fromARGB(255, 137, 0, 179);
  Color ss=Color.fromARGB(255, 224, 182, 43);

  CountDownController _controller = CountDownController();
  @override
  Widget build(BuildContext context) {
Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: c,
      //appBar: AppBar(title: Text('Healthy',style: TextStyle(fontSize: 40),),,elevation: 0,backgroundColor: c,),
      body: ListView(
        children: [
          ListTile(
            title: Text('Healthy',style: TextStyle(fontSize: 40,color: fon),),
            subtitle: Row(
              children: [
                Icon(Iconsax.sun_15,color: Colors.amberAccent,),
                Text('helwam 30  32',style: TextStyle(fontSize: 20,color: fon),)
              ],

            ),
            trailing: IconButton(onPressed: (){},icon: Icon(Iconsax.watch_status,color: pro1, size: 30,),)
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 20,bottom: 20),

                child: Container(
                  padding: EdgeInsets.all(8),
                  width: size.width/2,

                  decoration: BoxDecoration(
                    color: c2,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(

                    children: [
                      Row(
                        children: [
                          Icon(Icons.speed,color: fon,size: 30,),
                          Text('Steps',style: TextStyle(fontSize: 30,color:fon ),)
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 50,horizontal: 10),
                        child: CircularPercentIndicator(
                          radius: 90.0,
                          lineWidth: 10.0,
                          percent: 0.5,
                          animationDuration: 10,

                          backgroundColor: pro1,
                          center: new Text("50%",style: TextStyle(fontSize: 50,color: pro1),),
                          progressColor: pro2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 5,bottom: 10),
                    child: Container(
                      width: size.width/2.4,
                      decoration: BoxDecoration(
                        color: c2,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.fire_extinguisher,color: Colors.red,size: 40,),
                              Text('Calorise',style: TextStyle(fontSize: 30,color: fon),)
                            ],
                          ),
                          Text('0.0',style: TextStyle(fontSize: 20,color: fon),)
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 0,left: 5,bottom: 10),
                    child: Container(
                      width: size.width/2.4,
                      decoration: BoxDecoration(
                          color: c2,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(Iconsax.location,color: Colors.blueAccent,size: 40,),
                              Text('Destnace',style: TextStyle(fontSize: 30,color: fon),)
                            ],
                          ),
                          Text('0.0',style: TextStyle(fontSize: 20,color: fon),)
                        ],
                      ),
                    ),
                  ),



                  Padding(
                    padding: const EdgeInsets.only(top: 0,left: 5,bottom: 10),
                    child: Container(
                      width: size.width/2.4,
                      decoration: BoxDecoration(
                          color: c2,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset('icons/goal.png',scale: 1.7,),
                              Text('Destnace',style: TextStyle(fontSize: 30,color: fon),)
                            ],
                          ),
                          Text('0.0',style: TextStyle(fontSize: 20,color: fon),)
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),












          Padding(padding: EdgeInsets.all(15),
          child: Container(
            decoration: BoxDecoration(
              color: c2
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  leading: Icon(Iconsax.heart5,color: reds,size: 30,),
                  title: Text('Heart Rate',style: TextStyle(fontSize: 30,color: fon),),
                  trailing: Text('08_07',style: TextStyle(fontSize: 20,color: fon),),
                ),
                Center(child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: reds,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),bottomRight: Radius.circular(20))
                  ),
                  child: Text('96 Times/Min',style: TextStyle(fontSize: 20),),



                ),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [

                    Container(
                      width: size.width/5,
                      height: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                        color: reds
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: size.width/5,
                      height: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(0),bottomLeft: Radius.circular(0)),
                          color: reds
                      ),

                    ),

                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: size.width/5,
                      height: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(0),bottomLeft: Radius.circular(0)),
                          color: reds
                      ),

                    ),


                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: size.width/5,
                      height: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                          color: reds
                      ),

                    ),

                  ],),
                ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(' sting heart rate is 60-100/min',style: TextStyle(fontSize: 22,color: fon,),)
                   ],
                 )
               ) ,

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(child: Row(

                    children: [
                      TextButton(onPressed: (){}, child: Text('Go And See',style: TextStyle(fontSize: 22,color: fon,),),),
                      Icon(Icons.arrow_forward,color: fon,size: 22,)
                    ],
                  )),
                ) ,


              ],
            ),
          ),

          ),



















          Padding(padding: EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                  color: c2
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    leading: Icon(Iconsax.moon5,color: bn,size: 30,),
                    title: Text('Sleep',style: TextStyle(fontSize: 30,color: fon),),
                    trailing: Text('07_29',style: TextStyle(fontSize: 20,color: fon),),
                  ),
                  Center(child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: bn,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),bottomRight: Radius.circular(20))
                    ),
                    child: Text('9h53m',style: TextStyle(fontSize: 20),),



                  ),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [

                      Container(
                        width: size.width/5,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                            color: bn
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: size.width/5,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0),bottomLeft: Radius.circular(0)),
                            color: bn
                        ),

                      ),

                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: size.width/5,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0),bottomLeft: Radius.circular(0)),
                            color: bn
                        ),

                      ),


                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: size.width/5,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                            color: bn
                        ),

                      ),

                    ],),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('p at nite).',style: TextStyle(fontSize: 22,color: fon,),),
                          Text('Reference value:6',style: TextStyle(fontSize: 22,color: fon,),)

                        ],
                      )
                  ) ,

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(child: Row(

                      children: [
                        Text('Go And See',style: TextStyle(fontSize: 22,color: fon,),),
                        Icon(Icons.arrow_forward,color: fon,size: 22,)
                      ],
                    )),
                  ) ,


                ],
              ),
            ),

          ),









































          Padding(padding: EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                  color: c2
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    leading: Icon(Icons.sports_handball,color: pro2,size: 30,),
                    title: Text('Sport',style: TextStyle(fontSize: 30,color: fon),),
                    trailing: Text('_',style: TextStyle(fontSize: 20,color: fon),),
                  ),
                  Center(child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: pro2,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),bottomRight: Radius.circular(20))
                    ),
                    child: Text('--km',style: TextStyle(fontSize: 20),),



                  ),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [

                      Container(
                        width: size.width/5,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                            color: pro2
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: size.width/5,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0),bottomLeft: Radius.circular(0)),
                            color: pro2
                        ),

                      ),

                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: size.width/5,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0),bottomLeft: Radius.circular(0)),
                            color: pro2
                        ),

                      ),


                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: size.width/5,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                            color: pro2
                        ),

                      ),

                    ],),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('day.',style: TextStyle(fontSize: 22,color: fon,),),
                          Text('Come on! Another goal w',style: TextStyle(fontSize: 22,color: fon,),)

                        ],
                      )
                  ) ,

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(child: Row(

                      children: [
                        Text('Go And See',style: TextStyle(fontSize: 22,color: fon,),),
                        Icon(Icons.arrow_forward,color: fon,size: 22,)
                      ],
                    )),
                  ) ,
































                ],
              ),
            ),

          ),


          Padding(padding: EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                  color: c2
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    leading: Icon(Icons.sports_handball,color: pro2,size: 30,),
                    title: Text('Sport',style: TextStyle(fontSize: 30,color: fon),),
                    trailing: Text('_',style: TextStyle(fontSize: 20,color: fon),),
                  ),
                  Center(child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: pro2,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),bottomRight: Radius.circular(20))
                    ),
                    child: Text('--km',style: TextStyle(fontSize: 20),),



                  ),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [

                      Container(
                        width: size.width/5,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                            color: pro2
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: size.width/5,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0),bottomLeft: Radius.circular(0)),
                            color: pro2
                        ),

                      ),

                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: size.width/5,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0),bottomLeft: Radius.circular(0)),
                            color: pro2
                        ),

                      ),


                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: size.width/5,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                            color: pro2
                        ),

                      ),

                    ],),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('day.',style: TextStyle(fontSize: 22,color: fon,),),
                          Text('Come on! Another goal w',style: TextStyle(fontSize: 22,color: fon,),)

                        ],
                      )
                  ) ,

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(child: Row(

                      children: [
                        Text('Go And See',style: TextStyle(fontSize: 22,color: fon,),),
                        Icon(Icons.arrow_forward,color: fon,size: 22,)
                      ],
                    )),
                  ) ,


                ],
              ),
            ),

          ),
        ],
      ),


      bottomNavigationBar:  CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: pro2,
        strokeColor: Color(0x30040307),
        unSelectedColor: fon,
        backgroundColor: c2,
        items: [
          CustomNavigationBarItem(
            icon: Icon(Iconsax.heart5),
            title: Text("Healthy",style: TextStyle(color: fon),),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.tv_rounded),
            title: Text("Data"),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.sports_martial_arts),
            title: Text("Sport"),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("My"),
          ),

        ],

      ),

    );
  }

}


