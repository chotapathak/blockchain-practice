// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// make a contract that takes same inputs and add them to an array
contract Ledger{
    uint[] id;
    uint256[] balances;
    string[] names;   
    string[] email;

    mapping(uint => address) identi;

    function addEmp(string memory names, string memory email,uint balances,uint id) external {
        id = id;
        balances = balances;
        names = names;
        email = email;

    }

    function ledger() public {
        id = id ;
        balances = balances;
        names = names;
        email = email;
    } 
    function getLedger() public view returns(string memory , string memory, uint, uint256){
        return (id ,email,balances,names);
    }

}