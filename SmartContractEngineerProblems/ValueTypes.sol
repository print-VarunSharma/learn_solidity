// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/* 
1. Create a public bool variable named b equal to true
2. Create a public int variable named i. Set the value to a negative integer.
3. Create a public uint variable named u. Set the value to 123.
4. Create a public address variable named addr. Set the value to 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4.
5. Create a public bytes32 variable named b32. Set the value to 0x89c58ced8a9078bdef2bb60f22e58eeff7dbfed6c2dff3e7c508b629295926fa.


*/

contract ValueTypes {
    bool public b = true;

    int256 public i = -1;

    uint256 public u = 123;

    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    bytes32 public b32 =
        0x89c58ced8a9078bdef2bb60f22e58eeff7dbfed6c2dff3e7c508b629295926fa;
}
