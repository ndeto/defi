pragma solidity ^0.7.0;

contract DecisionMaking{

    uint oranges = 6;

    function validateOranges() public view returns (bool) {
        if(oranges == 5){
            return true;
        } else {
            return false;
        }
    }

    uint stakingWallet = 10;

    function airDrop() public view returns (uint) {
        if (stakingWallet == 10) {
            return stakingWallet + 10;
        }
    }
}