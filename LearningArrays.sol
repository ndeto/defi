pragma solidity ^0.7.0;

contract LearningArrays {

    uint[] public myArray;
    uint[] public myArray2;
    uint[200] public myFixedArray;

    //Push element

    function push(uint number) public {
        myArray.push(number);
    }

    //remove last element

    function pop() public {
        myArray.pop();
    }

    // Length

    function getLength() public view returns(uint) {
        return myArray.length;
    }

    // Delete

    function remove(uint i) public {
        delete myArray[i];
    }

    function replace(uint i) public {
        myArray[i] = 10;
    }
}

contract MyArrays{
    uint[] public changeArray;

    // constructor(){
    //     test();
    //     removeElement(1);
    // }

    function push(uint number) public {
        changeArray.push(number);
    }

    function removeElement(uint i) public {
        // Take the last elements value
        uint lastElementIndex = changeArray.length - 1;

        //Last element
        uint lastValue = changeArray[lastElementIndex];

        // Replace it with the element you want to delete
        changeArray[i] = lastValue;

        // Pop the last element
        changeArray.pop();
    }

    //prepopulate

    function test() public {
        for(uint i=1; i <= 4; i++){
            push(i);
        }
    }

    // Length

    function getLength() public view returns(uint) {
        return changeArray.length;
    }

    function getChangeArray() public view returns (uint[] memory) {
        return changeArray;
    }
}