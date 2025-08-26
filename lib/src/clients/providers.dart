/// A class that holds the AlgoNode API endpoints.
///
/// Note: The free public AlgoNode service does not require an API key,
/// When instantiating clients, you can omit the apiKey and tokenKey parameters.
class AlgoNode {
  /// The Algod API URL for AlgoNode's MainNet.
  static const String MAINNET_ALGOD_API_URL =
      'https://mainnet-api.algonode.cloud';

  /// The Algod API URL for AlgoNode's TestNet.
  static const String TESTNET_ALGOD_API_URL =
      'https://testnet-api.algonode.cloud';

  /// The Algod API URL for AlgoNode's VoyNet (replaces BetaNet).
  static const String VOYNET_ALGOD_API_URL =
      'https://voynet-api.algonode.cloud';

  /// The Indexer API URL for AlgoNode's MainNet.
  static const String MAINNET_INDEXER_API_URL =
      'https://mainnet-idx.algonode.cloud';

  /// The Indexer API URL for AlgoNode's TestNet.
  static const String TESTNET_INDEXER_API_URL =
      'https://testnet-idx.algonode.cloud';

  /// The Indexer API URL for AlgoNode's VoyNet (replaces BetaNet).
  static const String VOYNET_INDEXER_API_URL =
      'https://voynet-idx.algonode.cloud';
}

/// A class that holds the AlgoExplorer API endpoints.
///
/// Note: These public endpoints are subject to rate limiting and are suitable
/// for development and light-use applications. For production applications,
/// a dedicated service or the AlgoNode public API is recommended.
class AlgoExplorer {
  /// The Algod API URL for AlgoExplorer's MainNet.
  static const String MAINNET_ALGOD_API_URL = 'https://node.algoexplorerapi.io';

  /// The Algod API URL for AlgoExplorer's TestNet.
  static const String TESTNET_ALGOD_API_URL =
      'https://node.testnet.algoexplorerapi.io';

  /// The Indexer API URL for AlgoExplorer's MainNet.
  static const String MAINNET_INDEXER_API_URL =
      'https://algoindexer.algoexplorerapi.io';

  /// The Indexer API URL for AlgoExplorer's TestNet.
  static const String TESTNET_INDEXER_API_URL =
      'https://algoindexer.testnet.algoexplorerapi.io';
}
