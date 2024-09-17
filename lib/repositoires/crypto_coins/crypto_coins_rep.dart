import 'package:cryptoapp/repositoires/crypto_coins/models/crypto_coin.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CryptoCoinsRep {
  Future<List<CryptoCoin>> getCoinsLists() async {
    final response = await Dio().get(
      'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,SOL,ETH,TON,NOT&tsyms=USDT'
    );
    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final cryptoCoinsList = dataRaw.entries.
      map((e) {
        final usdtData = (e.value as Map<String, dynamic>)['USDT'] as Map<String, dynamic>;
        final price = usdtData['PRICE'];
        final imageUrl = usdtData['IMAGEURL'];
        return CryptoCoin(
          name: e.key, 
          priceInUSDT: price,
          imageUrl: 'https://www.cryptocompare.com/$imageUrl',
          );})
    .toList();
    return cryptoCoinsList;
  }
}