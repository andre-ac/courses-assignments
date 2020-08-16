pragma solidity ^0.5;

contract MyContract {
    
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;
    
    address owner;
    uint256 openingTime = 1597615111;
    
    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }
    
    modifier onlyWhileOpen(){
        require(block.timestamp >= openingTime);
        _;
    }
    
    struct Person{
        uint _id;
        string _firstName;
        string _lastName;
    }
    
    constructor() public{
        owner = msg.sender;
    }
    
    
    function addPerson(string memory _firstName, string memory _lastName) public onlyOwner {
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
    
    function addPersonPublic(string memory _firstName, string memory _lastName) public onlyWhileOpen {
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
    
    function incrementCount() internal {
        peopleCount +=1;
    }
}