pragma solidity 0.8.17;

contract Errorhanding{
    // uint public num=0;
    uint b=2;

    function testAssert(uint num) public pure {
        assert(num!=0);
        // No assert() statement since we use require() instead.
        // The function will check if 'num' is not zero. If it is zero, it will revert with the specified error message.
    }

    function divide(uint _numerator,uint _denomenator) public pure returns(uint){
        if(_numerator<_denomenator){
            revert("please provide numerator greater than denomenator");
        }
        return _numerator/_denomenator;
    }
    
    function mult(uint a) public view returns(uint){
        require(a>0,"value of a is zero, we don't want the result to be zero");
        return a*b;
    }
}