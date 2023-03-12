pragma solidity ^0.5.1;

contract MyContract {
    string public value = "myString";
    // string public constant value = "myValue";
    bool public myBool = true;
    //signed or unsigned int
    int public myInt = 1;
    // uint can be unsigned. Uint cannot be negative
    uint public myUint = 1;
    uint8 public myUint8 = 8;
    uint256 public myUnint256 = 258


    /* 
    In Solidity, int and uint are the base data types for signed and unsigned integers respectively, while uint8 and uint256 are specific subtypes of uint that specify the number of bits used to store the value. Here are the main differences between them:

int: represents a signed integer, which can be positive or negative. It uses two's complement representation to store the value. The default size of int is 256 bits.
uint: represents an unsigned integer, which can only be positive. It also uses two's complement representation to store the value. The default size of uint is 256 bits.
uint8: is a subtype of uint that represents an unsigned integer with 8 bits of storage. The range of values it can represent is from 0 to 2^8-1 (i.e., 0 to 255).
uint256: is a subtype of uint that represents an unsigned integer with 256 bits of storage. The range of values it can represent is from 0 to 2^256-1 (i.e., 0 to 2^256 minus one).
In general, it is recommended to use the smallest data type that can represent the values you need to store in order to conserve gas and reduce storage costs. For example, if you only need to store values from 0 to 255, you can use uint8 instead of uint256 to save gas and reduce storage costs.

*/

    enum State {Waiting, Ready, Active}
    // 0 1 2 
    State public state;

    constructor() public {
        state = State.Waiting

    }

    function activate() public {
        state = State.Active
    }

    function isActive() public view returns (bool) {
        return state = State.Active
    }


    // constructor() public {
    //     value = "myValue";
    // }


function get() public view returns(string memeory) {
    return value;
}

function set(string memory _value) public {
    value = _value;
    /* 
    In the function set(string _value) public, the parameter name is _value which has an underscore prefix. This is a convention in Solidity to distinguish between function arguments and global variables or state variables of the contract.

By using an underscore prefix, it helps to avoid naming conflicts between the function arguments and the contract state variables. Without the underscore prefix, it would be ambiguous which value variable is being referred to in the function set(string value) public.

In summary, the underscore prefix in the function argument name is just a naming convention to differentiate function arguments from contract state variables.
    */
}
}

contract MyStrucContract {

    // Person[] public people;

    mapping(uint => Person) public people

    uint256 public peopleCount; 

    uint256 openingTime = 1544669745;

    address owner;

    modifier onlyOwner() {
        msg.sender == owner

        require(msg.sender == owner);
        _;
        
    }


    modifier onlyWhileOpen() {
        require(block.timestamp >= openingTime);
        _;
    }

    constructor() public {
        owner = msg.sender
    }

    // public onlyOwner
    public onlyWhileOpenS


    struct Person {
    string _firstName;
    string _lastName;
    }

    

    function AddPerson(string memory _firstName, string memory _lastName) public onlyOwner {
       
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
        people.push(Person(_firstName, _lastName));

    }

        public onlyWhileOpen


    function incrementCount() internal {
        peopleCount +=1
    }
}

contract MyContract2 {

    mapping(address => uint256) public balances;

    address payable wallet;

    event Purchase(address _buyer, unint _amount);

    constructor(address payable _wallet) public {
        wallet = _wallet;
    }

    function() external payable {
        buyToken();
    }


    function buyToken() public payable {
        // buy a token
        balances[msg.sender] +=1;
        wallet.transfer(msg.value);
        // send ether to the wallet
        emit Purchase(msg.sender, 1)
        
    }

}

contract ERC720Token {
    string public name
    mapping(address => uint256) public balances;

    function mint() public {
        balances[msg.sender] ++;
    }
}