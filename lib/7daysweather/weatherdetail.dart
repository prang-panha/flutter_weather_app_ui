import 'package:flutter/material.dart';

class WeatherDetail extends StatefulWidget {
  const WeatherDetail({super.key});

  @override
  State<WeatherDetail> createState() => _WeatherDetailState();
}

class _WeatherDetailState extends State<WeatherDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff331c71),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 22.0,right: 22),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff5842A9),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,),
                      ),
                    ),
                  ),
                  const Text('7 Days',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xff5842A9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Image(image: AssetImage('assets/setting1.png'),)
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 320,
                width: 400,
                decoration: BoxDecoration(
                  color: const Color(0xff5842A9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  children: [
                    Stack(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Image(
                                  height: 150,
                                  image: AssetImage('assets/cloudy.png')),
                            ),
                            Column(
                              children: [
                                Text('Tomorrow',style: TextStyle(
                                  color: Colors.white,
                                ),),
                                SizedBox(
                                  height: 15,
                                ),
                                Text('Mostly Cloudly',style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),),

                              ],
                            ),

                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 100.0,left: 70),
                          child: Text('19°',style: TextStyle(
                            color: Colors.white,
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 140.0,left: 150),
                          child: Text('/ 15°',style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 22,left: 13),
                          child: Column(
                            children: [
                              Image(
                                  height: 30,
                                  image: AssetImage('assets/umbrella.png')),
                              Text('30°',style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),),
                              Text('Precipitation',style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 22,left: 13),
                          child: Column(
                            children: [
                              Image(
                                  height: 30,
                                  image: AssetImage('assets/drop.png')),
                              Text('25°',style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),),
                              Text('Humidity',style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 22,right: 13),
                          child: Column(
                            children: [
                              Image(
                                  height: 30,
                                  image: AssetImage('assets/wind.png')),
                              Text('9km/h',style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),),
                              Text('Wind Speed',style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Monday', style: TextStyle(
                    color: Colors.white,
                  ),),
                  Row(
                    children: [
                      Image(
                        height: 40,
                          image: AssetImage('assets/cloud.png')),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Windy', style: TextStyle(
                        color: Colors.grey,
                      ),)
                    ],
                  ),
                  Text('+22°', style: TextStyle(
                    color: Colors.white,
                  ),),
                  Text('+18°', style: TextStyle(
                    color: Colors.white,
                  ),),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Tuesday', style: TextStyle(
                    color: Colors.white,
                  ),),
                  Row(
                    children: [
                      Image(
                          height: 40,
                          image: AssetImage('assets/cloud.png')),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Windy', style: TextStyle(
                        color: Colors.grey,
                      ),)
                    ],
                  ),
                  Text('+22°', style: TextStyle(
                    color: Colors.white,
                  ),),
                  Text('+18°', style: TextStyle(
                    color: Colors.white,
                  ),),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Wednesday', style: TextStyle(
                    color: Colors.white,
                  ),),
                  Row(
                    children: [
                      Image(
                          height: 40,
                          image: AssetImage('assets/wind.png')),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Storm', style: TextStyle(
                        color: Colors.grey,
                      ),)
                    ],
                  ),
                  Text('+20°', style: TextStyle(
                    color: Colors.white,
                  ),),
                  Text('+18°', style: TextStyle(
                    color: Colors.white,
                  ),),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Thursday', style: TextStyle(
                    color: Colors.white,
                  ),),
                  Row(
                    children: [
                      Image(
                          height: 40,
                          image: AssetImage('assets/rain.png')),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Rainny', style: TextStyle(
                        color: Colors.grey,
                      ),)
                    ],
                  ),
                  Text('+20°', style: TextStyle(
                    color: Colors.white,
                  ),),
                  Text('+15°', style: TextStyle(
                    color: Colors.white,
                  ),),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Friday', style: TextStyle(
                    color: Colors.white,
                  ),),
                  Row(
                    children: [
                      Image(
                          height: 40,
                          image: AssetImage('assets/cloud.png')),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Windy', style: TextStyle(
                        color: Colors.grey,
                      ),)
                    ],
                  ),
                  Text('+22°', style: TextStyle(
                    color: Colors.white,
                  ),),
                  Text('+18°', style: TextStyle(
                    color: Colors.white,
                  ),),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Saturday', style: TextStyle(
                    color: Colors.white,
                  ),),
                  Row(
                    children: [
                      Image(
                          height: 40,
                          image: AssetImage('assets/cloud.png')),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Windy', style: TextStyle(
                        color: Colors.grey,
                      ),)
                    ],
                  ),
                  Text('+22°', style: TextStyle(
                    color: Colors.white,
                  ),),
                  Text('+18°', style: TextStyle(
                    color: Colors.white,
                  ),),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sunday', style: TextStyle(
                    color: Colors.white,
                  ),),
                  Row(
                    children: [
                      Image(
                          height: 40,
                          image: AssetImage('assets/rain.png')),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Rainny', style: TextStyle(
                        color: Colors.grey,
                      ),)
                    ],
                  ),
                  Text('+20°', style: TextStyle(
                    color: Colors.white,
                  ),),
                  Text('+18°', style: TextStyle(
                    color: Colors.white,
                  ),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
