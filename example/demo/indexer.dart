import 'package:algorand_dart/algorand_dart.dart';

void main() async {
  final options = AlgorandOptions(
    mainnet: false,
  );

  // Define the connection to the Algorand node.
  // Using AlgoNode's free TestNet client.
  final algodClient = AlgodClient(
    apiUrl: 'https://testnet-api.algonode.cloud',
  );

  // Pass the client to the Algorand constructor.
  final algorand = Algorand(algodClient: algodClient, options: options);

  try {
    final transactions = await algorand.indexer().getAssetById(
          408947,
          includeAll: false,
        );
    print(transactions);
  } on AlgorandException catch (ex) {
    print(ex.message);
  }
}
