// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract BasicMath {

    function adder(uint _a, uint _b) external pure returns (uint sum, bool error) {
        unchecked{
            sum = _a + _b;
            if(sum >= _a || sum >= _b){
                return (sum, false);
            } else{
                return (0, true);
            }

        }
    }

    function subtractor(uint _a, uint _b) external pure returns (uint difference, bool error) {
        unchecked{
            difference = _a - _b;
            if(difference <= _a){
                return (difference, false);
            } else{
                return (0, true);
            }

        }
    }
}