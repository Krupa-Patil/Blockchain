//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExampleStrings {

    string public myString = "Hello World";
    bytes public myBytes = unicode"Hello remixide";

    function setMyString(string memory _myString) public {
        myString = _myString;
    }

    //string compare
    function compareTwoStrings(string memory _myString) public view returns(bool) {
        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_myString));
    } // we can't directly compare two strings so we need to use keccak256( and this requires a single byte argument so we need to use abi.encodePacked)

    //byte length
    function getBytesLength() public view returns(uint) {
        return myBytes.length;
    }

}
