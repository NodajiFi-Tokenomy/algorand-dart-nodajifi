import 'package:algorand_dart/algorand_dart.dart';
import 'package:dio/dio.dart';

void main() async {
  final options = AlgorandOptions();

  // Define the connection to the Algorand node.
  // Using AlgoNode's free TestNet client.
  final algodClient = AlgodClient(
    apiUrl: 'https://testnet-api.algonode.cloud',
  );

  // Pass the client to the Algorand constructor.
  final algorand = Algorand(algodClient: algodClient, options: options);

  try {
    final round = BigInt.from(26031514);
    final block = await algorand.getBlockByRound(
      round,
      cancelToken: CancelToken(),
      onSendProgress: (count, total) {},
      onReceiveProgress: (count, total) {},
    );

    final block2 = await algorand.indexer().getBlockByRound(round);
    print(block);
    print(block2);
  } on AlgorandException catch (ex) {
    print(ex);
  }
}
