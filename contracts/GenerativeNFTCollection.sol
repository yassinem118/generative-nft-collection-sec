//SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract GenerativeNFTCollection is ERC721 {
    uint256 public maxSupply= 10000;
    uint256 public mintPrice= 0.05 ether;
    uint256 public maxMintPerTx = 5;
    uint256 public totalSupply;

    constructor() ERC721("Generative NFT Collection", "GNFT") {} 
   
    function Mint(uint256 quantity) public payable {
        require(quantity > 0 && quantity <= maxMintPerTx, "Invalid quantity");
        require(totalSupply + quantity <= maxSupply, "Max supply exceeded");
        require(msg.value == mintPrice * quantity, "Incorrect payment");

        for (uint256 i = 0; i < quantity; i++) {
            _safeMint(msg.sender, totalSupply + i + 1);
        }

        totalSupply += quantity;
    }


}
