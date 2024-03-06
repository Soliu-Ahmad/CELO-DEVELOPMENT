// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


import './Person.sol';

contract TestContract{
    function callGetDetails(address _test, string memory _name, uint256 _age) external {
        Person(_test).getDetails(_name, _age);
    }

    function callSayDetails(address _test) external view returns (string memory, uint256) {
        return Person(_test).sayDetails();
    }

    function callpayFee(address _test) external payable {
        Person(_test).payFee();
    }

    function callgetValue(address _test) external view returns(uint256, uint256, bool) {
        return Person(_test).getValue();
    }
}