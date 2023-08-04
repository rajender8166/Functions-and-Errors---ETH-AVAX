# Assertion Contract

This is a Solidity smart contract that demonstrates the usage of `require()`, `assert()`, and `revert()` statements. The contract showcases how these statements can be used for input validation, invariant checks, and handling exceptional cases in a smart contract.

## Getting Started

### Prerequisites

To interact with the smart contract, you need the following:

- An Ethereum wallet (e.g., MetaMask) to send transactions to the contract.
- An Ethereum development environment (e.g., Remix, Truffle, or Hardhat) for deploying and testing the contract.

### Deployment

1. Compile the contract using a Solidity compiler with version 0.8.0 or higher.
2. Deploy the contract to an Ethereum testnet (e.g., Ropsten, Rinkeby) or the manner using your Ethereum development environment.

### Functionality

The contract contains the following functions:

#### `setValue(uint256 _value)`

Sets the `totalValue` state variable to the given `_value`. The function checks if `_value` is greater than zero using `require()` to ensure a valid input.

#### `addValue(uint256 _value)`

Adds the given `_value` to the `totalValue`. The function uses `assert()` to check for potential integer overflow during the addition operation.

#### `withdraw(uint256 _amount)`

Allows the contract owner to withdraw a specified `_amount` from the contract. The function uses `require()` to check if the `_amount` to withdraw is not greater than the current `totalValue`. If `_amount` is more than 100, it uses `revert()` to prevent withdrawal with the custom error message "Withdrawal amount should not exceed 100."

## Usage

1. Deploy the contract to an Ethereum network.
2. Interact with the contract functions using an Ethereum wallet or a development environment.

## Contributing

Contributions to improve the contract's functionality or fix issues are welcome. Please fork the repository and create a pull request with your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
