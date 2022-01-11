pragma solidity ^0.7.0;

contract C {
    uint external data = 10;

    function x() internal pure returns (uint) {
        return 25;
    }

    function y() public pure returns (uint) {
        return x();
    }
}