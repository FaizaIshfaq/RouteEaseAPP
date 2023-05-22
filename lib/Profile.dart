import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        height: 500,
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background_image.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 110,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                  ),
                  Icon(
                    Icons.account_circle,
                    color: Colors.grey.shade300,
                    size: 120,
                  ),
                  Positioned(
                    bottom: 10,
                    right: 20,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Color(0xFF252C3D),
                      child: Icon(
                        Icons.photo_camera,
                        color: Colors.white,
                        size: 13,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Faiza Ishfaq',
                style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, color: Color(0xFF252C3D)),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 30, 20,0),
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                width: 300,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes the position of the shadow
                    ),
                  ],
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Username",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                      padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                      width: 270,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      child: Text("Faiza Ishfaq",style: TextStyle(color: Colors.grey.shade900),),
                    ),
                    Text("Email",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                      padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                      width: 270,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      child: Text("2020cs***@student.uet.edu.pk",style: TextStyle(color: Colors.grey.shade900),),
                    ),
                    Text("Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                      padding: EdgeInsets.fromLTRB(10, 8, 0, 5),
                      width: 270,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      child: Text("********",style: TextStyle(color: Colors.grey.shade900),),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 100,
                          child: ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              backgroundColor: Color(0xFF252C3D),
                            ),
                            child: Text("Logout"),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
