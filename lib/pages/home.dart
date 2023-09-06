import 'package:firstapp/components/card.dart';
import 'package:firstapp/components/label.dart';
import 'package:firstapp/components/paymentCard.dart';
import 'package:firstapp/components/profileInline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 48),
        padding: const EdgeInsets.all(36),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SplitProfileInline(
                      fullName: "Bekhruz",
                      avatarUrl:
                          "https://media.licdn.com/dms/image/D4D03AQGD8P2fChPkgA/profile-displayphoto-shrink_800_800/0/1688673635542?e=1699488000&v=beta&t=n8plWEtDwpt8Oc6c5YqUjS-Vr8u-N46W3gHyqzlxIy0"),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/icons/ui/notification.svg",
                    width: 32,
                    colorFilter:
                        const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset(
                    "assets/icons/ui/settings.svg",
                    width: 32,
                    colorFilter:
                        const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  ),
                ],
              ),
              const SizedBox(
                height: 64,
              ),
              UnconstrainedBox(
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: CarouselSlider(
                      items: [
                        Container(
                          margin: EdgeInsets.all(12),
                          child: SplitPaymentCard(pan: "**** 6777", expirationDate: "12/28")),
                        Container(
                          margin: EdgeInsets.all(12),
                          child: SplitPaymentCard(pan: "**** 1234", expirationDate: "07/24"))
                      ], options: CarouselOptions(enableInfiniteScroll: false)),
                  
                ),
              )
              
            ]),
      ),
      // bottomSheet: BottomAppBar(
      //     child: BottomNavigationBar(
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   fixedColor: Colors.transparent,
      //   unselectedFontSize: 14,
      //   selectedFontSize: 16,
      //   landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      //   items: [
      //     BottomNavigationBarItem(icon: Text("Главная"), label: "1"),
      //     BottomNavigationBarItem(icon: Text("Платежи"), label: "2"),
      //     BottomNavigationBarItem(icon: Text("Переводы"), label: "3")
      //   ],
      // )),
    );
  }
}
