pragma solidity ^0.8.0;
 
contract allowance {

    mapping( address => mapping(address => uint)) public allowance;
 
    //this function removes the spenders allowance
    function remove(address _addrOwner, address _addrSpender) public {
        delete allowance[_addrOwner][_addrSpender];
    }

    //this function adds the spenders allowance
    function remove(address _addrOwner, address _addrSpender) public {
        allowance[_addrOwner][_addrSpender] =
    }
}