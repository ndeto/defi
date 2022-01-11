pragma solidity ^0.7.0;

contract Overloading {
    function y(uint why, uint zed) public pure returns(uint) {
        return why + zed;
    }

    function y(uint ex, uint why, uint zed) public pure returns(uint) {
        return ex + why + zed;
    }

     function callY() public pure returns(uint) {
         return y(5,5,5); 
     }

     function callX() public pure returns(uint) {
         return y(5,5); 
     }
}
