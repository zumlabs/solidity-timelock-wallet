// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TimeLockWallet {
    address public owner;
    uint256 public unlockTime;

    event Deposited(address indexed from, uint256 amount);
    event Withdrawn(address indexed to, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    constructor(uint256 _unlockTime) {
        require(_unlockTime > block.timestamp, "Unlock time must be in the future");
        owner = msg.sender;
        unlockTime = _unlockTime;
    }

    receive() external payable {
        emit Deposited(msg.sender, msg.value);
    }

    function withdraw() external onlyOwner {
        require(block.timestamp >= unlockTime, "Funds are locked");
        uint256 balance = address(this).balance;
        require(balance > 0, "No balance");

        (bool success, ) = owner.call{value: balance}("");
        require(success, "Transfer failed");

        emit Withdrawn(owner, balance);
    }
}
