// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// https://www.smartcontract.engineer/challenges/solidity-function

contract FunctionIntro {
    function add(uint256 x, uint256 y) external pure returns (uint256) {
        return x + y;
    }
}
