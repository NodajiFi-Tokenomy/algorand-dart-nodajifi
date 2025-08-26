# algorand_dart

Unofficial community SDK to interact with the Algorand network, in Dart & Flutter

## Getting Started

### Installation

To use this maintained version, add it as a Git dependency in your pubspec.yaml file. 
Do not install it from pub.dev.

```bash
dependencies:
  algorand_dart:
    git:
      url: https://github.com/your-github-username/your-repo-name.git
      # Optionally, specify a branch or tag
      # ref: main
```

> **Note**: Algorand-dart requires Dart >=3.4.0 & null safety
> See the latest version on pub.dev

## Usage
Create an ```AlgodClient```, ```IndexerClient```, and ```KmdClient``` and pass 
them to the ```Algorand``` constructor. This version is updated to use AlgoNode for 
reliable public access to the Algorand network.

```dart
// AlgoNode API endpoints for TestNet
final algodClient = AlgodClient(
    apiUrl: 'https://testnet-api.algonode.cloud',
);

final indexerClient = IndexerClient(
    apiUrl: 'https://testnet-idx.algonode.cloud',
);

// KMD is for use with a locally hosted node
final kmdClient = KmdClient(
    apiUrl: 'http://127.0.0.1:4002', // Default sandbox KMD port
    apiKey: 'YOUR_KMD_API_TOKEN',    // Found in your node's data directory
);

final algorand = Algorand(
    algodClient: algodClient,
    indexerClient: indexerClient,
    kmdClient: kmdClient,
);
```

Once installed, you can simply connect your application to the blockchain and start sending payments

```dart
algorand.sendPayment(
    account: account,
    recipient: newAccount.address,
    amount: Algo.toMicroAlgos(5),
    note: 'Hi from Flutter!',
);
```
