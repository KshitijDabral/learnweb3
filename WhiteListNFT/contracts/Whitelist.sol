// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract Whitelist{
    uint8 public maxWhitelistedAddresses;

    mapping(address => bool) public whiteListedAddresses;

    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddresses){
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }
    function addAddressToWhitelist() public {
        require(!whiteListedAddresses[msg.sender],"sender already has been whiteListed");
        require(maxWhitelistedAddresses > numAddressesWhitelisted,"more addresses can not be added");

        whiteListedAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1;
    }
}