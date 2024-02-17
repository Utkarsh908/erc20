# DegenToken

DegenToken is an ERC20 token contract deployed on the Avalanche network. It allows for the creation and management of the Degen (DGN) token.

## Features

- **ERC20 Standard**: Implements the ERC20 standard for fungible tokens.
- **Minting**: Allows the owner to mint new tokens.
- **Burning**: Allows token holders to burn their tokens.
- **Transfer Tokens**: Allows token holders to transfer tokens to other addresses.
- **Balance Inquiry**: Provides a function to check the balance of a token holder.

## Usage

To use the DegenToken contract, you can interact with it using an Ethereum wallet or through a smart contract. Here are some common interactions:

- **Minting**: Call the `mint` function with the desired recipient address and the amount of tokens to mint.
- **Burning**: Call the `burn` function with the amount of tokens to burn.
- **Transferring Tokens**: Call the `transferTokens` function with the recipient address and the amount of tokens to transfer.
- **Balance Inquiry**: Call the `balanceOf` function with the address to check the token balance.

## Deployment

The DegenToken contract is deployed on the Avalanche Fuji Testnet.
## Ownership

The contract owner has special privileges, such as minting tokens. The owner address is set during contract deployment and cannot be changed.
