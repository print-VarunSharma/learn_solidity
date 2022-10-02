pragma solidity 0.5.10;

contract MyContract {
    // Person[] public people;
    // using mapping (associtive array)
    // Similar to a hash map in other langauges

 mapping(uint => Person) public people;

    uint256 public peopleCount = 0;

    // struct = interface
    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }

    // function addPerson(string memory _firstName, string memory _lastName) public {
    //     peopleCount +=1;
    //     people.push(Person(_firstName, _lastName));
    // } 

   function addPerson(string memory _firstName, string memory _lastName) public {
        peopleCount +=1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    } 


}