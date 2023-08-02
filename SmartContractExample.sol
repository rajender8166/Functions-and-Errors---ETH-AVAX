// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandling {
    uint private x = 2;

    // Error codes
    uint constant ERR_DIVISION_BY_ZERO = 1001;
    uint constant ERR_NUMBER_TOO_SMALL = 1002;
    uint constant ERR_NUMBER_TOO_LARGE = 1003;
    uint constant ERR_INPUT_NOT_POSITIVE = 1004;

    // Function to check if the input is not zero and return a custom error code on failure.
    function merci(uint c) public pure returns (uint) {
        if (c == 0) {
            return ERR_DIVISION_BY_ZERO; // Custom error code indicating division by zero.
        }
        // Return a success code or value.
        return 0;
    }

    // Function to perform division and return the result or a custom error code on failure.
    function raju(uint _numerator, uint _denominator) public pure returns (uint) {
        if (_denominator == 0) {
            return ERR_DIVISION_BY_ZERO; // Custom error code indicating division by zero.
        } else if (_numerator < _denominator) {
            return ERR_NUMBER_TOO_SMALL; // Custom error code indicating numerator is smaller than denominator.
        }
        // Return the division result.
        return _numerator / _denominator;
    }

    // Function to perform multiplication, but return a custom error code on failure instead of reverting.
    function rajender(uint y) public view returns (uint) {
        if (y <= 0) {
            return ERR_INPUT_NOT_POSITIVE; // Custom error code indicating the input is not positive.
        }
        // Return the result of multiplying 'y' with the contract state variable 'x'.
        return y * x;
    }
}
