// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.15;

import 'forge-std/Script.sol';
import { DeployDAOV3DataContractsBase } from './DeployDAOV3DataContractsBase.s.sol';

contract DeployDAOV3DataContractsAmoy is DeployDAOV3DataContractsBase {
    address public constant NOUNS_DAO_PROXY_AMOY = 0x35d2670d7C8931AACdd37C89Ddcb0638c3c44A57;
    address public constant NOUNS_TIMELOCK_V2_PROXY_AMOY = 0x5EE7e01fc81211D84a27990cD2537BC6d339e912;

    constructor() DeployDAOV3DataContractsBase(NOUNS_DAO_PROXY_AMOY, NOUNS_TIMELOCK_V2_PROXY_AMOY) {}
}
