import 'package:flutter/material.dart';
import 'package:bitcoin_app/coin_data.dart';

class PriceScreen extends StatefulWidget {
  const PriceScreen({super.key});

  @override
  State<PriceScreen> createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '😊 Coin Tracker',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Theme.of(context).colorScheme.secondary,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 28.0,
                  ),
                  child: Text(
                    '1 BTC = ? $selectedCurrency',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Container(
              height: 150.0,
              color: Theme.of(context).colorScheme.primary,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(bottom: 10.0),
              child: DropdownMenu<String>(
                textStyle: Theme.of(context).textTheme.bodyLarge,
                initialSelection: selectedCurrency,
                inputDecorationTheme: InputDecorationTheme(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                dropdownMenuEntries: currenciesList
                    .map(
                      (currency) => DropdownMenuEntry<String>(
                        value: currency,
                        label: currency,
                      ),
                    )
                    .toList(),

                onSelected: (value) {
                  setState(() {
                    selectedCurrency = value ?? selectedCurrency;
                    print(selectedCurrency);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
