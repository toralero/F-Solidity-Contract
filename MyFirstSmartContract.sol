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


contract CreateUser {
  //State variables - it is stored on the blockchain, is it accesible inside the contract and if public modifier is applied also outside
  uint public myUint = 2;

  // uint == uint256; uint defaults to 256 the two are interchangeable
  uint8 public myUint8 = 1;
  uint256 public myUint256 = 100000000000;


  string public myString = "Helo, World!";


  uint[] public uintArray = [1,10];

  function getArrayValuebyIndex(uint _index) public view returns(uint) {
    return uintArray[_index];
  }

  //define a new strut
  struct User {
    string Username;
    uint ID;

  }

  //Array of Structs
  User[] users;

  //Local variables - value is only local to this function
  //creating a new instance of a new struct
  function createUser(string calldata _username, uint _ID) external returns(string memory) {
    User memory user1 = User(_username, _ID);
    users.push(user1);
    User storage user = users[0];
    return user.Username;
  }


  //address public myAddress = 0XA0B54D5DC17eAad43B91238dc92;


}
