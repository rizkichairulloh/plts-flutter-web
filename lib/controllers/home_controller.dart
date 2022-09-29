import 'package:get/get.dart';
import 'package:plts/models/item_dropdown.dart';

class HomeController extends GetxController {
  var itemsTransaction = <ItemDropdown>[
    ItemDropdown(index: "0", title: "Residensial - Tipe Sambungan"),
    ItemDropdown(index: "1", title: "Commercial - Tipe Sambungan"),
    ItemDropdown(index: "2", title: "Industri - Tipe Sambungan"),
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

  var selectedIndex = '0'.obs;
  var showDropdown = false.obs;
}