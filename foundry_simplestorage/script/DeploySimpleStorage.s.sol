// SPDX-License-Identifier: MIT
// License identifier specifying that the contract uses the MIT license, which is permissive.

pragma solidity ^0.8.19; 
// Specifies the Solidity version required for this contract.

import "forge-std/Script.sol"; 
// Imports the `Script.sol` file from Forge Standard Library, which provides scripting utilities.

import {SimpleStorage} from "../src/SimpleStorage.sol"; 
// Imports the `SimpleStorage` contract from the `src` directory. 
// This contract will be deployed using this script.

contract DeploySimpleStorage is Script { 
// Defines a contract named `DeploySimpleStorage` that extends `Script` from Foundry.

    function run() external returns (SimpleStorage) { 
    // Defines an external function `run` that deploys the `SimpleStorage` contract.
    // It returns an instance of `SimpleStorage`.

        vm.startBroadcast(); 
        // Starts broadcasting transactions, allowing the contract to be deployed on a blockchain.
        // `vm` is a special cheat code provided by Foundry to interact with transactions.

        SimpleStorage simpleStorage = new SimpleStorage(); 
        // Creates a new instance of the `SimpleStorage` contract and deploys it.

        vm.stopBroadcast(); 
        // Stops broadcasting transactions, meaning no further transactions will be executed.

        return simpleStorage; 
        // Returns the deployed instance of `SimpleStorage`.
    }
}
 