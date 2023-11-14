// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    function store(uint256 _favoriteNumber) public override {
        fn = _favoriteNumber + 5;
    }
}