import 'package:dani/crop_monitoring_ui/pets_and_diseases.dart';
import 'package:flutter/material.dart';

import '../home.dart';
import 'cultivation_tips.dart';

class MaizeAndWheatPage extends StatefulWidget {
  const MaizeAndWheatPage({Key? key}) : super(key: key);

  @override
  State<MaizeAndWheatPage> createState() => _MaizeAndWheatPageState();
}

class _MaizeAndWheatPageState extends State<MaizeAndWheatPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Crop Monitoring',
              style: TextStyle(
                color: Colors.cyan,
                letterSpacing: 2,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
          body: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: 4.0,
                    ),
                    Container(
                      color: Colors.blueGrey,
                      height: 40.0,
                      width: double.infinity,
                      child: const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: TabBar(
                          indicator: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(60),
                            ),
                            color: Color.fromARGB(255, 122, 255, 34),
                          ),
                          tabs: [
                            /// A tab for maize icon or maybe image
                            Tab(
                              child: Text(
                                'Maize',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                            // A tab for wheat icon or maybe wheat image
                            Tab(
                              child: Text(
                                'Wheat',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 180.0,
                      width: MediaQuery.of(context).size.width / .7,
                      child: TabBarView(
                        children: [
                          /// A container for pests and diseases
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 0),
                            child: Container(
                              height: 100.0,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(70),
                                ),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 0),
                                      child: Container(
                                        width: 200,
                                        height: 200,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                          ),
                                        ),
                                        child: MaterialButton(
                                          onPressed: () {
                                            /** Pests and Diseases Container stuff */
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const PestsAndDiseasesPage(),
                                              ),
                                            );
                                          },
                                          child: const Text(
                                            'Pests and Diseases ',
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 0),
                                      child: Container(
                                        height: 200,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                          ),
                                        ),
                                        child: MaterialButton(
                                          onPressed: () {
                                            /** Cultivation Tips Container stuff */
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const CultivationTips(),
                                              ),
                                            );
                                          },
                                          child: const Text(
                                            'Cultivation Tips',
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          /// A container for cultivation tips
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 0),
                            child: Container(
                              height: 100.0,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(70),
                                ),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 0),
                                      child: Container(
                                        width: 200,
                                        height: 200,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                          ),
                                        ),
                                        child: MaterialButton(
                                          onPressed: () {
                                            /** Pests and Diseases Container stuff */
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const PestsAndDiseasesPage(),
                                              ),
                                            );
                                          },
                                          child: const Text(
                                            'Pests and Diseases ',
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 0),
                                      child: Container(
                                        height: 200,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                          ),
                                        ),
                                        child: MaterialButton(
                                          onPressed: () {
                                            /** Cultivation Tips Container stuff */
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const CultivationTips(),
                                              ),
                                            );
                                          },
                                          child: const Text(
                                            'Cultivation Tips',
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Drop it here

                    const SizedBox(
                      //endd enddd
                      height: 20,
                    ),

                    //sdfdsgfdbvaggfgdf
                    const Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        child: Text(
                          'Heal your crop',
                          style: TextStyle(
                            backgroundColor: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 40,
                    ),
                    // container of heal crop+take a picture+ d/t icons therein
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                        shape: BoxShape.rectangle,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  /// Take a picture of the crop USING CAMERA
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Home(),
                                    ),
                                  );
                                },
                                // child: Image.asset(
                                //   'assets/see a diagnosis.png',
                                //   height: 5,
                                //   width: 5,
                                // ),

                                child: const Icon(
                                  Icons.camera_alt,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  shape: BoxShape.rectangle,
                                  color: Colors.white,
                                ),
                                // child: Image.asset(
                                //   'assets/next icon.png',
                                //   height: 5,
                                //   width: 5,
                                // ),

                                child: MaterialButton(
                                  onPressed: () {
                                    /// Take a picture of the crop USING CAMERA
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Home(),
                                      ),
                                    );
                                  },
                                  child: const Icon(
                                    Icons.camera_alt,
                                  ),
                                ),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  /// Take a picture of the crop USING CAMERA
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Home(),
                                    ),
                                  );
                                },
                                // child: Image.asset(
                                //   'assets/see a diagnosis.png',
                                //   height: 5,
                                //   width: 5,
                                // ),

                                child: const Icon(
                                  Icons.camera_alt,
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
                    Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                        shape: BoxShape.rectangle,
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          /// Take a picture of the crop USING CAMERA
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()));
                        },
                        child: const Text(
                          'Take a picture',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
