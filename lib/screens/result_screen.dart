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
            child: Padding(
              padding: Responsive.isWeb(context) ? const EdgeInsets.symmetric(horizontal: 0) : const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Kesimpulan", style: kTextHeader1,),
                  const SizedBox(height: 28,),
                  SizedBox(
                    width: Responsive.isWeb(context) ? Get.width / 2 : Get.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sesuai dengan data Sambungan PLN yang dipilih oleh pelanggan adalah : ", style: kTextHeader3Med),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 300,
                              child: Text("Jenis Sambungan PLN existing", style: kTextBody,),
                            ),
                            Text(":", style: kTextBody,),
                            SizedBox(width: paddingDefault,),
                            Text("Komersial", style: kTextBody,)
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 300,
                              child: Text("Kapasitas Sambungan PLN existing", style: kTextBody,),
                            ),
                            Text(":", style: kTextBody,),
                            SizedBox(width: paddingDefault,),
                            Text("B-2, 6600 Va", style: kTextBody,)
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 300,
                              child: Text("Tarif Dasar Listrik Rp per kWh (LWBP)", style: kTextBody,),
                            ),
                            Text(":", style: kTextBody,),
                            SizedBox(width: paddingDefault,),
                            Text("1447.7", style: kTextBody,)
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 300,
                              child: Text("System PLTS", style: kTextBody,),
                            ),
                            Text(":", style: kTextBody,),
                            SizedBox(width: paddingDefault,),
                            Text("On Grid", style: kTextBody,)
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: paddingDefault,),
                  Center(
                    child: SizedBox(
                      width: Responsive.isWeb(context) ? Get.width / 2 : Get.width,
                      child: const Divider(),
                    ),
                  ),
                  SizedBox(height: paddingDefault,),
                  SizedBox(
                    width: Responsive.isWeb(context) ? Get.width / 2 : Get.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Kami merekomendasikan pemasangan PLTS dengan system tersebut dengan detail sebagai berikut : ", style: kTextHeader3Med),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 300,
                              child: Text("Kapasitas PLTS (Wp)", style: kTextBody,),
                            ),
                            Text(":", style: kTextBody,),
                            SizedBox(width: paddingDefault,),
                            Text("4,400", style: kTextBody,)
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 300,
                              child: Text("Nilai Investasi Awal (Rp)", style: kTextBody,),
                            ),
                            Text(":", style: kTextBody,),
                            SizedBox(width: paddingDefault,),
                            Text("57,200,000", style: kTextBody,)
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 300,
                              child: Text("Produksi Energi per bulan (kWh)", style: kTextBody,),
                            ),
                            Text(":", style: kTextBody,),
                            SizedBox(width: paddingDefault,),
                            Text("594", style: kTextBody,)
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 300,
                              child: Text("Penghematan Biaya Listrik per Bulan (Rp)", style: kTextBody,),
                            ),
                            Text(":", style: kTextBody,),
                            SizedBox(width: paddingDefault,),
                            Text("859,000", style: kTextBody,)
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 300,
                              child: Text("Return of Investment (Tahun)", style: kTextBody,),
                            ),
                            Text(":", style: kTextBody,),
                            SizedBox(width: paddingDefault,),
                            Text("6", style: kTextBody,)
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 300,
                              child: Text("Total Penghematan Biaya Listrik 25 Tahun (Rp)", style: kTextBody,),
                            ),
                            Text(":", style: kTextBody,),
                            SizedBox(width: paddingDefault,),
                            Text("1,879,898,800", style: kTextBody,)
                          ],
                        ),
                        const SizedBox(height: 22,),
                        SizedBox(
                            width: Responsive.isWeb(context) ? Get.width / 2 : Get.width,
                            child: RichText(
                              text: TextSpan(
                                text: 'Dengan system yang kami rekomendasikan ini selain penghematan biaya listrik yang dapat Anda dapatkan, Andajuga telah berpartisipasi nyata dalam ikut mendukung penurunan emisi CO2 di bumi yaitu ',
                                style: kTextBody,
                                children: [
                                  TextSpan(
                                    text: '3.4',
                                    style: kTextBodyBold,
                                  ),
                                  const TextSpan(
                                    text: ' Ton / Year',
                                  ),
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 22,),
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
