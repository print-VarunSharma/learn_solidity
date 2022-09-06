// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/* 
There are 3 types of variables in Solidity

local
declared inside a function
not stored on the blockchain
state
declared outside a function
stored on the blockchain
global (provides information about the blockchain

*/
contract Variables {
    // State Variables are stored on the blockchain.
    string public text = "Hello";
    uint256 public num = 123;

    function doSomething() public {
        // Local Variables are not saved to the blockchain
        uint256 i = 456;

        // Here are some global variables
        uint256 timestamp = block.timestamp; // Current Block Timestamp
        address sender = msg.sender; // address of the caller
    }
}
