// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Person {
    string name;
    uint256 age;
    bool has_payed;
    uint256 value;

    function sayDetails() external view returns (string memory, uint256) {
        return (name, age);
    }

    function getDetails(string memory _name, uint256 _age) external {
        name = _name;
        age = _age;
    }

    function payFee() external payable {
        value = msg.value;
        has_payed = true;
    }

    function getValue() external view returns(uint256, uint256, bool) {
        return (value, address(this).balance, has_payed);
    }

}