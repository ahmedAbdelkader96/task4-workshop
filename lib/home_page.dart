import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lottie/lottie.dart';
import 'package:task4/second.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showCard = false ;
  bool showImage = false ;
  bool showSearchBar = false ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(milliseconds: 500),(){setState(() {showCard = true ;});});
    Future.delayed(const Duration(milliseconds: 1000),(){setState(() {showSearchBar = true ;});});
    Future.delayed(const Duration(milliseconds: 1500),(){setState(() {showImage = true ;});});

  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Scaffold(
          backgroundColor: Colors.grey[100],
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(height: 60,),
                AnimatedOpacity(
                  opacity: showCard? 1 : 0,
                  duration: const Duration(milliseconds: 500),

                  child: AnimatedPadding(
                    duration: const Duration(milliseconds: 500),

                    padding:  EdgeInsets.only(left: showCard? 20 :30,right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Good Morning!",style: TextStyle(fontSize: 23,color: Colors.black,fontWeight:FontWeight.w600 ),),
                        Container(height: 40,width: 40,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                            child: Icon(Icons.notification_important,color: Colors.grey[400],))
                      ],
                    ),
                  ),

                ),



                AnimatedOpacity(
                  opacity: showCard? 1 : 0,
                  duration: const Duration(milliseconds: 500),

                  child: AnimatedPadding(
                    duration: const Duration(milliseconds: 500),

                    padding:  EdgeInsets.only(left: showCard? 20 :30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Icon(Icons.location_on,color: Colors.grey[400],),
                        const SizedBox(width: 5,),

                        const Text("London",style: TextStyle(fontSize: 17,color: Colors.black),),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                    height: 170,

                    width: double.infinity,
                    child: Stack(
                      children: [
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 500),
                          left: showCard? MediaQuery.of(context).size.width*0.06 :MediaQuery.of(context).size.width,
                          child: SizedBox(
                            height: 170,
                            width: MediaQuery.of(context).size.width*0.85,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  height: 130,
                                  width: MediaQuery.of(context).size.width*0.85,
                                  decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20)),
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Align(alignment: Alignment.centerLeft,child:Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      const Text("20 % OFF",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight:FontWeight.w600 ),),
                                      const SizedBox(height: 18,),
                                      Container(height: 25,width: 100,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(6)),
                                        child: const Center(child:Text("Hire Now",style: TextStyle(fontSize: 15,color: Colors.blue,fontWeight:FontWeight.w400 ),)),),
                                      const SizedBox(height: 18,),


                                    ],
                                  ), ),

                                ),
                                Positioned(top: 60,child: AnimatedScale(scale: showImage? 1 : 0, duration: const Duration(milliseconds: 700),child : Lottie.asset("assets/repair.json",height: 60,width: 60,animate: true))),
                                AnimatedPositioned( curve: Curves.fastOutSlowIn , duration: const Duration(milliseconds: 1000),right: 0,bottom: showImage? 0 :-160,child: Image.asset("assets/workerindustrial.png",fit: BoxFit.cover,height: 160,width: 120,))

                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                ),



                SizedBox(height: MediaQuery.of(context).size.height*0.05,),


                SizedBox(
                    height: 50,

                    width: double.infinity,
                    child: Stack(
                      children: [
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 600),
                          left: showSearchBar? MediaQuery.of(context).size.width*0.06 :MediaQuery.of(context).size.width,
                          child: SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 60,
                                    width: MediaQuery.of(context).size.width*0.85,
                                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                                    child: const Row(
                                      //direction: Axis.horizontal,
                                      children: [
                                        SizedBox(width: 10,),

                                        Icon(Icons.search,color: Colors.grey,),
                                        SizedBox(width: 5,),
                                        Text("Search",style: TextStyle(color: Colors.grey,),)
                                      ],
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),



                Row(
                  children: [

                    const SizedBox(width: 15,),
                    AnimatedOpacity(duration: const Duration(seconds: 3),opacity: showSearchBar? 1 : 0,child: const Text("Categories :",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.w600 ),))
                  ],
                ),
                const SizedBox(height:20,),



                AnimationLimiter(
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.only(left: 16,right: 16),
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    cacheExtent: 30,
                    //childAspectRatio: 0.1,

                    children: List.generate(
                      6,
                          (int index) {
                        return AnimationConfiguration.staggeredGrid(

                          position: index,
                          duration: const Duration(milliseconds: 1500),
                          columnCount: 3,
                          child: ScaleAnimation(
                            child: FadeInAnimation(
                              child: buildCard(data[index] , title[index] ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  ),


                const SizedBox(height: 100,),


              ],
            ),
          ),
        ),
        Container(margin: const EdgeInsets.only(bottom: 10),height: 60,width: MediaQuery.of(context).size.width*0.85,
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.home,color: Colors.blue,),
              Icon(Icons.home,color: Colors.grey[400],),
              Icon(Icons.home,color: Colors.grey[400],),

            ],
          ),),
      ],
    );
  }



  RawMaterialButton buildCard(String image , String title) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 8,
      fillColor: Colors.white,
      onPressed: () {
        Future.delayed(const Duration(milliseconds: 200),(){
          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Second()));
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Lottie.asset(image,height: 40,width: 40,animate: false),
          Text(title,style: const TextStyle(fontWeight:FontWeight.w500 ),),
        ],
      )
    )
    ;
  }
}


List data = ["assets/repair1.json","assets/repair2.json","assets/repair3.json","assets/repair4.json"
,"assets/repair5.json","assets/repair6.json"];
List title = ["Repair","Wheel","Spark","Oil","Winch","Tester"];