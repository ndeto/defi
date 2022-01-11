pragma solidity ^0.7.0;

contract Owner {
    // function modifiers
    
    address owner;
    // msg.owner should be the owner on deploying the contract
    constructor() public{
        owner = msg.sender;
    }

    //statically declare with keyword modifier
    modifier onlyOwner{
        require(msg.sender == owner);
        //underscore continues the function
        _;
    }

    modifier costs(uint _price){
        require(msg.value >= _price);
        _;
    }
}

contract Register is Owner {
    mapping(address => bool) registeredAddresses;
    uint price;

    constructor(uint initialPrice) public { price = initialPrice; }

    function register() public payable costs(price) {
        registeredAddresses[msg.sender] = true;
    }

    // onlyOwner is a function modifier and only the owner can change the price.
    function changePrice(uint _price) public onlyOwner {
        price = _price;
    }
}