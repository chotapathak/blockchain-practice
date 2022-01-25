// SPDX-License-Identifier: Unlicense 

pragma solidity ^0.8.2;

// make a erc20 token contract 
contract erc20 {
    // token name
    string public name;
    // token symbol
    string public symbol;
    // token decimals
    uint8 public decimals;
    // total supply
    uint256 public totalSupply;
    // token balances
    mapping (address => uint256) public balances;

    // constructor
    // function erc20(string name, string symbol, uint8 decimals, uint256 totalSupply) {
    //     this.name = name;
    //     this.symbol = symbol;
    //     this.decimals = decimals;
    //     this.totalSupply = totalSupply;
    //     balances[msg.sender] = totalSupply;
    // }

    // transfer token
    function transfer(address to, uint256 value) public {
        require(balances[msg.sender] >= value);
        balances[msg.sender] -= value;
        balances[to] += value;
    }

    // transfer token from another address
    function transferFrom(address from, address to, uint256 value) public {
        require(balances[from] >= value);
        require(allowed[from][msg.sender] >= value);
        balances[from] -= value;
        balances[to] += value;
        allowed[from][msg.sender] -= value;
    }

    // approve token transfer
    function approve(address to, uint256 value) public {
        allowed[msg.sender][to] += value;
    }

    // get token balance
    function balanceOf(address who) public view returns (uint256) {
        return balances[who];
    }

    // get allowance
    function allowance(address owner, address spender) public view returns (uint256) {
        return allowed[owner][spender];
    }

    // approve another address to transfer token
    mapping (address => mapping (address => uint256)) public allowed;
}
