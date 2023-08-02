// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandling {

    uint x = 2;

    function merci(uint c) public pure returns (string memory) {
        require(c != 0, "Input must be non-zero.");
        // Instead of using assert, we use require to check if 'c' is not zero.
        // If it is zero, the function will revert with the specified error message.
        // If it is not zero, the function will return a message indicating success.
        return "Success! Input is non-zero.";
    }

    function raju(uint _numerator, uint _denominator) public pure returns (uint) {
        require(_denominator != 0, "Denominator cannot be zero.");
        // Instead of using revert, we use require to check if the denominator is not zero.
        // If it is zero, the function will revert with the specified error message.
        // If the denominator is not zero, the function will proceed with the calculation.
        return _numerator / _denominator;
    }
    
    function rajender(uint y) public view returns (uint) {
        if (y == 0) {
            // Instead of using require, we use an if-else statement to check if 'y' is greater than zero.
            // If 'y' is zero, the function will return an error code (e.g., 0) to indicate an error condition.
            return 0;
        }
        // If 'y' is not zero, the function will return the result of multiplying 'y' with the contract state variable 'x'.
        return y * x;
    }
}
