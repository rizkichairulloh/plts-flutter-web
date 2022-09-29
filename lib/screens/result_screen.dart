import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plts/utilities/constants.dart';
import 'package:plts/utilities/responsive.dart';
import 'package:plts/utilities/typography.dart';
import 'package:plts/widgets/primary_button.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
              width: Get.width,
              height: Get.height,
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Kesimpulan", style: kTextHeader1,),
                  Text("Rekomendasi & Harga - as PDF", style: kTextBody,),
                  SizedBox(
                    width: Responsive.isWeb(context) ? Get.width / 3 : Get.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 45,
                          width: Responsive.isWeb(context) ? 200 : 150,
                          child: primaryButton(
                              colorText: kColorSky,
                              color: kColorWhite,
                              colorBorder: kColorSky,
                              border: true,
                              radius: 16,
                              label: "Copy",
                              isActive: true,
                              onTap: () {

                              }
                          ),
                        ),
                        SizedBox(
                          height: 45,
                          width: Responsive.isWeb(context) ? 200 : 150,
                          child: primaryButton(
                              colorText: kColorWhite,
                              color: kColorSky,
                              radius: 16,
                              label: "Kirim Email",
                              isActive: true,
                              onTap: () {

                              }
                          ),
                        ),
                      ],
                    ) ,
                  )
                ],
              ),
            )
        )
    );
  }
}
