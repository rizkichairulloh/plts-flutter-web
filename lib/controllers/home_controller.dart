import 'package:get/get.dart';
import 'package:plts/models/item_dropdown.dart';

class HomeController extends GetxController {
  var itemsTransaction = <ItemDropdown>[
    ItemDropdown(index: "0", title: "Residential - Tipe Sambungan"),
    ItemDropdown(index: "1", title: "Komersial - Tipe Sambungan"),
    ItemDropdown(index: "2", title: "Industri - Tipe Sambungan"),
    ItemDropdown(index: "3", title: "Pemerintah - Tipe Sambungan"),
  ];

  var itemsBesarSambungan = <ItemDropdown>[
    ItemDropdown(index: "0", title: "450"),
    ItemDropdown(index: "1", title: "900"),
    ItemDropdown(index: "3", title: "1300"),
    ItemDropdown(index: "4", title: "2200"),
    ItemDropdown(index: "5", title: "4500"),
    ItemDropdown(index: "6", title: "5500"),
    ItemDropdown(index: "7", title: "7700"),
  ];

  var itemsSambunganResidential = <ItemDropdown>[
    ItemDropdown(index: "0", title: "1300 Va"),
    ItemDropdown(index: "1", title: "2200 Va"),
    ItemDropdown(index: "2", title: "3500 Va"),
    ItemDropdown(index: "3", title: "4400 Va"),
    ItemDropdown(index: "4", title: "5500 Va"),
    ItemDropdown(index: "5", title: "6600 Va"),
    ItemDropdown(index: "6", title: "10500 Va"),
    ItemDropdown(index: "7", title: "13200 Va"),
    ItemDropdown(index: "8", title: "16500 Va"),
    ItemDropdown(index: "9", title: "23000 Va"),
  ];

  var itemsSambunganKomersial = <ItemDropdown>[
    ItemDropdown(index: "0", title: "6600 Va"),
    ItemDropdown(index: "1", title: "10500 Va"),
    ItemDropdown(index: "2", title: "13200 Va"),
    ItemDropdown(index: "3", title: "16500 Va"),
    ItemDropdown(index: "4", title: "23000 Va"),
    ItemDropdown(index: "5", title: "33000 Va"),
    ItemDropdown(index: "6", title: "41500 Va"),
    ItemDropdown(index: "7", title: "52800 Va"),
    ItemDropdown(index: "8", title: "66000 Va"),
    ItemDropdown(index: "9", title: "82500 Va"),
    ItemDropdown(index: "10", title: "105000 Va"),
    ItemDropdown(index: "11", title: "131000 Va"),
    ItemDropdown(index: "12", title: "147000 Va"),
    ItemDropdown(index: "13", title: "197000 Va"),
  ];

  var itemsSambunganIndustri = <ItemDropdown>[
    ItemDropdown(index: "0", title: "210000 Va"),
    ItemDropdown(index: "1", title: "233000 Va"),
    ItemDropdown(index: "2", title: "240000 Va"),
    ItemDropdown(index: "3", title: "279000 Va"),
    ItemDropdown(index: "4", title: "329000 Va"),
    ItemDropdown(index: "5", title: "345000 Va"),
    ItemDropdown(index: "6", title: "414000 Va"),
  ];

  var itemsSambunganPemerintah = <ItemDropdown>[
    ItemDropdown(index: "0", title: "1300 Va"),
    ItemDropdown(index: "1", title: "2200 Va"),
    ItemDropdown(index: "2", title: "3500 Va"),
    ItemDropdown(index: "3", title: "4400 Va"),
    ItemDropdown(index: "4", title: "5500 Va"),
    ItemDropdown(index: "5", title: "6600 Va"),
    ItemDropdown(index: "6", title: "10500 Va"),
    ItemDropdown(index: "7", title: "13200 Va"),
    ItemDropdown(index: "8", title: "16500 Va"),
    ItemDropdown(index: "9", title: "23000 Va"),
    ItemDropdown(index: "10", title: "33000 Va"),
  ];

  var itemsDefault = <ItemDropdown>[];

  var selectedIndex = '0'.obs;
}