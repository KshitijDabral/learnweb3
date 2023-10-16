// SPDX-License-Identifier : 
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFTee is ERC721
{
    constructor () ERC721("NFTee","ITM")
    {
        _mint(msg.sender, 1);
    }
}