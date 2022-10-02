// SPDX-License-Identifier: MIT
pragma solidity ^0.5.1;

contract MyContract {
    string value;
    // This is global, where this value will be stored on the blockchain

constructor() public {
    value = "my value";
}

    function get() public view returns(string memory) {
    // Adding public, is declaring visibility to the function
    return value;
    } 
    function set(string memory _value) public {
        // we're using the prepended _ to value to tell solidity that 
        // it's a local variable

        value = _value;
    }
}