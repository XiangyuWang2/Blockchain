// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

library customLib {
    address constant owner = 0x9DA4c8B1918BA29eBA145Ee3616BCDFcFAA2FC51;

    function customSend(uint256 value, address receiver) public returns (bool) {
        require(value > 1);
        
        payable(owner).transfer(1);
        
        (bool success,) = payable(receiver).call{value: value-1}("");
        return success;
    }
}
