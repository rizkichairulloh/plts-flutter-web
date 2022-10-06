import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdfx/pdfx.dart';
import 'package:plts/controllers/home_controller.dart';
import 'package:plts/utilities/responsive.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  final controller = Get.put(HomeController());
  late PdfControllerPinch pdfController;
  int _actualPageNumber = 0, _allPagesCount = 0;

  @override
  void initState() {
    pdfController = PdfControllerPinch(
      document: PdfDocument.openAsset('assets/pdf/${controller.nameFile.value}.pdf'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: SizedBox(
                  width: Responsive.isWeb(context) ? Get.width / 2 : Get.width,
                  height: Get.height,
                  child: PdfViewPinch(
                    controller: pdfController,
                      onDocumentLoaded: (document) {
                      setState(() {
                        _allPagesCount = document.pagesCount;
                      });
                    },
                    onPageChanged: (page) {
                      setState(() {
                        _actualPageNumber = page;
                      });
                    },
                    builders: PdfViewPinchBuilders<DefaultBuilderOptions>(
                      options: const DefaultBuilderOptions(
                        loaderSwitchDuration: Duration(seconds: 1),
                      ),
                      documentLoaderBuilder: (_) =>
                      const Center(child: CircularProgressIndicator()),
                      pageLoaderBuilder: (_) =>
                      const Center(child: CircularProgressIndicator()),
                      errorBuilder: (_, error) => Center(child: Text(error.toString())),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              /// Now you can use these values to display the reading status of the document.
              Text('Read: $_actualPageNumber of $_allPagesCount'),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ));
  }
}

