pragma solidity ^0.7.0;

// Fries have large , medium or small
contract enums {
    enum frenchFriesSize {LARGE, MEDIUM, SMALL}

    frenchFriesSize choice;
    frenchFriesSize constant defaultChoice = frenchFriesSize.MEDIUM;

    function setSmall() public {
        choice = frenchFriesSize.SMALL;
    }

    function getChoice() public view returns(frenchFriesSize) {
        return choice;
    }

    function getDefaultChoice() public view returns(uint) {
        return uint(defaultChoice);
    }
}

contract Shirts {
    enum shirtColor {RED, WHITE, BLUE}

    shirtColor choice;
    shirtColor constant defaultChoice = shirtColor.BLUE;

    function setWhite() public {
        choice = shirtColor.WHITE;
    }

    function getChoice() public view returns(shirtColor){
        return choice;
    }

    function getDefaultChoice() public view returns(shirtColor){
        return defaultChoice;
    }
}