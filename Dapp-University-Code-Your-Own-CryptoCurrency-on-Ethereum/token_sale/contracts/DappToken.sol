// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract DappToken{
        string public name="Le Token";
        string public symbol="TKN";
        string public standard="Le Token v1.0";
        uint256 public totalSupply;

        mapping(address => uint256) public balanceOf;

        constructor (uint256 _initialSupply){
                balanceOf[msg.sender] = _initialSupply;
                totalSupply = _initialSupply;
        }

        function transfer(address _to, uint256 _value) public returns (bool success){
                require(balanceOf[msg.sender] >= _value);

        }

}
