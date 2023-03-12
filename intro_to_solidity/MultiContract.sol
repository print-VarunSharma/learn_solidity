pragma solidity ^0.5.1;


contract ERC20Token {
    string public name;
    mapping(address => uint256) public balances;

    function mint() public {
        //can be a real gotcha in solidity
        //msg.sender is the address of the contract in this case, not the person who sent the inital transaction
        // use tx.origin to get the initial person who initiated this function
        balances[tx.origin] ++;
    }
}

contract MyContract1 {

    address payable wallet;
    address public token;

   

    constructor(address payable _wallet, address _token) public {
        wallet = _wallet;
        token = _token;
    }

    function() external payable {
        buyToken();
    }


    function buyToken() public payable { 
        ERC20Token _token = ERC20Token(address(token));
        _token.mint();
        wallet.transfer(msg.value);
    }

}

