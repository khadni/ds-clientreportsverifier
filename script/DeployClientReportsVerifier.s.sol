// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

import {Script} from "forge-std/Script.sol";
import {ClientReportsVerifier} from "../src/ClientReportsVerifier.sol";
import {console} from "forge-std/console.sol";

contract DeployClientReportsVerifier is Script {
    function run() external returns (ClientReportsVerifier) {
        vm.startBroadcast();
        ClientReportsVerifier clientReportsVerifier =
            new ClientReportsVerifier(0x2ff010DEbC1297f19579B4246cad07bd24F2488A);
        vm.stopBroadcast();

        return (clientReportsVerifier);
    }
}
