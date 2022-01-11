pragma solidity 0.7.0;

contract GenerateRandomNumber {
    // Build a random number generator which takes an input range and uses cryptographic hashing
    // modulo (%) - so by computing against the remainder we willl be able to produce a random number within range

    Oracle oracle;

    constructor(){
        oracle = new Oracle()
    }

    function randMod(uint range) external view returns(uint){
        // grab information from the blockchain randomly to generate random numbers - something dynamic
        // abi.encodePacked concatenates arguments nicely
        return oracle.setRand(uint range)
    }
}

contract Oracle {
    address admin;
    uint public rand;

    constructor(){
        admin = msg.sender;
    }

    function setRand(uint _rand) external public {
        require(msg.sender == admin)
        rand = _rand;
    }
}