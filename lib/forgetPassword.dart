import 'package:flutter/material.dart';
import 'package:route_ease/resetPassword.dart';
import 'package:route_ease/GetStarted.dart';
import 'package:route_ease/login.dart';
class forgetPassword extends StatelessWidget {
  const forgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[

                  const SizedBox(
                    height: 30,
                  ),

                  Center(
                    child: Container(
                      width: 300,
                      height: 350,
                      child: Image.asset('assets/images/forgetPassword.png'),
                    ),
                  ),
                  Container(
                    width: 150,
                    margin: const EdgeInsets.fromLTRB(23, 20, 0, 10),
                    child: const Text("Forgot Password?",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF252C3D),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20,0,20,10),
                    child: Text("Don't worry it happens. Please enter your email address.",
                    style: TextStyle(
                      color: Color(0xFF252C3D),
                    ),),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [Padding(
                          padding: const EdgeInsets.fromLTRB(10,0,0,0),
                          child: IconButton(
                            alignment: Alignment.bottomCenter,
                            icon: const Icon(Icons.alternate_email,
                              color: Color(0xFFC2C4CC),),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                          SizedBox(
                            height: 25.0,
                            width: 280,// Set the desired height
                            child: Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Email',
                                  hintStyle: TextStyle(color: Color(0xFFC2C4CC)), // Change hint text color
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFFC2C4CC)), // Change border bottom color
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 200,
                        height: 30,
                      ),
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const resetPassword()),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF252C3D)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Set border radius
                              ),
                            ),
                          ),
                          child: const Text(
                            "Continue",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
