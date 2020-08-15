pragma solidity ^0.5;

contract MyContract {
    
    Person[] public people;
    
    uint256 public peopleCount;
    
    struct Person{
        string _firstName;
        string _lastName;
    }
    
    function addPerson(string memory _firstName, string memory _lastName) public{
        people.push(Person(_firstName,_lastName));
        peopleCount += 1;
    }
    
    enum State { Waiting, Ready, Active }
    
    State public state;
    
    constructor() public{
        state = State.Waiting;
    }
    
    function activate() public {
        state = State.Active;
    }
    
    function isActive() public view returns(bool){
        return state == State.Active;
    }
}