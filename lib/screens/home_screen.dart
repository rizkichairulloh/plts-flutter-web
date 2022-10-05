import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plts/controllers/home_controller.dart';
import 'package:plts/utilities/constants.dart';
import 'package:plts/utilities/responsive.dart';
import 'package:plts/utilities/typography.dart';
import 'package:plts/widgets/primary_button.dart';
import 'package:plts/widgets/widget_input.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.put(HomeController());
  String? selectedValue;
  String? selectedValue2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
              width: Get.width,
              padding: Responsive.isWeb(context) ? const EdgeInsets.all(0) : const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 50,),
                  Text("Anda Ingin Memasang PLTS", style: kTextHeader1, textAlign: TextAlign.center,),
                  const SizedBox(height: 22,),
                  formDropdownButton(
                      "Tipe",
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          hint: Text(
                            'Pilih tipe',
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                          items: controller.itemsTransaction.map((item) =>
                              DropdownMenuItem<String>(
                                value: item.title,
                                child: Text(
                                  item.title,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value as String;
                              String? se;
                              if (selectedValue == "Residential - Tipe Sambungan") {
                                selectedValue2 = se;
                                controller.itemsDefault = controller.itemsSambunganResidential;
                              } else if (selectedValue == "Komersial - Tipe Sambungan") {
                                selectedValue2 = se;
                                controller.itemsDefault = controller.itemsSambunganKomersial;
                              } else if (selectedValue == "Industri - Tipe Sambungan") {
                                selectedValue2 = se;
                                controller.itemsDefault = controller.itemsSambunganIndustri;
                              } else if (selectedValue == "Pemerintah - Tipe Sambungan") {
                                selectedValue2 = se;
                                controller.itemsDefault = controller.itemsSambunganPemerintah;
                              }
                            });
                          },
                          buttonHeight: 45,
                          buttonWidth: Responsive.isWeb(context) ? Get.width / 3 : Get.width,
                          itemHeight: 40,
                          iconSize: 16,
                          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                          buttonDecoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: kColorGrey2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          itemPadding: const EdgeInsets.only(left: 14, right: 14),
                          dropdownMaxHeight: 200,
                          dropdownWidth: Responsive.isWeb(context) ? Get.width / 3 : Get.width ,
                          dropdownPadding: null,
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          scrollbarRadius: const Radius.circular(8),
                          scrollbarAlwaysShow: true,
                          offset: const Offset(0, 0),
                        ),
                      ),
                  ),
                  SizedBox(height: paddingDefault,),
                  formDropdownButton(
                      "Kapasitas Sambungan PLN Existing",
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        hint: Text(
                          'Pilih kapasitas',
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).hintColor,
                          ),
                        ),
                        items: controller.itemsDefault.map((item) =>
                            DropdownMenuItem<String>(
                              value: item.title,
                              child: Text(
                                item.title,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                            .toList(),
                        value: selectedValue2,
                        onChanged: (value) {
                          setState(() {
                            selectedValue2 = value as String;
                            for (int i = 0; i < controller.itemsDefault.length; i++) {
                              if (selectedValue2 == controller.itemsDefault[i].title) {
                                controller.nameFile.value = controller.itemsDefault[i].nameFile;
                              }
                            }
                          });
                        },
                        buttonHeight: 45,
                        buttonWidth: Responsive.isWeb(context) ? Get.width / 3 : Get.width,
                        itemHeight: 40,
                        iconSize: 16,
                        buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                        buttonDecoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: kColorGrey2),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        itemPadding: const EdgeInsets.only(left: 14, right: 14),
                        dropdownMaxHeight: 200,
                        dropdownWidth: Responsive.isWeb(context) ? Get.width / 3 : Get.width,
                        dropdownPadding: null,
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        scrollbarRadius: const Radius.circular(8),
                        scrollbarAlwaysShow: true,
                        offset: const Offset(0, 0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 22,),
                  SizedBox(
                    width: Responsive.isWeb(context) ? Get.width / 3 : 100,
                    height: 45,
                    child: primaryButton(
                        colorText: kColorWhite,
                        color: kColorSky,
                        radius: 16,
                        label: "Hitung",
                        isActive: true,
                        onTap: () {
                          if (selectedValue2 != null || selectedValue != null) {
                            Get.toNamed("/hasil");
                          } else {
                            Get.snackbar("Error", "Inputan belum selesai");
                          }
                        }
                    ),
                  )
                ],
              ),
            )
        )
    );
  }
}

