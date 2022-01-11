pragma solidity ^0.7.0;

contract Fallback {

    event Log(uint gas);

    fallback () external payable {
        //not recommended to have code. It will fail if too much gas
        // invoke send: we get 2300 gas which is enough to emit a log
        // invoke call: we get all the gas

        emit Log(gasleft());
    }

    function getBalance() public view returns(uint) {
        // Return the stored balance of the contract.
        return address(this).balance;
    }
}

// Contract to send ether to Fallback

contract SendToFallBack {
    function transferToFallBack(address payable _to) public payable {
        //This will send ether with transfer mwthod
        //Automatically transfer 2300 gas

        _to.transfer(msg.value);
    }

    function callFallBack(address payable _to) public payable {
        (bool sent,) = _to.call{value:msg.value}('');
        require(sent, "Failed to send");
    }
}