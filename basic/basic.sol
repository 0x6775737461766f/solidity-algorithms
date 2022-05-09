pragma solidity ^0.8.0;

contract basic {

    function getArr(uint256[] memory _arr) public pure returns(uint256[] memory) {
        return _arr;
    }

    function getLength(uint256[] memory _arr) public pure returns(uint256) {
        return _arr.length;
    }
}