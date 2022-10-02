pragma solidity 0.5.10;

contract MyContract {
    // Person[] public people;
    // using mapping (associtive array)
    // Similar to a hash map in other langauges

 mapping(uint => Person) public people;

    uint256 public peopleCount = 0;

    address owner;

    uint256 openingTime = 1664678320;
    // opening times^

    // time is expressed as seconds in solidity.
    // get unix epoch time, and add seconds to it
    // https://www.epochconverter.com
    // Best way to get current time in solidity is to get the current blocks's time stamp

    modifier onlyWhileOpen() {
        // metadata key word
        // require will throw an error if condition is not met
        require(block.timestamp >= openingTime);
        _;
    }


    modifier onlyOwner() {
        // metadata key word
        // require will throw an error if condition is not met
        require(msg.sender == owner);
        _;
    }

    // struct = interface
    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }

    constructor() public {
    owner = msg.sender;
    // effectively only the contract owner can use the addPerson func.
    }

    // function addPerson(string memory _firstName, string memory _lastName) public {
    //     peopleCount +=1;
    //     people.push(Person(_firstName, _lastName));
    // } 

   function addPerson(

       string memory _firstName, 
       string memory _lastName
       ) 

       public onlyWhileOpen {
       incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    } 
// onlyWhileOpen good for situations such as a crowdselling, initial contract offering/sales
    function  incrementCount() internal {
        peopleCount +=1;
    }
    
}