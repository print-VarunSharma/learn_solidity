pragma solidity 0.5.10;

contract ERC20Token {
    string public name;
    mapping(address => uint256) public balances;

    constructor(string memory _name) public {
     name = _name;
 }
function mint() public {
    // balances[msg.sender]++;
        balances[tx.origin]++;
        // this will use the address of the inital sender, rather than last input address which can lead to bad issues

    }
    // if we call this from another contract (not directly)
    // the msg.sender is the addresss of the other contract not the user address

}
// 2 step process
// we need the token contract address first,
// then instantiate the second contract, and mint the 1st contract
contract MyContract {

    mapping(address => uint256) public balances;
    address payable wallet;

    address public token;

    constructor(address payable  _wallet) public {
        wallet = _wallet;

    }

    // fallback function, ICOs use this where you buy the tokens via a smart contract

    function() external payable {
    buyToken();
    }

    // adding payable will ensure  the function can accept ether in the smart contract
function buyToken()  public payable{
    // buy a token
     ERC20Token _token = ERC20Token(address(token));
    // local variable is appended via _, (reminder)
    // This will now reference to the token and use the deployed 1st contract
   _token.mint();

   // => shorthand way: ERC20Token _token = ERC20Token(address(token)).mint()
   // ERC20Token
    wallet.transfer(msg.value);
    //msg.value will tell us how much ether was sent
    // send ether to the wallet

}

}


contract MyToken is ERC20Token {
    string public symbol;
    string public name = "my token";
    address[] public owners;
    uint256 public ownerCount; 
    constructor(string memory _name, string memory _symbol) ERC20Token(_name) public {
        symbol = _symbol;
    }


    function mint() public {
        super.mint();
        ownerCount++;
        owners.push(msg.sender);
    }
}