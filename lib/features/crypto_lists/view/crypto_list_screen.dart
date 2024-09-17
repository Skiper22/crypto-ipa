import 'package:cryptoapp/features/crypto_lists/widgets/widgets.dart';
import 'package:cryptoapp/repositoires/crypto_coins/crypto_coins_rep.dart';
import 'package:cryptoapp/repositoires/crypto_coins/models/crypto_coin.dart';
import 'package:flutter/material.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key, required this.title});
  final String title;

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {

  List<CryptoCoin>? _cryptoCoinsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: (_cryptoCoinsList == null) 
        ? const Center(child : CircularProgressIndicator()) :
      
      ListView.separated(
        padding: const EdgeInsets.only(top: 16),
        itemCount: _cryptoCoinsList!.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i) {
          final coin = _cryptoCoinsList![i];
         return  CryptoCoinTile(coin: coin);
      }
    ),
    floatingActionButton: FloatingActionButton(
      child: const Icon(Icons.download),
      onPressed: () async {
        _cryptoCoinsList = await CryptoCoinsRep().getCoinsLists();
        setState(() {
          
        });
    }),
    );
  }
}
