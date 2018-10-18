pragma solidity ^0.4.24;
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-solidity/master/contracts/token/ERC20/ERC20.sol";

contract TestToken is ERC20 {
    string public constant name = "Test Token";
    string public constant symbol = "TT";
    uint8 public constant decimals = 18;
}