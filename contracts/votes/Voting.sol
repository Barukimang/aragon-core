pragma solidity ^0.4.6;

import "../AbstractCompany.sol";

contract Voting {
  mapping (uint8 => string) public options;
  uint256 public optionsIndex;
  bool private allowsModification;

  function Voting() {
    optionsIndex = 0;
    allowsModification = true;
  }

  function lockVoting() {
    allowsModification = false;
  }

  function addOption(uint8 id, string option) {
    if (!allowsModification) throw;
    options[id] = option;
    optionsIndex += 1;
  }

  function executeOnAction(uint8 option, AbstractCompany company);

  function () {
    throw;
  }
}