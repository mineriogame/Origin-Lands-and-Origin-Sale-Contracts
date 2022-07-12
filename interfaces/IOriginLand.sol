// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

interface IOriginLand {

    /**
     * the land info struct 
     */
    struct LandInfo {
        uint tokenId;
        uint cityCode;
        uint district;
        uint landType;
        uint blocksCount;
        uint number;
    }


    function getLandInfo(uint _tokenId) external view returns(LandInfo memory);


    function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256);


    function balanceOf(address owner) external view returns (uint256);


    function getLand(uint _id)external view returns(LandInfo memory);

    function transferFrom(address from,address to,uint256 tokenId ) external;

    function ownerOf(uint256 tokenId) external view returns (address);

}