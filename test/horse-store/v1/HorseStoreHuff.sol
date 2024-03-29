// SPDX-License-Identifier: Unlicensed
pragma solidity 0.8.20;

import {BaseTest, HorseStore} from "./BaseTest.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";

contract HorseStoreHuff is BaseTest {
    string public constant HORSE_STORE_HUFF_PATH = "horse-store/v1/HorseStore";

    function setUp() public override {
        horseStore = HorseStore(HuffDeployer.config().deploy(HORSE_STORE_HUFF_PATH));
    }
}
