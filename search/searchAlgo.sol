//SPDX-License-Identifier: MIT
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


	//A recursive aproach of the binary search algorithm
	function binarySearch(uint256[] memory _arr, uint256 _number, uint low, uint high) public pure returns(uint256) {
		 if (high >= low) {
            uint mid = low + (high - low) / 2;

            if (_arr[mid] == _number)
            return mid;

            if (_arr[mid] > _number)
            return binarySearch(_arr, _number, low, mid - 1);

            return binarySearch(_arr, _number, mid + 1, high);
        }
        return 99999;
	}


	//Without the need of a recursive function
    function bSearchIterative(uint256[] memory _arr, uint256 _number) public pure returns(uint256) {
        uint256 low = 0;
        uint256 high = _arr.length-1;
        while (high >= low) {
            uint256 mid = low + (high - low) / 2;

            if (_arr[mid] == _number) return mid;
            if (_arr[mid] < _number) low = mid + 1;
            else high = mid - 1;
        }
        return 99999;
    }
}
