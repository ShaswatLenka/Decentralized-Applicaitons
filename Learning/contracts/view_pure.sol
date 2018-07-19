pragma solidity ^0.4.22;

//Vulnerable Code : A getter function is changing the state of the contract

/*
contract viewPure{
  uint some_value;
  function getsomething() public returns (uint){
    some_value = 10;
    return some_value;
  }

}

*/

//The view and pure functions control the ability of a function to change the state of the contract
/* NOT ALLOWED WITHIN A FUNCTION
*Setting the value in storage variable
*emitting the events from a function 
*creating a new contract instance
*sending ethers
*using low level calls or EVM assembly
*using selfdestruct
*calling other funcitons that perform any of the above actions
*/

/*WRITTING CODE WITH VIEW AND PURE */
//Allowed to read the storage but cannot modify it
contract viewPure{
uint val = 10;
function getSomething() public view returns (uint){
  //no issues
  //return val;
  
  //not allowed
  val = 100;
}
// Not allowed to read or modify the state of the contract
function doSomething() public pure returns (uint){
  //not allowed
  //return val;
}

}
