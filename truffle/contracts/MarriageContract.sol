// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MarriageContract {
    string public epoux;
    string public epouse;
    uint256 public dateMariage;
    bool public estMarie;

    constructor(string memory _epoux, string memory _epouse, uint256 _marriageDate) {
        epoux = _epoux;
        epouse = _epouse;
        dateMariage = _marriageDate; // Utilisez le paramètre "_marriageDate" ici
        estMarie = false;
    }

    function celebrateMarriage() public {
        require(!estMarie, "Le mariage a deja ete fait");
        require(block.timestamp >= dateMariage, "Le mariage n'a pas encore ete fait");
        
        estMarie = true;
    }

    function getMarriageDetails() public view returns (string memory, string memory, uint256, bool) {
        return (epoux, epouse, dateMariage, estMarie);
    }
}
