pragma solidity ^0.8.0;

contract solAlgorithm {
    uint256[] public Array = [55, 45, 34 ,43, 10];
    function bubbleSort() public pure returns (uint256[] memory) {
        //uint length = Array.length;
        uint[] memory arr = new uint[](4);
        arr[0] = 10;
        arr[1] = 2;
        arr[2] = 44;
        arr[3] = 32;
        uint length = arr.length;


        for(uint i=0; i<length-1; i++) {
            for(uint j=0; j<length-1; j++) {
                if(arr[j] > arr[j+1]) {
                    uint pivot = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = pivot;
                } 
            }
        }
        return arr;
    }

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