import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker connectionChecker;

  NetworkInfoImpl({required this.connectionChecker});
  @override
  Future<bool> get isConnected async => await connectionChecker.hasConnection;
}

class InternetConnectionCheckerPakckage extends StatefulWidget {
  const InternetConnectionCheckerPakckage({super.key});

  @override
  State<InternetConnectionCheckerPakckage> createState() =>
      _InternetConnectionCheckerPakckageState();
}

class _InternetConnectionCheckerPakckageState
    extends State<InternetConnectionCheckerPakckage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NetworkInfoImpl(connectionChecker: InternetConnectionChecker())
            .isConnected,
        builder: (context, snapshot) {
          if (kDebugMode) {
            print(snapshot.data);
          }
          switch (snapshot.data) {
            case true:
              return const Text('Has Connection');
            case false:
              return const Text('No Coneection');
            default:
              return const Text('Default');
          }
        });
  }
}
