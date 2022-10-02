pragma solidity 0.5.10;

contract MyContract {

    mapping(address => uint256) public balances;
    address payable wallet;

    event Purchase(address indexed _buyer, uint256 amount);
// adding indexed will us to filter events from certain buyers/persons.

    constructor(address payable _wallet) public {
        wallet = _wallet;

    }

    // fallback function, ICOs use this where you buy the tokens via a smart contract

    function() external payable {
    buyToken();
    }

    // adding payable will ensure  the function can accept ether in the smart contract
function buyToken() public payable{
    // buy a token
    balances[msg.sender] += 1;
    wallet.transfer(msg.value);
    //msg.value will tell us how much ether was sent
    // send ether to the wallet

    // now trigger buyToken
    emit Purchase(msg.sender, 1);
}
// 2 main purposes for events.
// As the blockchain is async, 
// 1. REload applicaiton state once event state is updated as shown with buyToken
// 2. Get the entire event stream from the smart contract - getting the logs/purchases that have ever happened and subscribe to them
}