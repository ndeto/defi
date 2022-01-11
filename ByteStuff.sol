pragma solidity ^0.7.0;

contract ByteStuff {
    string favouriteColor = 'Blue';

    function getChars() public view returns (uint){
        bytes memory stringBytes = bytes(myString);

        return stringBytes.length;
    }
}