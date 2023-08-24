import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 72, horizontal: 32),
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                constraints: const BoxConstraints(maxWidth: 600),
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          ".split",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        CupertinoTextField(
                          placeholder: "Номер телефона",
                          placeholderStyle: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontWeight: FontWeight.w400),
                          cursorColor: Colors.black,
                          decoration: const BoxDecoration(
                            color: Color(0xF4F4F4),
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                          maxLength: 9,
                          prefix: Row(
                            children: [
                              Image.asset("./assets/icons/flags/tj.svg", width: 24),
                              Text(
                            "+992",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black.withOpacity(0.4),
                                fontWeight: FontWeight.w600),
                          ),
                            ],
                          ),
                          padding: const EdgeInsets.all(18),
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'e-Ukraine'),
                        )
                      ],
                    ))),
            Container(
              constraints: BoxConstraints.expand(width: 330, height: 55),
              child: CupertinoButton(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.black,
                child: const Text(
                  "Войти",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'e-Ukraine',
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                onPressed: () {},
              ),
            )
          ],
        ));
  }
}
