# Solidity Time-Lock Wallet

A lightweight time-locked wallet smart contract built with Solidity, allowing ETH to be securely locked and withdrawn only after a specified unlock timestamp.

## Overview
This project demonstrates a simple and practical use of time-based logic in Ethereum smart contracts. The contract ensures that locked funds cannot be accessed before a predefined time, providing a basic mechanism for fund locking and vesting scenarios.

## Features
- Lock ETH until a predefined unlock time
- Prevent withdrawals before the unlock time is reached
- Owner-only withdrawal access
- Minimal, readable, and gas-efficient contract design

## Tech Stack
- Solidity ^0.8.x
- Hardhat (development and testing)
- Ethereum-compatible networks (Base, Polygon, BNB Chain)

## Use Cases
- Personal fund locking
- Simple vesting or delayed payments
- Demonstration of time-based smart contract logic
- Educational reference for Solidity developers

## How It Works
1. The contract is deployed with a future unlock timestamp
2. ETH is sent to the contract address
3. Funds remain locked until the unlock time is reached
4. The owner can withdraw the full balance after the unlock time

## Testing
The project includes a Solidity-based unit test executed using Hardhat to verify correct initialization of the unlock time and basic contract behavior.

## License
MIT
