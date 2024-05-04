import 'package:flutter/material.dart';

import 'package:task4/third.dart';
class Second extends StatefulWidget {
  const Second({super.key});

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  bool show1 = false;
  bool show2 = false;
  //bool show3 = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(milliseconds: 400),(){setState(() {show1 = true;});});
    Future.delayed(const Duration(milliseconds: 600),(){setState(() {show2 = true;});});
    //Future.delayed(Duration(milliseconds: 1000),(){setState(() {show3 = true;});});

  }


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height ;

    return Scaffold(
      backgroundColor: Colors.grey[100],

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 45,),
            Padding(
              padding: const EdgeInsets.only(left: 16,right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(padding: const EdgeInsets.only(left: 7),height: 40,width: 40,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                      child: Center(child: IconButton(iconSize: 20,onPressed: (){Navigator.of(context).pop();}, icon: Icon(Icons.arrow_back_ios,color: Colors.grey[400],)))),
                  Container(height: 40,width: 40,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(height: 5,width: 5,decoration: BoxDecoration(color: Colors.grey[500],shape: BoxShape.circle),),
                          Container(height: 5,width: 5,decoration: BoxDecoration(color: Colors.grey[500],shape: BoxShape.circle),),
                          Container(height: 5,width: 5,decoration: BoxDecoration(color: Colors.grey[500],shape: BoxShape.circle),),

                        ],)),
                ],
              ),


            ),
            SizedBox(height: height*0.035,),



            Padding(
              padding:  const EdgeInsets.only(left: 20,right: 15),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 1000),
                    opacity: show1? 1 : 0,
                    child: Container(
                      padding: const EdgeInsets.only(top: 3,right: 3,left: 5), height: 80,width: 80,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey.withOpacity(0.4))),
                      child: Image.asset("assets/workerindustrial.png",fit: BoxFit.cover,),),
                  ),
                  const SizedBox(width: 20,),

                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 1000),
                    opacity: show1? 1 : 0,

                    child: Container(width: MediaQuery.of(context).size.width*0.6,child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Glorious Shine",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w500 ),),
                        SizedBox(height: 2,),
                        Text("Repairing Service",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w500 ),),
                        SizedBox(height: 4,),

                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.amber,size: 17,),
                            SizedBox(width: 4,),
                            Icon(Icons.star,color: Colors.amber,size: 17,),
                            SizedBox(width: 4,),
                            Icon(Icons.star,color: Colors.amber,size: 17,),
                            SizedBox(width: 4,),
                            Icon(Icons.star,color: Colors.amber,size: 17,),
                            SizedBox(width: 4,),
                            Icon(Icons.star,color: Colors.amber,size: 17,),
                            SizedBox(width: 10,),
                            Text("5.0")

                          ],
                        )


                      ],
                    ),),
                  ),
                ],
              ),


            ),

            SizedBox(height: height*0.045,),

            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 20,),
                Text("Description",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500),textAlign: TextAlign.left,),

              ],
            ),

            SizedBox(height: height*0.03,),

            AnimatedPadding(
              duration: const Duration(milliseconds: 900),
              padding:  EdgeInsets.only(left: 20,right: 10,top: show1? 0 : 10),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                  " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                  "when an unknown printer took a galley of type and scrambled it to make a "
                  "type specimen book.",textAlign: TextAlign.left,style: TextStyle(color: Colors.grey[500]),),
            ),

            SizedBox(height: height*0.06,),

            SizedBox(
              height:30,
              width: double.infinity,
              child: AnimatedPadding(
                curve: Curves.fastLinearToSlowEaseIn,
                padding: EdgeInsets.only(left: show1? 20 : MediaQuery.of(context).size.width),
                duration: const Duration(milliseconds: 800),

                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1000),
                  opacity: show1?1:0,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildContainer("assets/star.png","High rating"),
                      buildContainer("assets/correcticon.png","Verified"),
                      buildContainer("assets/money.gif","Money saving"),
                      buildContainer("assets/star.png","High rating"),
                      buildContainer("assets/correcticon.png","Verified"),
                      buildContainer("assets/money.gif","Money saving"),
                    ],
                  ),
                ),
              )
            ),


            SizedBox(height: height*0.06,),

            const Row(
              children: [
                SizedBox(width: 20,),

                Text("Our Members",style: TextStyle(fontSize: 20,fontWeight:FontWeight .w500),textAlign: TextAlign.left,),
              ],
            ),

            const SizedBox(height: 30,),


            SizedBox(
                height:180,
                width: double.infinity,
                child: AnimatedPadding(
                  curve: Curves.fastLinearToSlowEaseIn,

                  padding: EdgeInsets.only(left: show2? 20 : MediaQuery.of(context).size.width),
                  duration: const Duration(milliseconds: 1000),

                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 1000),
                    opacity: show1?1:0,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [


                         buildPadding(image:"assets/man1.png",title:"William James"),
                         buildPadding(image:"assets/man2.png",title:"Lucas Naoh"),
                         buildPadding(image:"assets/man3.png",title:"Elijah Lucas"),

                      ],
                    ),
                  ),
                )
            ),

            const SizedBox(height: 100),



          ],
        ),
      ),
    );
  }

  Container buildContainer( String image,  String title) {
    return Container(height: 30,margin: const EdgeInsets.only(left: 10,right: 10),padding: const EdgeInsets.only(left: 10,right: 10),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15) ),
                child: Row(
                  children: [
                    Image.asset(image,height: 20,width: 20,),
                    const SizedBox(width: 5,),
                    Text(title)
                  ],
                ),);
  }




  Padding buildPadding({ required String image, required String title} ) {
    return Padding(
        padding: const EdgeInsets.all(12),
        child: RawMaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 6,
          fillColor: Colors.white,
          onPressed: () {
            Future.delayed(const Duration(milliseconds: 200),(){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return  Third(image,title);
              }));
            });
          },
          padding: EdgeInsets.only(left: 12,right: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4,top: 4,right: 4),
                child: Hero(
                  tag: image,
                  child: Image.asset(image,height: 75,width: 100,),
                  flightShuttleBuilder: (flightContext, animation, direction,
                      fromContext, toContext) {
                    return Image.asset(image,height: 75,width: 100,);
                  },
                ),

              ),
              Row(
                children: [
                  const SizedBox(width: 5,),
                  Text(title,style: const TextStyle(fontSize: 15,fontWeight:FontWeight.w500, ),textAlign: TextAlign.left,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 2,),
                  Icon(Icons.location_on_rounded,size: 15,color: Colors.grey[400],),
                  Text("Egypt",style: TextStyle(fontSize: 12,fontWeight:FontWeight.w300 ,color: Colors.grey[400]),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text("\$27/hour",style: TextStyle(fontSize: 12,fontWeight:FontWeight.w300, ),),
                    ),
                    Row(
                      children: [
                        Image.asset("assets/star.png",height: 10,width: 10,),
                        const SizedBox(width: 3,),
                        Text("4.7",style: TextStyle(fontSize: 9,fontWeight:FontWeight.w300 ,color: Colors.grey[400]),),
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),

        )


    );
  }


}








