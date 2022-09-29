import 'package:get/get.dart';
import 'package:plts/models/item_dropdown.dart';

class HomeController extends GetxController {
  var itemsTransaction = <ItemDropdown>[
    ItemDropdown(index: "0", title: "Residensial - Tipe Sambungan"),
    ItemDropdown(index: "1", title: "Commercial - Tipe Sambungan"),
    ItemDropdown(index: "2", title: "Industri - Tipe Sambungan"),
  ];

  var selectedIndex = '0'.obs;
  var showDropdown = false.obs;
}