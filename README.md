# Solidity Time-Lock Wallet

A simple time-locked wallet smart contract built with Solidity, allowing ETH to be securely locked and withdrawn only after a specified timestamp.

## Features
- Lock ETH until a predefined unlock time
- Prevent withdrawals before the unlock time
- Owner-only withdrawal
- Lightweight and gas-efficient

## Tech Stack
- Solidity ^0.8.x
- Ethereum-compatible networks (Base, Polygon, BNB Chain)

## Use Case
- Personal fund locking
- Simple vesting mechanism
- Demonstration of time-based smart contract logic

## Contract Overview
The contract allows a user to deposit ETH and set an unlock time. Funds cannot be withdrawn until the unlock time is reached.

## How It Works
1. Deploy the contract with an unlock timestamp
2. Deposit ETH into the contract
3. Withdraw ETH after the unlock time has passed

## Testing
This contract includes a Solidity-based unit test executed using Hardhat.

## License
MIT
