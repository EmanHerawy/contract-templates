pragma solidity ^0.5.0;
import '../../node_modules/@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol';
import '../../node_modules/@openzeppelin/contracts/ownership/Ownable.sol';
import '../../node_modules/@openzeppelin/contracts/token/ERC20/ERC20Mintable.sol';
contract ERC20Token is Ownable, ERC20Detailed, ERC20Mintable {
    constructor(address _owner,string memory name, string memory symbol, uint8 decimals) public
   ERC20Mintable()   ERC20Detailed ( name, symbol,  decimals){
        _transferOwnership(_owner);
   }
}
    