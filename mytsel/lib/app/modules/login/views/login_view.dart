import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          Image.asset(
            "assets/logo/logo-login.png",
          ),
          Text(
            "silahkan masukkan nomor Telkomsel kamu\n",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "Nomo HP",
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "cth. 0813xxxxxxxx"),
          ),
          CheckboxListTile(
            value: controller.checkC.value,
            onChanged: (value) => controller.checkC.toggle(),
            controlAffinity: ListTileControlAffinity.leading,
            title: RichText(
              text: TextSpan(
                  text: "saya menyetujui\t",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("klik syarat");
                          },
                        text: "syarat",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                        children: [
                          TextSpan(
                              text: ",",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print("klik ketentuan");
                                    },
                                  text: "ketentuan",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                )
                              ])
                        ])
                  ]),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "MASUK",
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              backgroundColor: Colors.grey[300],
            ),
          ),
          Center(
            child: Text("atau masuk dengan"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/fb.png",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Facebook",
                      style: TextStyle(color: Color(0xFF747DBC)),
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/Google.png",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Google",
                      style: TextStyle(color: Color(0xFF747DBC)),
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
