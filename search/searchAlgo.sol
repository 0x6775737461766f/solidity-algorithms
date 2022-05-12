//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Search {

	//Recursive linear/sequential search.
    function seqSearch(uint256[] memory _arr, uint256 _number, uint256 size) internal view returns(uint256) {
        if(size==0) return 99999;
        if(_arr[size-1]==_number) return size-1;
        return seqSearch(_arr, _number, size-1);
    }

	//REQUIREMENTS: Already sorted array.
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

	//REQUIREMENTS: Already sorted array.
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

    //Function that returns true if the given number is present on the given array.
    function isPresent(uint256[] memory _arr, uint256 _number) internal pure returns (bool) {
        for (uint i = 0; i <_arr.length-1; i++) {
            if (_arr[i] == _number) return true;
        }
        return false;
    }
}
