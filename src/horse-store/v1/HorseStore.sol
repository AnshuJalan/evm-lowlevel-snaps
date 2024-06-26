// SPDX-License-Identifier: Unlicensed
pragma solidity 0.8.20;

import {IHorseStore} from "./interfaces/IHorseStore.sol";

contract HorseStore is IHorseStore {
    uint256 numberOfHorses;

    function updateHorseNumber(uint256 newNumberOfHorses) external {
        numberOfHorses = newNumberOfHorses;
    }

    function readNumberOfHorses() external view returns (uint256) {
        return numberOfHorses;
    }
}
