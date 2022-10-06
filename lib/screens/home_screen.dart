import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:plts/controllers/home_controller.dart';
import 'package:plts/utilities/constants.dart';
import 'package:plts/utilities/date_service.dart';
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
              padding: Responsive.isWeb(context) ? const EdgeInsets.all(0) : const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 22,),
                  SizedBox(
                      width: Responsive.isWeb(context) ? Get.width / 1.5 : Get.width,
                      child: Responsive.isWeb(context) ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/nex_logo.png", width: 100, height: 100,),
                          Text("Anda Ingin Memasang PLTS", style: kTextHeader1, textAlign: TextAlign.center,),
                          Image.asset("assets/images/petrogas_logo.png", width: 100, height: 100,),
                        ],
                      ) : Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("assets/images/nex_logo.png", width: 75, height: 75,),
                              Text("Anda Ingin", style: kTextHeader1, textAlign: TextAlign.center,),
                              Image.asset("assets/images/petrogas_logo.png", width: 75, height: 75,),
                            ],
                          ),
                          Text("Memasang PLTS", style: kTextHeader1, textAlign: TextAlign.center,),
                        ],
                      )
                  ),
                  SizedBox(height: paddingDefault,),
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
                        dropdownWidth: Responsive.isWeb(context) ? Get.width / 3 : Get.width - 50 ,
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
                  SizedBox(
                    width: Responsive.isWeb(context) ? Get.width / 3 : Get.width,
                    child: formDropdownButton(
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
                          dropdownWidth: Responsive.isWeb(context) ? Get.width / 3 : Get.width - 50,
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
                  ),
                  SizedBox(height: paddingDefault,),
                  SizedBox(
                      width: Responsive.isWeb(context) ? Get.width / 3 : Get.width,
                      child: Obx(() => formInput("Nama",
                          hint: 'Masukkan nama lengkap',
                          controller: controller.name.value,
                          autoValidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Nama tidak boleh kosong";
                            }

                            return null;
                          },
                      ),)
                  ),
                  SizedBox(height: paddingDefault,),
                  SizedBox(
                    width: Responsive.isWeb(context) ? Get.width / 3 : Get.width,
                    child: formInput("No Telepon",
                        hint: 'contoh : 08xxxxx',
                        controller: controller.noTelp.value,
                        autoValidateMode: AutovalidateMode.onUserInteraction,
                        maxLength: 15,
                        validator: (value) {
                          const pattern = r'^08[0-9]{8,}$';
                          RegExp regex =  RegExp(pattern);
                          if (value == null || value.isEmpty) {
                            return "No Telepon tidak boleh kosong";
                          } else if (!regex.hasMatch(value)) {
                            return "No Telepon harus diawali dengan angka 08";
                          }

                          return null;
                        },
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ]
                    ),
                  ),
                  SizedBox(
                    width: Responsive.isWeb(context) ? Get.width / 3 : Get.width,
                    child: formInput("Email",
                        hint: 'contoh : johndoe@gmail.com',
                        controller: controller.email.value,
                        autoValidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Email tidak boleh kosong";
                          } else if (isValidEmail(value) == false) {
                            return "Format email salah";
                          }

                          return null;
                        }
                    ),
                  ),
                  const SizedBox(height: 36,),
                  SizedBox(
                    width: Responsive.isWeb(context) ? Get.width / 3 : 150,
                    height: 45,
                    child: Obx(() => controller.isLoading.value != true ? primaryButton(
                        colorText: kColorWhite,
                        color: kColorSky,
                        radius: 16,
                        label: "Hitung",
                        isActive: true,
                        onTap: () {
                          if (selectedValue2 != null && selectedValue != null && controller.name.value.text.isNotEmpty && controller.noTelp.value.text.isNotEmpty && controller.email.value.text.isNotEmpty) {
                            // Get.toNamed("/hasil");
                            controller.postData(
                                time: DateService.getCurrentDate("dd-MM-yyyy hh:mm"),
                                name: controller.name.value.text,
                                noTelp: controller.noTelp.value.text,
                                email: controller.email.value.text,
                                tipe: selectedValue!,
                                kapasitas: selectedValue2!,
                                nameFile: controller.nameFile.value);
                          } else {
                            Get.snackbar(
                              "Error",
                              "Inputan belum selesai",
                              maxWidth: Responsive.isWeb(context) ? Get.width / 3 : Get.width / 2,
                              snackPosition: SnackPosition.BOTTOM,
                              margin: const EdgeInsets.only(bottom: 100),
                              colorText: Colors.red,
                            );
                          }
                        }
                    ) : const Center(
                      child: CircularProgressIndicator(),
                    ))
                  )
                ],
              ),
            ),
        )
    );
  }

  bool isValidEmail(String em) {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(em);
  }
}

