
pragma solidity ^0.6.0;

//defining a "contract 
contract SimpleStorage {
    /*
    uint - unsigned integer
    int - integer
    bool - Boolean
    string - String
    address - address
    bytes - Bytes ( Convert the data into a bytes object )
    */

    // uint256 favoriteNumber = 5;
    // address myWalletAddr = 0x5303687A7F313A5493Dd9F5dA82702435921BEE2;
    // int256 favInt = -69;
    // bytes32 favBytes = "cat";
    // bool trueOrNot = true;
    // string charSeq = "This is  a char sequence";

    /*
    Functions and Variables can have diferent states:

    -public - everyone can have access 
    -private - only code inside of the actual contract can call the function 
    -external - cannot be call by internal functions , only external ones
    -internal - can only by call by code in the same contract or derrivative ones.
    */

    //This will get initialized to cero
    uint256 public fNumber;

    //function
    function store(uint256 _favoriteNumber) public {
        fNumber = _favoriteNumber;
    }

    //view, pure. View means that we want to read values/states from the blockchain.
    function retrive() public view returns(uint256){
        return fNumber;
    }
    //Pure is when we do pure type of math but we don't alterate states in the blockchain
    function add() public pure {
        fNumber + fNumber;
    }
}
//https://www.youtube.com/watch?v=M576WGiDBdQ
//Time: 1:51:11
