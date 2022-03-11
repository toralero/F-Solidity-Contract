// Every solidity file starts with declarig what ver you can use
pragma solidity ^0.8.0;


//This is a smart contract
contract MyContract {
  uint value =1;


  //public - can be called iternally & externally;
  //view - getter methods, can see cannot modify;
  //returns - must declare type of return;
  function get() public view returns (uint) {
    return value;
  }

  function double() public {
    value *= 2;
  }
}




contract BankDeposit {

}
