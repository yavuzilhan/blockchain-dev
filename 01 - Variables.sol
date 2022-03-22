//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Variables{
    //Fixed-Size Types
    bool trueOrFalse; // Defaullt false
    int numberInt; // int256, int128 ...
    uint numberUint; // uint256, uint128 ...
    address eAddress; // 20 Byte
    bytes32 nameByteFixed = "Yavuz ilhan"; // 1 to 32 Byte fixed size -> HEX

    //Dynamic-Size Types
    string nameString = "Yavuz ilhan";
    bytes nameByteDynamic = "Yavuz ilhan";
    string[] names = ["Yavuz","ilhan","Ahmet","Veli"]; //String Array
    uint[] numbers = [1,2,3,4,5]; //Uint Array
    mapping(uint => string) userList; // key-value -> userList[3] = "Veli"

    //User-Defined Types
    struct Human {
        uint Id;
        string name;
        uint age;
    }
    /*
        Human person;
        person.Id = 0;
        person.name = "Yavuz";
        person.age = 40;
    */
    enum Status {
        PLANNED,
        IN_PROGRESS,
        READY,
        RELEASED
    }
    /* 
        Status taskStatus;
        function setStatus() public {
            taskStatus = status.READY;
        }
    */

    //State Variables
    string public course ="Blockchain Dev";

    function showInfo() public view returns(string memory){
        //Local Variables
        string memory info = " Course";
        return string(abi.encodePacked(course, info, " Section"));
    }

    //Global Variables
    //Ether
    uint _Wei = 1 wei;
    uint _Gwei = 1 gwei; // 10^9 wei
    uint _Ether = 1 ether; // 10^18 wei
    //Time
    uint second = 1 seconds;
    uint minute = 1 minutes; // 60 seconds
    uint hour = 1 hours; // 60 minutes -> 3600 seconds
    uint day = 1 days;
    uint week = 1 weeks;
    //Block and Transaction
    uint blockNumber = block.number;
    uint gasLimit = block.gaslimit;
    address sender = msg.sender;
    uint value = msg.value;
    uint gasPrice = tx.gasprice;
    /*
        https://docs.soliditylang.org/en/v0.8.10/units-and-global-variables.html
    */
}