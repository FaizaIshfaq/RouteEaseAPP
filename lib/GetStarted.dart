import 'package:flutter/material.dart';
import 'package:route_ease/login.dart';
import 'package:route_ease/signUp.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width:double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15,50,0,0),
              child: IconButton(
              icon: const Icon(Icons.arrow_back,
                color: Colors.black,),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[

                const SizedBox(
                  height: 20,
                ),

                Center(
                  child: Container(
                    width: 300,
                    height: 350,
                    child: Image.asset('assets/images/GetStarted.png'),
                  ),
                ),
               const Padding(
                 padding: EdgeInsets.fromLTRB(0,40,0,20),
                 child: SizedBox(
                   width: 130,
                   height: 70,
                   child: Text("Find your University route here",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF252C3D),
                        fontWeight:FontWeight.normal,
                        fontSize: 18,),
                    ),
                 ),
               ),
                    Container(
                    width:270,
                    height: 70,
                    child: Center(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            bottom: 0,
                            right: 17,
                            child: Container(
                              width: 125,
                              height: 45,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 4, // Set the elevation value for the shadow effect
                                    shadowColor: Colors.grey,
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    )
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SignUp()),
                                  );
                                },
                                child: Text('Sign Up',style: TextStyle(color: Color(0xFF252C3D),fontSize: 15,),),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 17,
                            child: Container(
                              width: 125,
                              height: 45,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 4, // Set the elevation value for the shadow effect
                                    shadowColor: Colors.grey,
                                  backgroundColor: Color(0xFF252C3D),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    )
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Login()),
                                  );
                                },
                                child: Text('Login',style: TextStyle(fontSize: 15,),),
                              ),
                            ),
                          ),
                        ],
                      ),
                  ),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
