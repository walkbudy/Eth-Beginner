// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyTokens {
    string public name = "Supra";
    string public abbr = "mk4";
    uint public total_amount = 0;

    mapping (address => uint) public account_balance;

//Function credit_value is declared here in which is crediting the amount in the account  
    function credit_value (address add, uint val) public {
        total_amount += val;
        account_balance[add] += val;
    }

//Function debit_value is declared here in which is debiting the amount from the account 

    function debit_value(address add, uint val) public {
        total_amount -= val;
        account_balance[add] -= val;
    }   
}
