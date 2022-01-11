pragma solidity 0.7.0;

contract Member {
    string public name;
    uint public age;

    constructor(string memory _name, uint _age) public {
        name = _name;
        age = _age;
    }
}

contract Teacher is Member{

    constructor(string memory _n, uint a) Member(_n, a) public {}

    function getName() public view returns (string memory){
        return name;
    }
}

contract Base{
    uint ourNum;

    constructor(uint _ourNum){
        ourNum = _ourNum;
    }
}

contract Derived is Base {

    constructor(uint _num) Base(_num) public {}

    function getNum() public view returns (uint){
        return ourNum;
    }
}