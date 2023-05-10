import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tech_test/parallelogram.dart';
import 'package:tech_test/parallelogram_progress_bar.dart';
import 'package:tech_test/triangle_shape.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final sHeight = MediaQuery.of(context).size.height;
    final sWidth = MediaQuery.of(context).size.width;
    print(sHeight);
    print(sWidth);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 3, 42),
      body: Container(
        padding: EdgeInsets.only(
            left: sWidth * 0.0224609375,
            right: sWidth * 0.0224609375,
            bottom: sWidth * 0.0224609375,
            top: MediaQuery.of(context).padding.top + sWidth * 0.0224609375),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Container(
                    height: sHeight * 0.1,
                    margin: EdgeInsets.only(right: sWidth * 0.0146484375),
                    padding:
                        EdgeInsets.symmetric(vertical: sHeight * 0.00341796875),
                    decoration: BoxDecoration(
                      border: Border.all(
                          style: BorderStyle.solid,
                          color: const Color.fromARGB(255, 132, 132, 132)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: Image.asset('assets/images/drilllight.png'),
                        title: Text(
                          'DRILLIGHT',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: sHeight * 0.0398936170212766,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2),
                        ),
                        subtitle: Text(
                          'La performance de vos joueurs',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: sHeight * 0.0265957446808511,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 1),
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: sHeight * 0.1,
                    padding:
                        EdgeInsets.symmetric(vertical: sHeight * 0.00341796875),
                    decoration: BoxDecoration(
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: const Color.fromARGB(255, 132, 132, 132),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: Image.asset(
                          'assets/images/avatar.png',
                          color: Color.fromARGB(255, 101, 87, 108),
                        ),
                        title: Text(
                          'SCORE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: sWidth * 0.0126953125,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2),
                        ),
                        subtitle: Text(
                          '25',
                          style: TextStyle(
                              color: Color.fromARGB(255, 217, 238, 255),
                              fontSize: sWidth * 0.029296875,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                        trailing: Container(
                          margin: EdgeInsets.only(top: sWidth * 0.029296875),
                          width: sWidth * 0.0669921875,
                          height: sHeight * 0.009765625,
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              if (index == 0) {
                                return Container(
                                  height: sHeight * 0.009765625,
                                  width: sWidth * 0.01298828125,
                                  child: Parallelogram(true),
                                );
                              } else {
                                return Container(
                                  height: sHeight * 0.009765625,
                                  width: sWidth * 0.01298828125,
                                  child: Parallelogram(false),
                                );
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: sWidth * 0.01,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.only(right: sHeight * 0.02),
                    height: sHeight * 0.5984042553191489,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/footballer.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: sHeight * 0.5984042553191489,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: sWidth * 0.04,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 45, 54, 104),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: sWidth * 0.02),
                              child: Row(
                                children: [
                                  Text(
                                    'PERFORMANCE',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: sHeight * 0.0265957446808511,
                                        letterSpacing: 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: sHeight * 0.5984042553191489 - sWidth * 0.04,
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: sWidth * 0.00061,
                              crossAxisCount: 2,
                            ),
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              bool withProgress = false;
                              String image = '';
                              String label = '';
                              String score = '';
                              switch (index) {
                                case 0:
                                  image = 'assets/images/foot.png';
                                  label = 'Pied';
                                  score = '25';
                                  break;
                                case 1:
                                  image = 'assets/images/genoux.png';
                                  label = 'Genoux';
                                  score = '05';
                                  break;
                                case 2:
                                  image = 'assets/images/head.png';
                                  label = 'Tete';
                                  score = '10';
                                  break;
                                default:
                                  image = 'assets/images/speed.png';
                                  label = 'Vitesse';
                                  withProgress = true;
                                  break;
                              }
                              return Container(
                                padding: EdgeInsets.only(
                                    left: sWidth * 0.005, top: sWidth * 0.005),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 45, 54, 104),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      image,
                                      height: sWidth * 0.06,
                                      color: Color.fromARGB(255, 217, 238, 255),
                                    ),
                                    Text(
                                      label,
                                      style: TextStyle(
                                          color: Colors.grey.shade400,
                                          fontWeight: FontWeight.w400,
                                          fontSize: sWidth * 0.02,
                                          letterSpacing: 1),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    withProgress
                                        ? Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                    top: sWidth * 0.029296875,
                                                  ),
                                                  height: sHeight * 0.009765625,
                                                  child: ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount: 4,
                                                    itemBuilder:
                                                        (context, index) {
                                                      if (index == 0) {
                                                        return Container(
                                                          height: sHeight *
                                                              0.009765625,
                                                          width: sWidth * 0.02,
                                                          child: Parallelogram(
                                                              true),
                                                        );
                                                      } else {
                                                        return Container(
                                                          height: sHeight *
                                                              0.009765625,
                                                          width: sWidth * 0.02,
                                                          child: Parallelogram(
                                                              false),
                                                        );
                                                      }
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        : Text(
                                            score,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: sWidth * 0.035,
                                                fontWeight: FontWeight.bold),
                                          )
                                  ],
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: sWidth * 0.01,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding:
                    EdgeInsets.only(left: sWidth * 0.01, top: sWidth * 0.005),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 45, 54, 104),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'RANKING',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: sHeight * 0.0265957446808511,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            height: sHeight * 0.0159574468085106,
                          ),
                          Text(
                            '65%',
                            style: TextStyle(
                                color: Color.fromARGB(255, 217, 238, 255),
                                fontSize: sHeight * 0.0398936170212766,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Flexible(
                      flex: 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: sWidth * 0.057, right: sWidth * 0.065),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '10%',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 217, 238, 255),
                                          fontSize:
                                              sHeight * 0.0265957446808511,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TriangleShape(Colors.pink.shade100)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '30%',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 217, 238, 255),
                                          fontSize:
                                              sHeight * 0.0265957446808511,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TriangleShape(Colors.pink.shade100)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '50%',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 217, 238, 255),
                                          fontSize:
                                              sHeight * 0.0265957446808511,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TriangleShape(Colors.pink.shade100)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '70%',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 217, 238, 255),
                                          fontSize:
                                              sHeight * 0.0265957446808511,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TriangleShape(
                                        Color.fromARGB(255, 58, 58, 58))
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '90%',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 217, 238, 255),
                                          fontSize:
                                              sHeight * 0.0265957446808511,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TriangleShape(
                                        Color.fromARGB(255, 58, 58, 58))
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 20,
                            width: double.infinity,
                            child: ParallelogramProgressBar(
                              progress: 0.65,
                            ),
                          ),
                        ],
                      ),
                    )
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
