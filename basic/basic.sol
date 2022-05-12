pragma solidity ^0.8.0;

library basic {

	//Return all of the elements in an array.
    function getArr(uint256[] memory _arr) internal pure returns(uint256[] memory) {
        return _arr;
    }

	//Return the length of given array.
    function getLength(uint256[] memory _arr) internal pure returns(uint256) {
        return _arr.length;
    }
}
