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


    function getArr() public view returns(uint256[] memory) {
        return _dynamicArr;
    }

    function getLength() public view returns(uint256) {
        return _dynamicArr.length;
    }

    function addElement(uint256 _number) public returns(uint256[] memory) {
        _dynamicArr.push(_number);
        return _dynamicArr;
    }

    function deleteArr() public returns (uint256[] memory) {
        uint256 _arrLength = getLength();
        for (uint i=0; i<_arrLength; i++) {
            _dynamicArr.pop();
        }
        return _dynamicArr;
    }

    function deleteAtIndex(uint _index) public returns(bool) {
        _dynamicArr[_index] = _dynamicArr[_dynamicArr.length - 1];
        _dynamicArr.pop();
        return true;
    }
}