import 'dart:typed_data';

import 'package:algorand_dart/algorand_dart.dart';

void main() async {
  // Define the connection to the Algorand node.
  // Using AlgoNode's free TestNet client.
  final algodClient = AlgodClient(
    apiUrl: 'https://testnet-api.algonode.cloud',
  );

  // Pass the client to the Algorand constructor.
  final algorand = Algorand(algodClient: algodClient);

  final arguments = <Uint8List>[];
  arguments.add(Uint8List.fromList([123]));

  final result = await algorand.compileTEAL(sampleArgsTeal);
  print(result.hash);
  print(result.result);
  print(result.program);
}

final sampleArgsTeal = '''
// samplearg.teal
// This code is meant for learning purposes only
// It should not be used in production
arg_0
btoi
int 123
==
''';
