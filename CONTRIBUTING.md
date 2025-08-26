# Contributing to Algorand-dart (NodajiFi Fork)

👍🎉 First off, thank you for considering contributing to this project! 🎉👍

We welcome any contributions that help us improve and maintain this vital 
SDK for the Algorand community. Your help is essential for keeping the package up-to-date 
and effective for everyone. We are particularly focused on maintaining this package to 
support the Nodajifi project, which aims to address the education and financing divides. 
By contributing, you are helping us build a more equitable future.

The following is a set of guidelines for contributing. These are mostly guidelines, 
not rules. Use your best judgment, and feel free to propose changes to this document 
in a pull request.

# Code of Conduct
To ensure a welcoming and inclusive environment, we have adopted a Code of Conduct 
that we expect all contributors to adhere to. Please read the 
[CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) before participating.


## How to Contribute
We recommend filing an issue on GitHub for any proposed change, whether it's a bug fix 
or a new feature. This lets us reach an agreement on your proposal before you put significant 
effort into it.


## Reporting Bugs
If you find a bug, please check the [Issues](https://github.com/NodajiFi-Tokenomy/algorand-dart-nodajifi/issues)
on GitHub to see if it has already been reported. If not, please open a new issue. 
Be sure to include:
- A clear title and description.
- A code sample or steps to reproduce the bug.
- Any relevant information about your environment.


## Suggesting Enhancements
If you have an idea for an enhancement or a new feature, please open an issue to discuss it. 
This allows us to coordinate our efforts and prevent duplicated work. We're excited to 
hear your ideas!


## Proposing a Change
If you intend to change the public API, or make any non-trivial changes 
to the implementation, we recommend filing an issue. 
This lets us reach an agreement on your proposal before you put significant effort 
into it.

If you’re only fixing a bug, it’s fine to submit a pull request right away 
but we still recommend to file an issue detailing what you’re fixing. 
This is helpful in case we don’t accept that specific fix but want to keep 
track of the issue.


## Creating a Pull Request

Once you're ready to contribute code, please follow these steps:

1.  **Fork the repository** and create your branch from `main`.
2.  **Install all dependencies** by running `flutter packages get` or `pub get`.
3.  **Squash your commits** into a single, logical commit with a meaningful message.
4.  **Add tests!** If you’ve fixed a bug or added code, please add tests. Pull Requests 
without 100% test coverage will not be approved.
5.  **Ensure the test suite passes** locally.
6.  **Update documentation.** If you've changed the public API, make sure to update 
the `README.md` and any relevant code comments.
7.  **Format your code** by running `dart format .`.
8.  **Analyze your code** for issues by running `dart analyze .`.
9.  **Create the Pull Request** against our `main` branch.
10. **Verify that all status checks are passing** on your pull request.

While the prerequisites above must be satisfied prior to having your pull request 
reviewed, the reviewer(s) may ask you to complete additional design work, tests, 
or other changes before your pull request can be ultimately accepted.


## Adding an example

Examples live in the `examples` folder.
-   For a Flutter example, add it to the `folder` list in the `examples-flutter` step.
-   For a web example, add it to the `folder` list in the `examples-web` step.
-   For a pure Dart example, add it to the `folder` list in the `examples-pure` step.


## Getting in Touch

If you want to just ask a question or get feedback on an idea, you can reach out to the 
Algorand developer community on [Discord](https://discord.com/invite/algorand).


## License

By contributing to this fork of Algorand-Dart, you agree that your contributions 
will be licensed under its [MIT license](LICENSE).