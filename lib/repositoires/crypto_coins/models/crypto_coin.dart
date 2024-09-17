import 'package:flutter/material.dart';

class CryptoCoin {

  const CryptoCoin({
    required this.name,
    required this.priceInUSDT,
    required this.imageUrl,
    });
  
  final String name;
  final double priceInUSDT;
  final String imageUrl;

}