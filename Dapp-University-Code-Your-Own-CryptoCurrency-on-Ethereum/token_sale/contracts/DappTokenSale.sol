// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import "./DappToken.sol";

contract DappTokenSale {
        address admin;

        constructor() {
                admin = msg.sender;
        }
}