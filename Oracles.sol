pragma solidity ^0.8.7;

contract Oracle {
    address admin;
    uint public rand;

    constructor(){
        admin = msg.sender;
    }

    function setRand(uint _rand) external {
        require(msg.sender == admin);
        rand = _rand;
    }
}

contract GenerateRandomNumber {
    Oracle oracle;

    constructor (address oracleAddress) {
        oracle = Oracle(oracleAddress);
    }

    function randMod(uint range) external view returns(uint){ 
        // grab information from the blockchain randomly to generate random numbers - something dynamic
        // abi.encodePacked concatenates arguments nicely
        return uint(keccak256(abi.encodePacked(oracle.rand, block.timestamp, block.difficulty, msg.sender))) % range;
    }
}