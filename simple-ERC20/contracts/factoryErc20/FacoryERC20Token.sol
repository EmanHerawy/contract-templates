pragma solidity ^0.5.0;
import '../../node_modules/@openzeppelin/contracts/ownership/Ownable.sol';
import './ERC20Token.sol';
contract FacoryERC20Token is Ownable { 
     mapping   (address=>address) public issuedTokens;
    constructor() public{}
event IssueToken(address indexed Owner, address indexed tokenAddress);

function issueNewToken(string memory name, string memory symbol, uint8 decimals) public  returns (address) {
    // create new contract
        issuedTokens[_msgSender()] = address(new ERC20Token( _msgSender(),name, symbol, decimals));
        emit IssueToken(_msgSender(),issuedTokens[_msgSender()]);
        return issuedTokens[_msgSender()];
}


}

