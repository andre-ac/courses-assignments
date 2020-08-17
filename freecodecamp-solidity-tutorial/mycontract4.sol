contract MyContract {
    
    mapping(address => uint256) public balances;
    address payable wallet;
    
    event Purchase(
        address indexed _buyer,
        uint256 _amount
    );
    
    constructor(address payable _wallet) public {
        wallet= _wallet;
    }
    
    function() external payable {
        buyToken;
    }
    
    function buyToken() public payable {
        // send ether to the wallet
        wallet.transfer(msg.value);
        
        emit Purchase(msg.sender, 1);
    }

    
}