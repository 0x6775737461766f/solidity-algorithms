pragma solidity ^0.8.0;

contract sortingAlgo {

    uint256[] Array; //Placeholder

    //Receives an entire array of elements and only sort them and return the result, not changing the state of the array.
    function bubbleSort(uint256[] memory _arr) public pure returns (uint256[] memory) {
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

    //Bubble sorts an already defined array, changing its state to a sorted one.
    function bubbleSorter() public returns (uint256[] memory) {
        uint length = Array.length;

        for(uint i=0; i<length-1; i++) {
            for(uint j=0; j<length-1; j++) {
                if(Array[j] > Array[j+1]) {
                    uint pivot = Array[j];
                    Array[j] = Array[j+1];
                    Array[j+1] = pivot;
                } 
            }
        }
        return Array;
    }
}