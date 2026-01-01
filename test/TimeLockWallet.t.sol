// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "hardhat/console.sol";
import "../contracts/TimeLockWallet.sol";

contract TimeLockWalletTest {
    function testUnlockTimeIsSet() public {
        uint256 unlockTime = block.timestamp + 60;
        TimeLockWallet wallet = new TimeLockWallet(unlockTime);
        assert(wallet.unlockTime() == unlockTime);
    }
}
