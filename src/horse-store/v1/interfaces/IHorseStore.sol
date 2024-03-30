// SPDX-License-Identifier: Unlicensed
pragma solidity 0.8.20;

interface IHorseStore {
    function updateHorseNumber(uint256 newNumberOfHorses) external;
    function readNumberOfHorses() external view returns (uint256);
}
