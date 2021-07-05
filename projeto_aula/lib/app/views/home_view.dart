import 'package:flutter/material.dart';
import 'package:projeto_aula/app/components/currency_box.dart';
import 'package:projeto_aula/app/controllers/home_controller.dart';

class HomeView extends StatefulWidget {

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();
  HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: (
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 100, bottom: 20),
              child: Column(
                children: [
                Image.network('https://images-na.ssl-images-amazon.com/images/I/61RYn%2BRqWrL.png', width: 200, height: 200,),
                SizedBox(height: 50,),
                CurrencyBox(
                  selectedItem: homeController.toCurrency,
                  controller: toText,
                  items: homeController.currencies,
                  onChanged: (model) {
                    setState(() {
                      homeController.toCurrency = model;
                    });
                  },
                  ),
                SizedBox(height: 10,),
                CurrencyBox(
                  selectedItem: homeController.fromCurrency,
                  controller: fromText,
                  items: homeController.currencies, 
                  onChanged: (model) {
                    setState(() {
                      homeController.fromCurrency = model;
                    });
                  },
                  ),
                SizedBox(height: 50,),
                ElevatedButton(
                  onPressed: () {homeController.convert();},
                  child: Text("Converter"),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),),
                ),
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}