// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Supply.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract Carrier is ERC1155, ERC1155Supply, Ownable {
    constructor()
        ERC1155(
            "https://bafybeibwjreiwevxbkrnkyvbtgi4uvy6uyotlg55kwkjkbqxb73lwafotq.ipfs.nftstorage.link/1.json"
        )
    {}

    string public name = "Arcana ka public collection wow";

    /**
     * @notice Airdrop a token to multiple addresses at once.
     * No strict supply is set in the contract. All methods are ownerOnly,
     * it is up to the owner to control the supply by not minting
     * past their desired number for each token.
     * @dev Airdrop one token to each address in the calldata list,
     * setting the supply to the length of the list + previously minted (airdropped) supply. Add an addess once per
     * token you would like to send.
     * @param _list address[] list of wallets to send 1 token to, each.
     */
    function airdrop(address[] calldata _list) external onlyOwner {
        for (uint256 i = 0; i < _list.length; ) {
            _mint(_list[i], 0, 1, "");
            unchecked {
                i++;
            }
        }
    }

    function _beforeTokenTransfer(
        address operator,
        address from,
        address to,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    ) internal override(ERC1155, ERC1155Supply) {
        super._beforeTokenTransfer(operator, from, to, ids, amounts, data);
    }
}
