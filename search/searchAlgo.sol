pragma solidity ^0.8.0;

contract searchAlgo {

    uint256[] _dynamicArr; //This is a dynamic array, that is the base of the algorithms, change this to whatever you want to use it.

    function seqSearch(uint256[] memory arr, uint256 _number, uint256 size) internal view returns(uint256) {
        if(size==0) return 99999;
        if(arr[size-1]==_number) return size-1;
        return seqSearch(arr, _number, size-1);
    }

    function callSeqSearch(uint256 _number) public view returns(uint256) {
        uint256 _result = seqSearch(_dynamicArr, _number, _dynamicArr.length);
        return _result;
    }
}