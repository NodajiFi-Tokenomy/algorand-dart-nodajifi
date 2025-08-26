import 'package:algorand_dart/algorand_dart.dart';

void main() async {
  // Define the connection to the Algorand node.
  // Using AlgoNode's free TestNet client.
  final algodClient = AlgodClient(
    apiUrl: 'https://testnet-api.algonode.cloud',
  );

  // Pass the client to the Algorand constructor.
  final algorand = Algorand(algodClient: algodClient);

  final words =
      // ignore: lines_longer_than_80_chars
      'chronic reason target blood lend major world lottery border top quantum turtle fiber debate impose meadow sport exclude nut window awesome want myself ability chief';
  final account = await Account.fromSeedPhrase(words.split(' '));

  // Create the receiver
  final receiver = Address.fromAlgorandAddress(
    'L5EUPCF4ROKNZMAE37R5FY2T5DF2M3NVYLPKSGWTUKVJRUGIW4RKVPNPD4',
  );

  // Get the suggested transaction parameters
  final params = await algorand.getSuggestedTransactionParams();

  // Create a payment transaction
  final transaction = await (PaymentTransactionBuilder()
        ..sender = account.address
        ..noteText = 'Hello world'
        ..amount = BigInt.from(100000)
        ..receiver = receiver
        ..suggestedParams = params)
      .build();

  // Sign the transaction
  final signedTx = await transaction.sign(account);
  print('Signed tx with id: ${signedTx.transaction.id}');

  // Submit the transaction to the network
  final txId = await algorand.sendTransaction(signedTx);
  final response = await algorand.waitForConfirmation(txId);

  // Check confirmation
  print('Transaction $txId confirmed in round ${response.confirmedRound}');

  // Get the balance
  final balance = await algorand.getBalance(account.publicAddress);
  print('Balance $balance');
}
