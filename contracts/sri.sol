// SPDX-Licence-identifier: Unlicense

pragma solidity ^0.8.0;

contract Foo {
    function acceptEther(address payable recipient,uint money) external returns (string memory){
money=2 ether;
        if(address(this).balance !=0){
            recipient.transfer(money);
            return "succes";
        }
        else{
        return "error";
        }
    }

    function viewBalance() external view returns(uint) {
        return address(this).balance;
    }
}