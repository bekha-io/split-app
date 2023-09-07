import 'package:carousel_slider/carousel_slider.dart';
import 'package:firstapp/components/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Center(
          child: CarouselSlider(
            carouselController: CarouselControllerImpl(),
            options: CarouselOptions(autoPlay: true, height: double.infinity),
            items: [
              Container(
                margin: EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 200,
                      child: Image.asset(
                        "assets/3d/man-to-woman-shows-crypto.png",
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    const Text(
                      "Моментальные переводы",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Совершайте моментальные переводы в кошельке DCity по номеру телефона или по карте, даже если у получателя еще нет кошелька",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                      overflow: TextOverflow.clip,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 200,
                      child: Image.asset(
                        "assets/3d/virtual-card.png",
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    const Text(
                      "Виртуальная карта",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Совершайте офлайн и онлайн покупки с помощью виртуальной карты Корти милли",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                      overflow: TextOverflow.clip,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/3d/money-pig.png",
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    const Text(
                      "Онлайн сбережения",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Храните деньги в прложении DCity и получайте проценты по вкладам ежедневно",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          padding: EdgeInsets.all(24),
          child: SplitButton(
            text: "Начать",
            type: ButtonType.primary,
          )),
    );
  }
}
