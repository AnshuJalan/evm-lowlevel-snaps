// SPDX-License-Identifier: Unlicensed
pragma solidity 0.8.20;

import {Test} from "forge-std/Test.sol";
import {HorseStore} from "horse-store/v1/HorseStore.sol";

abstract contract BaseTest is Test {
    HorseStore internal horseStore;

    function setUp() public virtual {
        horseStore = new HorseStore();
    }

    function test_readNumberOfHorses() external view {
        uint256 horseNumber = horseStore.readNumberOfHorses();
        assertEq(horseNumber, 0);
    }

    function test_updateHorseNumber(uint256 newNumberOfHorses) external {
        horseStore.updateHorseNumber(newNumberOfHorses);
        assertEq(horseStore.readNumberOfHorses(), newNumberOfHorses);
    }
}
