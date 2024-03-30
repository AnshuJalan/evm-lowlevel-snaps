// SPDX-License-Identifier: Unlicensed
pragma solidity 0.8.20;

import {BaseTest} from "./BaseTest.sol";
import {HorseStore} from "horse-store/v1/HorseStoreYul.sol";
import {IHorseStore} from "horse-store/v1/interfaces/IHorseStore.sol";

contract HorseStoreYul is BaseTest {
    function setUp() public override {
        horseStore = new HorseStore();
    }
}
