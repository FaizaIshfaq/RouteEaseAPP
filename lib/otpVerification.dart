import 'package:flutter/material.dart';
import 'package:route_ease/resetPassword.dart';
import 'package:route_ease/GetStarted.dart';
import 'package:route_ease/login.dart';
class otpVerification extends StatelessWidget {
  const otpVerification({Key? key}) : super(key: key);

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
                      child: Image.asset('assets/images/otp.png'),
                    ),
                  ),
                  Container(
                    width: 180,
                    margin: const EdgeInsets.fromLTRB(23, 5, 0, 10),
                    child: const Text("OTP Verification",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF252C3D),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20,0,50,10),
                    child: Text("Enter OTP Sent to you at 2020cs****@uet.edu.pk",
                      style: TextStyle(
                        color: Color(0xFF252C3D),
                      ),),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children:[ Container(
                           alignment: Alignment.center,
                            height: 50,
                            width: 280,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Container(
                                 width:50,
                                 child: const TextField(
                                   maxLength: 1,
                                   textAlign: TextAlign.center,
                                   decoration: InputDecoration(
                                     counterText: '',
                                     border: UnderlineInputBorder(
                                       borderSide: BorderSide(color: Colors.black),
                                       // Change the border color here
                                     ),
                                   ),
                                   keyboardType: TextInputType.number,
                                 ),
                               ),
                               Container(
                                 width:50,
                                 child: const TextField(
                                   maxLength: 1,
                                   textAlign: TextAlign.center,
                                   decoration: InputDecoration(
                                     counterText: '',
                                     border: UnderlineInputBorder(
                                       borderSide: BorderSide(color: Colors.black), // Change the border color here
                                     ),
                                   ),
                                   keyboardType: TextInputType.number,
                                 ),
                               ),
                               Container(
                                 width:50,
                                 child: const TextField(
                                   maxLength: 1,
                                   textAlign: TextAlign.center,
                                   decoration: InputDecoration(
                                     counterText: '',
                                     border: UnderlineInputBorder(
                                       borderSide: BorderSide(color: Colors.black), // Change the border color here
                                     ),
                                   ),
                                   keyboardType: TextInputType.number,
                                 ),
                               ),
                               Container(
                                 width:50,
                                 child: const TextField(
                                   maxLength: 1,
                                   textAlign: TextAlign.center,
                                   decoration: InputDecoration(
                                     counterText: '',
                                     border: UnderlineInputBorder(
                                       borderSide: BorderSide(color: Colors.black), // Change the border color here
                                     ),
                                   ),
                                   keyboardType: TextInputType.number,
                                 ),
                               ),
                             ],
                           ),// Set the desired height
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40,15,0,15),
                            child: RichText(
                              textAlign: TextAlign.start,
                                text: const TextSpan(
                                  text: 'Don\'t receive OTP? ',
                                  style: TextStyle(
                                    color: Color(0xFF252C3D),
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Resend OTP',
                                      style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF252C3D)),
                                    ),
                                   ],
                                ),
                              ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Login()),
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
                            "Verify & Proceed",
                            style: TextStyle( fontSize: 16),
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
