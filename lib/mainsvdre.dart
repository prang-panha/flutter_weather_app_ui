import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '7daysweather/weatherdetail.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5842A9),
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(left: 18,right: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xff331c71),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Image(
                            color: Colors.white,
                            image: AssetImage('assets/menu1.png'),),
                        ),
                      ),
                      const Text('Phnom Penh',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xff331c71),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(Icons.refresh,color: Colors.white,)
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Mostly Sunny',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const Stack(
                  children: [
                    Text(
                      '25°',
                      style: TextStyle(
                        fontSize: 150,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 50, top: 70),
                        child: Image(
                            height: 150,
                            image: AssetImage(
                                'assets/cloudy.png')),
                      ),
                    )
                  ],
                ),
                const Text(
                  'Saturday,30 November | 1:00 PM',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                    color: const Color(0xff331c71),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 18,left: 8),
                        child: Column(
                          children: [
                            Image(
                                height: 40,
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
                        padding: EdgeInsets.only(top: 18),
                        child: Column(
                          children: [
                            Image(
                                height: 40,
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
                        padding: EdgeInsets.only(top: 18,right: 8),
                        child: Column(
                          children: [
                            Image(
                                height: 40,
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
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Today',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 17,
                    ),),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WeatherDetail()));
                      },
                      child: const Text('7-Day Forecasts',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17,
                      ),),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 120,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                            color: const Color(0xff331c71),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 18,right: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: Text('6 PM',style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                              ),
                              Image(
                                  height: 40,
                                  image: AssetImage('assets/wind.png')),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8),
                                child: Center(
                                  child: Text('26°',style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 120,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: const Color(0xff331c71),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 18,right: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: Text('7 PM',style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                              ),
                              Image(
                                  height: 40,
                                  image: AssetImage('assets/rain.png')),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8),
                                child: Center(
                                  child: Text('25°',style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 120,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: const Color(0xff331c71),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 18,right: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: Text('8 PM',style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                              ),
                              Image(
                                  height: 40,
                                  image: AssetImage('assets/rain.png')),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8),
                                child: Center(
                                  child: Text('25°',style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 120,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: const Color(0xff331c71),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 18,right: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: Text('9 PM',style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                              ),
                              Image(
                                  height: 40,
                                  image: AssetImage('assets/rain and thunder.png')),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8),
                                child: Center(
                                  child: Text('24°',style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 120,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: const Color(0xff331c71),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 18,right: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: Text('10 PM',style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                              ),
                              Image(
                                  height: 40,
                                  image: AssetImage('assets/cloud1.png')),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8),
                                child: Center(
                                  child: Text('28°',style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 120,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: const Color(0xff331c71),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 18,right: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: Text('11 PM',style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                              ),
                              Image(
                                  height: 40,
                                  image: AssetImage('assets/cloud1.png')),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8),
                                child: Center(
                                  child: Text('28°',style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 120,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: const Color(0xff331c71),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 18,right: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: Text('12 AM',style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                              ),
                              Image(
                                  height: 40,
                                  image: AssetImage('assets/wind.png')),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8),
                                child: Center(
                                  child: Text('25°',style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Other Cities',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 17,
                    ),),
                    Text('+',style: TextStyle(

                      color: Colors.white,
                      fontSize: 30,
                    ),),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row (
                    children: [
                      Container(
                        height: 70,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: const Color(0xff331c71),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 8.0,right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(
                                  height: 40,
                                  image: AssetImage('assets/wind.png')),
                              Padding(
                                padding: EdgeInsets.only(top: 17),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Text('Seoul',style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),),
                                    ),
                                    Text('snowy',style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),),
                                  ],
                                ),
                              ),
                              Center(
                                child: Text('9°',style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,),
                      Container(
                        height: 70,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: const Color(0xff331c71),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 8.0,right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(
                                  height: 40,
                                  image: AssetImage('assets/rain.png')),
                              Padding(
                                padding: EdgeInsets.only(top: 17),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Text('Hong Kong',style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),),
                                    ),
                                    Text('rainny',style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),),
                                  ],
                                ),
                              ),
                              Center(
                                child: Text('20°',style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,),
                      Container(
                        height: 70,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: const Color(0xff331c71),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 8.0,right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(
                                  height: 40,
                                  image: AssetImage('assets/wind.png')),
                              Padding(
                                padding: EdgeInsets.only(top: 17),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Text('Tokyo',style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),),
                                    ),
                                    Text('wind',style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),),
                                  ],
                                ),
                              ),
                              Center(
                                child: Text('20°',style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
