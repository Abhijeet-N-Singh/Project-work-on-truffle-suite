// SPDX-License-Identifier: MIT

pragma solidity ^0.5.16;
contract Adoption
{
    address[16] public adopters;

    // Adopting a pet

    function adopt(uint petId) public returns (uint)
    {
        require(petId >= 0 && petId <=15);
        adopters[petId]=msg.sender;
        return petId;
    }

    // Retrieving the adopters

    function getAdopters() public view returns (address[16] memory)
    {
        return adopters;
    }    
}
/// @notice Explain to an end user what this does
/// @dev Explain to a developer any extra details
/// @param Documents a parameter just like in doxygen (must be followed by parameter name)
/// @notice Explain to an end user what this does
/// @dev Explain to a developer any extra details
/// @param Documents a parameter just like in doxygen (must be followed by parameter name)