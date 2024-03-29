//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Sort {

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
}
