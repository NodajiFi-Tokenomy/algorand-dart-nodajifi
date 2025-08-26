import 'package:algorand_dart/algorand_dart.dart';

Future<void> main() async {
  // Define the connection to the Algorand node.
  // Using AlgoNode's free TestNet client.
  final algodClient = AlgodClient(
    apiUrl: 'https://testnet-api.algonode.cloud',
  );

  // Pass the client to the Algorand constructor.
  final algorand = Algorand(
    algodClient: algodClient,
    options: AlgorandOptions(
      indexerClient: IndexerClient(
        apiUrl: 'https://algoindexer.algoexplorerapi.io',
      ),
    ),
  );

  final txn = await algorand.indexer().getTransactionById(
      'YLJH7NBKH4W6DLKO6LJTIWGC5Q52SQZ3VSMG2YKEFLBJCSUGEIIQ');

  final delta = txn.transaction.localStateDelta.first.delta;
  final pair =
      delta.where((e) => e.key == 'ZXhwaXJhdGlvbl9kYXRl').toList().first;
  final actualValue = pair.value.uint!;
  final expectedValue = BigInt.two.pow(64) - BigInt.one;
  print(expectedValue); // prints 18446744073709551615
  print(actualValue); // prints 18446744073709551616
  assert(expectedValue == actualValue); // fails
}
