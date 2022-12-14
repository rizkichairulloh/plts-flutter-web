import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plts/models/item_dropdown.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  final GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  var itemsTransaction = <ItemDropdown>[
    ItemDropdown(index: "0", title: "Residential - Tipe Sambungan", nameFile: ""),
    ItemDropdown(index: "1", title: "Komersial - Tipe Sambungan", nameFile: ""),
    ItemDropdown(index: "2", title: "Industri - Tipe Sambungan", nameFile: ""),
    ItemDropdown(index: "3", title: "Pemerintah - Tipe Sambungan", nameFile: ""),
  ];

  var itemsSambunganResidential = <ItemDropdown>[
    ItemDropdown(index: "0", title: "1300 Va", nameFile: "R1"),
    ItemDropdown(index: "1", title: "2200 Va", nameFile: "R2"),
    ItemDropdown(index: "2", title: "3500 Va", nameFile: "R3"),
    ItemDropdown(index: "3", title: "4400 Va", nameFile: "R4"),
    ItemDropdown(index: "4", title: "5500 Va", nameFile: "R5"),
    ItemDropdown(index: "5", title: "6600 Va", nameFile: "R6"),
    ItemDropdown(index: "6", title: "10500 Va", nameFile: "R7"),
    ItemDropdown(index: "7", title: "13200 Va", nameFile: "R8"),
    ItemDropdown(index: "8", title: "16500 Va", nameFile: "R9"),
    ItemDropdown(index: "9", title: "23000 Va", nameFile: "R10"),
  ];

  var itemsSambunganKomersial = <ItemDropdown>[
    ItemDropdown(index: "0", title: "6600 Va", nameFile: "B1"),
    ItemDropdown(index: "1", title: "10500 Va", nameFile: "B2"),
    ItemDropdown(index: "2", title: "13200 Va", nameFile: "B3"),
    ItemDropdown(index: "3", title: "16500 Va", nameFile: "B4"),
    ItemDropdown(index: "4", title: "23000 Va", nameFile: "B5"),
    ItemDropdown(index: "5", title: "33000 Va", nameFile: "B6"),
    ItemDropdown(index: "6", title: "41500 Va", nameFile: "B7"),
    ItemDropdown(index: "7", title: "52800 Va", nameFile: "B8"),
    ItemDropdown(index: "8", title: "66000 Va", nameFile: "B9"),
    ItemDropdown(index: "9", title: "82500 Va", nameFile: "B10"),
    ItemDropdown(index: "10", title: "105000 Va", nameFile: "B11"),
    ItemDropdown(index: "11", title: "131000 Va", nameFile: "B12"),
    ItemDropdown(index: "12", title: "147000 Va", nameFile: "B13"),
    ItemDropdown(index: "13", title: "197000 Va", nameFile: "B14"),
  ];

  var itemsSambunganIndustri = <ItemDropdown>[
    ItemDropdown(index: "0", title: "210000 Va", nameFile: "I1"),
    ItemDropdown(index: "1", title: "233000 Va", nameFile: "I2"),
    ItemDropdown(index: "2", title: "240000 Va", nameFile: "I3"),
    ItemDropdown(index: "3", title: "279000 Va", nameFile: "I4"),
    ItemDropdown(index: "4", title: "329000 Va", nameFile: "I5"),
    ItemDropdown(index: "5", title: "345000 Va", nameFile: "I6"),
    ItemDropdown(index: "6", title: "414000 Va", nameFile: "I7"),
  ];

  var itemsSambunganPemerintah = <ItemDropdown>[
    ItemDropdown(index: "0", title: "1300 Va", nameFile: "P1"),
    ItemDropdown(index: "1", title: "2200 Va", nameFile: "P2"),
    ItemDropdown(index: "2", title: "3500 Va", nameFile: "P3"),
    ItemDropdown(index: "3", title: "4400 Va", nameFile: "P4"),
    ItemDropdown(index: "4", title: "5500 Va", nameFile: "P5"),
    ItemDropdown(index: "5", title: "6600 Va", nameFile: "P6"),
    ItemDropdown(index: "6", title: "10500 Va", nameFile: "P7"),
    ItemDropdown(index: "7", title: "13200 Va", nameFile: "P8"),
    ItemDropdown(index: "8", title: "16500 Va", nameFile: "P9"),
    ItemDropdown(index: "9", title: "23000 Va", nameFile: "P10"),
    ItemDropdown(index: "10", title: "33000 Va", nameFile: "P11"),
    ItemDropdown(index: "11", title: "41500 Va", nameFile: "P12"),
    ItemDropdown(index: "12", title: "52800 Va", nameFile: "P13"),
    ItemDropdown(index: "13", title: "66000 Va", nameFile: "P14"),
    ItemDropdown(index: "14", title: "82500 Va", nameFile: "P15"),
    ItemDropdown(index: "15", title: "105000 Va", nameFile: "P16"),
    ItemDropdown(index: "16", title: "131000 Va", nameFile: "P17"),
    ItemDropdown(index: "17", title: "147000 Va", nameFile: "P18"),
    ItemDropdown(index: "18", title: "197000 Va", nameFile: "P19"),
  ];

  var itemsDefault = <ItemDropdown>[];

  var selectedIndex = '0'.obs;
  var nameFile = ''.obs;
  var name = TextEditingController().obs;
  var noTelp = TextEditingController().obs;
  var email = TextEditingController().obs;
  var isLoading = false.obs;


  Future postData({required String time, required String name, required String noTelp, required String email, required String tipe, required String kapasitas, required String nameFile}) async {
    isLoading.value = true;

    try {
      var url = Uri.parse('https://script.google.com/macros/s/AKfycbwZ-sDYd5nGs2NoUXCL-8rOpS7S-2fYXrbZOZcnzfQBU3g0mOlVUARrL48cVSGaVrUy/exec');
      var response = await http.post(url,
      body: {
        'time': time,
        'name': name,
        'noTelepon': noTelp,
        'email': email,
        'tipe': tipe,
        'kapasitas': kapasitas,
        'nameFile': nameFile,
      });

      debugPrint("POST DATA : ${response.statusCode}");
      if (response.statusCode == 200) {
        isLoading.value = false;
        Get.toNamed("/hasil");
      }  else {
        isLoading.value = false;
        Get.snackbar(
          "Error",
          "Terjadi Kesalahan Teknis, cek koneksi internet Anda",
          maxWidth: Get.width / 2,
          snackPosition: SnackPosition.BOTTOM,
          margin: const EdgeInsets.only(bottom: 100),
          colorText: Colors.red,
        );
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar(
        "Error",
        "Terjadi kesalahan teknis, cek koneksi internet Anda",
        maxWidth: Get.width / 2,
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.only(bottom: 100),
        colorText: Colors.red,
      );
      debugPrint(e.toString());
    }
  }
}