// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract SimpleStorage {
    uint public value;
    constructor() {
        value = 0;
    }
    function increment() public {
        value += 1;
    }
    function decrement() public {
        require(value > 0, "Value cannot be less than zero");
        value -= 1;
    }
    function getValue() public view returns(uint) {
        return value;
    }
}