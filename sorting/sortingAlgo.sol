//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library sortingAlgo {

    //Receives an entire array of elements and only sort them and return the result, not changing the state of the array.
    function bubbleSort(uint256[] memory _arr) internal pure returns (uint256[] memory) {
        for(uint i=0; i<_arr.length-1; i++) {
            for(uint j=0; j<_arr.length-1; j++) {
                if(_arr[j] > _arr[j+1]) {
                    uint pivot = _arr[j];
                    _arr[j] = _arr[j+1];
                    _arr[j+1] = pivot;
                } 
            }
        }
        return _arr;
    }

	//Complete binary search implementation, receives an array, the number to search for, the start index and the end index.
    function binarySearch(uint256[] memory _arr, uint256 _number, uint low, uint high) internal pure returns(uint256) {
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

    //Iterative version of binary search, easier to call, only receives the array and the number to look for as parameters.
    function bSearch(uint256[] memory _arr, uint256 _number) public pure returns(uint256) {
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
