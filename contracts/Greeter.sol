//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

// contract Greeter {
//     string private greeting;

//     constructor(string memory _greeting) {
//         console.log("Deploying a Greeter with greeting:", _greeting);
//         greeting = _greeting;
//     }

//     function greet() public view returns (string memory) {
//         return greeting;
//     }

//     function setGreeting(string memory _greeting) public {
//         console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
//         greeting = _greeting;
//     }
// }


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