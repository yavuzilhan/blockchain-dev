//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Functions {
    uint number = 10;
    string title = "Blockchain Dev";

    //Access Classifiers: public, private, external, internal
    /*
        public: Hem Kullanıcılar tarafımdan hem de Contract'lar tarafından erişilebilir.
        private: Sadece bulunduğu Contract içinden erişilebilir.
        external: Kullanıcılar tarafından erişilebilir fakat Contract içinden erişilemez.
        internal: Private'dan farkı, miras alındığı Contract içinden de erişilebilir.
    */
    function setData(uint _number) public {
        number = _number;
    }
    function plusNumber(uint _number) private pure returns(uint){
        return _number += 1;
    }
    function getData() external view returns(uint){
        return plusNumber(number);
        //return getDataPure(); // pure to pure denemesi yap!
    }

    //Modifiers: pure, view
    /*
        pure: State'de değişiklik veya Contract'tan bir değer okumuyor, sadece eldeki verilerle işlem yapıyorsak.
        view: State'de herhangi bir değer değişikliği yapmıyor, sadece okuma odaklı işlem yapıyorsak.
    */
    function getDataPure() public pure returns(string memory){
        return "Blockchain Dev";
    }
    function getDataView() public view returns(string memory){
        return title;
    }

    //Multiple Return
    function multipleReturn1() public pure returns(uint, string memory){
        return(0,"Yavuz");
    }
    function multipleReturn2(uint id) public pure returns(uint _number, string memory _name){
        _number = 0;
        _name = "Yavuz";
    }
}