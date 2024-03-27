// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

import "forge-std/Script.sol";
import "../src/Storage.sol";
contract Deploy is Script{
 function run() external returns (Storage){
    //vm等cheatCode只在foundry框架下有效
    vm.startBroadcast();

    Storage newStorage =  new Storage();
    vm.stopBroadcast();
    return newStorage;
 }
}