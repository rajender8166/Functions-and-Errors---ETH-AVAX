// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Errorhanding{

    uint x=2;

    function test(uint c) public pure {
        assert(c!=0);
        // No assert() statement since we use require() instead.
        // The function will check if 'num' is not zero. If it is zero, it will revert with the specified error message.
    }

    function divide(uint _numerator,uint _denomenator) public pure returns(uint){
        if(_numerator<_denomenator){
            revert("Enter the number greater than denomentor");
        }
        return _numerator/_denomenator;
    }
    
    function mult(uint y) public view returns(uint){
        require(y>0,"Enter the Number greater than Zero");
        return y*x;
    }
}