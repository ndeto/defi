pragma solidity 0.7.0;

contract LedgerBalance {
    // Wallets mapping
    //Set up amount to update the walet amount of the sender - msg.sender

    mapping(address => uint) public balance;

    function updateBalance(uint newBalance) public {
        balance[msg.sender] = newBalance;
    }
}

contract Updated {
    function updatesBalance() public {
        LedgerBalance ledgerBalance = new LedgerBalance();

        ledgerBalance.updateBalance(30);
    }
}