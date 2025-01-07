// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.15;

import 'forge-std/Script.sol';
import { DeployDAOV3NewContractsBase } from './DeployDAOV3NewContractsBase.s.sol';

contract DeployDAOV3NewContractsAmoy is DeployDAOV3NewContractsBase {
    address public constant NOUNS_DAO_PROXY_AMOY = 0x35d2670d7C8931AACdd37C89Ddcb0638c3c44A57;
    address public constant NOUNS_TIMELOCK_V1_AMOY = 0x5EE7e01fc81211D84a27990cD2537BC6d339e912;
    uint256 public constant FORK_DAO_VOTING_PERIOD = 40; // 8 minutes
    uint256 public constant FORK_DAO_VOTING_DELAY = 1;

    constructor()
        DeployDAOV3NewContractsBase(
            NOUNS_DAO_PROXY_AMOY,
            NOUNS_TIMELOCK_V1_AMOY,
            true,
            FORK_DAO_VOTING_PERIOD,
            FORK_DAO_VOTING_DELAY
        )
    {}
}
