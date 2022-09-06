// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// https://www.smartcontract.engineer/challenges/solidity-function

/* 
What are external and pure?
external tells Solidity that this function can only be called from outside this contract.

pure tells Solidity that this function does not write anything to the blockchain.

Don't worry if that didn't make sense.

external will be fully explained in the section about function visibility.

Check out the section about view and pure functions for explanation about pure.

Tasks: Write a function named sub that substracts two inputs, x and y and returns the difference, x - y.

Declare the function as external and pure.


*/

contract FunctionIntro {
    function sub(uint256 x, uint256 y) external pure returns (uint256) {
        return x - y;
    }
}
