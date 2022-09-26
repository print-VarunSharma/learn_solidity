pragma solidity ^0.5.0;

/* 
Scope of local variables is limited to function in which they are defined but State variables can have three types of scopes.

Public − Public state variables can be accessed internally as well as via messages. For a public state variable, an automatic getter function is generated.

Internal − Internal state variables can be accessed only internally from the current contract or contract deriving from it without using this.

Private − Private state variables can be accessed only internally from the current contract they are defined not in the derived contract from it.

*/

contract C {
    unit public data = 30;
    unint internal iData = 10;

    function x() public returns (uint) {
        data = 3; // internal access
        return data;

    }
}

contract Caller {
    C c= new C();
    function f() public view returns (uint) {
        return c.data(); //external access
    }
}

Contract D is C {
    function y() public returns (uint) {
        iData = 3; // internal access
        return iData;
    }

    function getResult() public view returns(uint) {
        uint a = 1; // local variable

        uint b = 2;
        uint result a + b;
        return storedData; // access the state variable
    }
}