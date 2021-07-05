class CurrencyModel{
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel({this.name, this.real, this.dolar, this.euro, this.bitcoin});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
        name: 'Real', real: 1.0, dolar: 0.18, euro: 0.15, bitcoin:  0.0000032),
      CurrencyModel(
        name: 'Dolar', real: 5.59, dolar: 1.0, euro: 0.84, bitcoin: 0.000018,),
      CurrencyModel(
        name: 'Euro', real: 6.69, dolar: 1.2, euro: 1.0, bitcoin: 0.000021,),
      CurrencyModel(
        name: 'Bitcoin', real: 311851, dolar: 558000, euro: 46597, bitcoin: 1,),
    ];
  }
}