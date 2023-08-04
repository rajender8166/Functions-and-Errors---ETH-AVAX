// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AssertionContract {
    uint256 public totalValue;

    // require() to ensure valid inputs.
    function setValue(uint256 _value) external {
        require(_value > 0, "Value must be greater than zero");
        totalValue = _value;
    }

    // assert() to check for invariants.
    function addValue(uint256 _value) external {
        uint256 oldValue = totalValue;
        uint256 newValue = oldValue + _value;
        assert(newValue >= oldValue); // Check for overflow
        totalValue = newValue;
    }

    // revert() to handle exceptional cases.
    function withdraw(uint256 _amount) external {
        require(_amount <= totalValue, "Not enough balance");
        totalValue -= _amount;

        // Simulate a failure scenario with a specific condition.
        if (_amount > 100) {
            revert("Withdrawal amount should not exceed 100");
        }
        
        // Withdraw logic here
    }
}
