// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import "./DappToken.sol";

contract DappTokenSale {
        address admin;
        DappToken public tokenContract;
        uint256 public tokenPrice;

        constructor(DappToken _tokenContract, uint256 _tokenPrice) {
                admin = msg.sender;
                tokenContract = _tokenContract;
                tokenPrice = _tokenPrice;
        }
}