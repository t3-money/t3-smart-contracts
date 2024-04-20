// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

//pragma experimental ABIEncoderV2;

// Interface for Molecule Protocol Smart Contract
interface IMoleculeController {
 
//     // Use default logic combination
     function check(address toCheck) external view returns (bool);

    // Use custom logic combination, passed in as an array of list ids
    function check(
        uint32[] memory ids,
        address toCheck
    ) external view returns (bool);
 }