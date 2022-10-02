pragma solidity 0.5.10;
import "./Math.sol";
import "./SafeMath.sol";


contract MyContract {
    // use self-created libraries to adhere to DRY principle.
    uint256 public value;

    using SafeMath for uint256;

    function calculate(uint _value1, uint _value2) public {
        // value = _value1 / _value2;
       value = Math.divide(_value1, _value2);

// using SafeMath we can do this => :D 
           value = _value1.div(_value2);

    }
}