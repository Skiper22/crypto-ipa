import 'package:cryptoapp/features/crypto_lists/crypto_list.dart';
import '../features/crypto_lists/crypto_coin/view/crypto_coin_screen.dart';

final routes = {
        '/' : (context) => const CryptoListScreen(title: '',),
        '/coin' : (context) => const CryptoCoinScreen(),
      };