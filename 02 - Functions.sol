//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Functions {
    uint number = 15;
    string text = "Blockchain Dev";

    //Access Classifiers: public, private, internal, external
    function setData(uint _number) public {
        number = plusNumber(_number);
    }
    function plusNumber(uint _number) private pure returns(uint){
        return _number += 1;
    }
    function getData() external view returns(uint){
        return number;
    }

    //Modifiers: pure, view
    function getDataPure() public pure returns(string memory){
        return "Blockchain Dev";
    }
    function getDataView() public view returns(string memory){
        return text;
    }



    //Multiple Return
    function multipleReturn1() public pure returns(uint, string memory){
        return(0,"Yavuz");
    }
    function multipleReturn2() public pure returns(uint _number, string memory _name){
        _number = 0;
        _name = "Yavuz";
    }
}