import 'package:algorand_dart/algorand_dart.dart';

void main() async {
  final options = AlgorandOptions(
    algodClient: AlgodClient(
      apiUrl: AlgoExplorer.MAINNET_ALGOD_API_URL,
    ),
    indexerClient: IndexerClient(
      apiUrl: AlgoExplorer.MAINNET_INDEXER_API_URL,
    ),
  );

  // Define the connection to the Algorand node.
  // Using AlgoNode's free TestNet client.
  final algodClient = AlgodClient(
    apiUrl: 'https://testnet-api.algonode.cloud',
  );

  // Pass the client to the Algorand constructor.
  final algorand = Algorand(algodClient: algodClient, options: options);

  try {
    final response = await algorand.getCreatedApplicationsByAddress(
      'OW3VJ3YSECTNTJ73GNQE2LYOQUMMAV577NDNF53SXRKB33OST6NNTPRD4Y',
      perPage: 20,
    );

    print(response.length);
  } on AlgorandException catch (ex) {
    print(ex);
  }
}
