pragma solidity ^0.5.8;

import './interfaces/IRNB.sol';
import './lib/SathMath.sol';
import '@openzeppelin/contracts/lifecycle/Pausable.sol';

contract RNB_Protocol is IRNB, Pausable {
    using SafeMath for uint256;
    constructor() Pausable() public {}
    /*-------------------------- MAINNET --------------------------------- */
    // address SLPAddress = 0x070a08beef8d36734dd67a491202ff35a6a16d97;
    // address AXSAddress = 0x715d400f88c167884bbcc41c5fea407ed4d2f8a0;
    // address WETHAddress = 0x2170ed0880ac9a755fd29b2688956bd959f933f8;
    // address USDCAddress = 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d;
    /*-------------------------------------------------------------------- */
    /*-------------------- ETHEREUM (ROPSTEN) ---------------------------- */
    // address SLPAddress = 0x5dF7622c41c3a3d43EBbF3AC8B59d3ACDB6Eb9e9;
    // address AXSAddress = 0x892B78f588a125c75d4EF9bA7135ff4468C4A2b0;
    // address WETHAddress = 0x45DD6A6af28126aA8170A5fe952993EFCce4951c;
    // address USDCAddress = 0x81469E6dc22F8E4D5D1Dc7EF4f6e8f2E5fE597Da;
    // address RONAddress = 0x8b47d02Dfeedae0eB7c3FA401DEb2B29f366Df23;
     /*-------------------------------------------------------------------- */
    /*--------------- BINANCE SMART CHAIN (TESTNET) ----------------------- */
    // address SLPAddress = 0x65CEC8494cffE2845bc0C1bB115eDaa551DD74c9;
    // address AXSAddress = 0xc24f3e4e29152530ba38781679c1246FABeCb212;
    // address WETHAddress = 0x747e1667d92C338694b20E043f4A0074dB1496d4;
    // address USDCAddress = 0x1564ea2730894c4872abE5dd7cE00daBe9F7D242;
    // address RONAddress = 0x50C40046BAb46c2Eeda8250DfA6229f2A5425537;
    // address MATICAddress = 0x1014Be8A545e258C60Be95aA4309E34AbE1dD813;
    // address AVAXAddress = 0xB63405C9D5792d522366D0FD8d669a53359450E8;
    // address BNBAddress = 0xc08fe501c6c1F3847BA6E63d2522C68F81cD0780;
     /*-------------------------------------------------------------------- */
    /*--------------- BINANCE SMART CHAIN (MAINNET) ----------------------- */
    address SLPAddress = 0x070a08BeEF8d36734dD67A491202fF35a6A16d97;
    address AXSAddress = 0x715D400F88C167884bbCc41C5FeA407ed4D2f8A0;
    address WETHAddress = 0x2170Ed0880ac9A755fd29B2688956BD959F933F8;
    address USDCAddress = 0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d;
    address MATICAddress = 0xCC42724C6683B7E57334c4E856f4c9965ED682bD;
    address AVAXAddress = 0x1CE0c2827e2eF14D5C4f29a091d735A204794041;
    address BNBAddress = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    /*-------------------------------------------------------------------- */
    /*--------------- POLYGON (TESTNET) ----------------------- */
    // address SLPAddress = 0xEA9f57D549BDd23163a63b5Dc786c2372507FC7c;
    // address AXSAddress = 0xbc43f52c33b9930Fc9ba3DCc05fee191aB23A499;
    // address WETHAddress = 0xb5965EBA62731d81B327Dd1557d4F7d834E1b333;
    // address USDCAddress = 0x22D434B072D7B6D7970860d0E3503baf2eDFA53b;
    // address RONAddress = 0x1357D3C7adD9Cf2331E52767f43C2040040D20d0;
    // address MATICAddress = 0x28AEAbEdbc6AE078611b0d2136b5856cC078E1B9;
    // address AVAXAddress = 0x1c31C092e2C1AaCfc6d83a4304807Adf1249fC7d;
    // address BNBAddress = 0xC4dDE7C4428604f082689C11bFC3e8864165FCbB;
     /*-------------------------------------------------------------------- */
    /*--------------- AVAX (TESTNET) ----------------------- */
    // address SLPAddress = 0x892B78f588a125c75d4EF9bA7135ff4468C4A2b0;
    // address AXSAddress = 0x24F28cd11e22292FDe89f647FDA0235F45285c1a;
    // address WETHAddress = 0xbc43f52c33b9930Fc9ba3DCc05fee191aB23A499;
    // address USDCAddress = 0x45DD6A6af28126aA8170A5fe952993EFCce4951c;
    // address RONAddress = 0x104B5653967b821c02bfD3E93D61f7AA9f568EB5;
    // address MATICAddress = 0x28AEAbEdbc6AE078611b0d2136b5856cC078E1B9;
    // address AVAXAddress = 0x35F2557Bb12444ab2dbAbB0DA805b6C88e331140;
    // address BNBAddress = 0x1357D3C7adD9Cf2331E52767f43C2040040D20d0;
     /*-------------------------------------------------------------------- */
    /*--------------- AVAX (MAINNET) ----------------------- */
    // address WETHAddress = 0x49D5c2BdFfac6CE2BFdB6640F4F80f226bc10bAB;
    // address USDCAddress = 0xB97EF9Ef8734C71904D8002F8b6Bc66Dd9c48a6E;
    // address MATICAddress = 0xf2f13f0B7008ab2FA4A2418F4ccC3684E49D20Eb;
    // address AVAXAddress = 0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7;
    // address BNBAddress = 0x442F7f22b1EE2c842bEAFf52880d4573E9201158;
     /*-------------------------------------------------------------------- */

    IRNB SLPToken;
    IRNB AXSToken;
    IRNB RONToken;
    IRNB WETHToken;
    IRNB USDCToken;
    IRNB MATICToken;
    IRNB AVAXToken;
    IRNB BNBToken;

    mapping (address => uint256) private _balances;
    mapping (address => mapping (address => uint256)) private _allowances;

    uint256 private _totalSupply;
    uint256 internal _limitSupply;

    string internal _name;
    string internal _symbol;
    uint8 internal _decimals;

    function name() public view returns (string memory) {
        return _name;
    }

    function symbol() public view returns (string memory) {
        return _symbol;
    }

    function decimals() public view returns (uint8) {
        return _decimals;
    }

    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    function limitSupply() public view returns (uint256) {
        return _limitSupply;
    }
    
    function availableSupply() public view returns (uint256) {
        return _limitSupply.sub(_totalSupply);
    }    

    function balanceOf(address account) public view returns (uint256) {
        return _balances[account];
    }

    function transfer(address recipient, uint256 amount) public whenNotPaused returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }

    function allowance(address owner, address spender) public view returns (uint256) {
        return _allowances[owner][spender];
    }

    function approve(address spender, uint256 amount) public returns (bool) {
        _approve(msg.sender, spender, amount);
        return true;
    }

    function transferFrom(address sender, address recipient, uint256 amount) public whenNotPaused returns (bool) {
        _transfer(sender, recipient, amount);
        _approve(sender, msg.sender, _allowances[sender][msg.sender].sub(amount));
        return true;
    }

    function increaseAllowance(address spender, uint256 addedValue) public returns (bool) {
        _approve(msg.sender, spender, _allowances[msg.sender][spender].add(addedValue));
        return true;
    }

    function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool) {
        _approve(msg.sender, spender, _allowances[msg.sender][spender].sub(subtractedValue));
        return true;
    }

    function _transfer(address sender, address recipient, uint256 amount) internal {
        require(recipient != address(0), "ERC20: transfer to the zero address");
        _balances[sender] = _balances[sender].sub(amount);
        _balances[recipient] = _balances[recipient].add(amount);
        emit Transfer(sender, recipient, amount);
    }

    function _mint(address account, uint256 amount) internal {
        require(account != address(0), "ERC20: mint to the zero address");
        _totalSupply = _totalSupply.add(amount);
        _balances[account] = _balances[account].add(amount);
        emit Transfer(address(0), account, amount);
    }

    function _burn(address account, uint256 amount) internal {
        require(account != address(0), "ERC20: burn from the zero address");
        _balances[account] = _balances[account].sub(amount);
        _totalSupply = _totalSupply.sub(amount);
        emit Transfer(account, address(0), amount);
    }

    function _approve(address owner, address spender, uint256 amount) internal {
        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

}



contract RONIXToken is RNB_Protocol {
    mapping (address => bool) private _contracts;

    constructor() public {
        _name = "Ronix LP";
        _symbol = "RLP";
        _decimals = 18;
        
    }
}

contract RONIX is RONIXToken {

    event Transfers(address indexed _address, string _name, uint _amount, uint _network, bytes32 _hash);

    address payable private ADMIN;    
    address payable private SUBADMIN;    
    uint private TotalLiquidityProviders;  
    uint private FEE_LP = 9;    
    uint private FEE_PROTOCOL = 1;
    uint private constant PERCENT_DIVIDER   = 1000; 
  
    mapping(address => User) private users;
    mapping(address => mapping(address => LP)) private lp;
    mapping(address => Liquidity) private liquidities;
    mapping(address => uint256) private FeeSwapToLP;
    mapping(address => uint256) private FeeSwapToLPClaimable;
    mapping(address => uint256) private FeeSwapToProtocol;
    mapping(address => uint256) private TotalLiquidityToken; 
    mapping(address => uint) private TotalLiquidityProvidersToken; 
    mapping(address => mapping(address => mapping(bytes32 => bool))) private CompletedTransfers; 
    mapping(address => mapping(address => mapping(uint => mapping(bytes32 => uint)))) private TransfersByUsers; 
    mapping(address => mapping(uint => address)) private LiquidityProviders;

    struct User {
        LP Liquidity;
    }

    struct LP{
        uint256 total;
        uint256 rewards;
        uint checkpoint;
        bool claimed;
    }

    struct Liquidity{
        uint256 TotalLiquidity; 
    }

    constructor() public {
        SLPToken = IRNB(SLPAddress);
        AXSToken = IRNB(AXSAddress);
        RONToken = IRNB(RONAddress);
        WETHToken = IRNB(WETHAddress);
        USDCToken = IRNB(USDCAddress);
        MATICToken = IRNB(MATICAddress);
        AVAXToken = IRNB(AVAXAddress);
        BNBToken = IRNB(BNBAddress);
        ADMIN = msg.sender;
        SUBADMIN = 0x804CeA8C083414f3Cc614B54327B6f106E38d971;
    }       

     
    modifier onlyOwner {
        require(msg.sender == ADMIN, "Only owner can call this function");
        _;
    }
    modifier onlySubOwner {
        require(msg.sender == SUBADMIN, "Only sub-owner can call this function");
        _;
    }

     function transferOwnership(address payable _newOwner) external onlyOwner {
        ADMIN = _newOwner;
    } 

    function getAdmin() public view returns(address){
        return ADMIN;
    }
    
    function addLiquidity(uint256 _amount, IRNB _token, uint _lp) external payable {
        require(_amount > 0, "The amount must be greater than 0");
        _token.transferFrom(msg.sender, address(this), _amount);
        if (lp[msg.sender][address(_token)].total == 0) {
            lp[msg.sender][address(_token)].checkpoint = now;
            _addLiquidityProvider(_token);
        }
        _mint(msg.sender, _lp);  
        lp[msg.sender][address(_token)].total = lp[msg.sender][address(_token)].total.add(_amount);
        TotalLiquidityToken[address(_token)] = TotalLiquidityToken[address(_token)].add(_amount);
    }
    function _addLiquidityProvider(IRNB _token) private {
        LiquidityProviders[address(_token)][TotalLiquidityProvidersToken[address(_token)]] = msg.sender;
        TotalLiquidityProvidersToken[address(_token)] = TotalLiquidityProvidersToken[address(_token)].add(1);
        TotalLiquidityProviders++;
    }
    
    function removeLiquidity(uint256 _amount, IRNB _token) external payable {
        require(_amount > 0, "The amount must be greater than 0");
        require(lp[msg.sender][address(_token)].total > 0, "You do not have any liquidity in the pool!");
        require(_token.balanceOf(address(this)).sub(FeeSwapToLP[address(_token)]).sub(FeeSwapToProtocol[address(_token)]).sub(FeeSwapToLPClaimable[address(_token)]) >= _amount, "There's no enough liquidity in this pool! Please, try it again later!");
        _token.transfer(msg.sender, _amount);
        _burn(msg.sender, _amount); 
        lp[msg.sender][address(_token)].total = lp[msg.sender][address(_token)].total.sub(_amount);
        TotalLiquidityToken[address(_token)] = TotalLiquidityToken[address(_token)].sub(_amount);
        if (lp[msg.sender][address(_token)].total <= 0) {
            lp[msg.sender][address(_token)].checkpoint = now;
            _removeLiquidityProvider(_token);
        }
    }

    function _removeLiquidityProvider(IRNB _token) private {
        for(uint i = 0; i < TotalLiquidityProvidersToken[address(_token)]; i++){
            if(LiquidityProviders[address(_token)][i] == msg.sender){
                LiquidityProviders[address(_token)][i] = address(0);
                TotalLiquidityProviders--;
            }
            
        }
    }

    function receiveTokens(address _userAddress, IRNB _token, uint256 _amount, bytes32 _data, uint _network) external  payable {
        require(_amount > 0, "The amount must be greater than 0");
        require(msg.sender == _userAddress, "Something went wrong!");
        _token.transferFrom(msg.sender, address(this), _amount);
        bytes32 txHash =  _data;
        TransfersByUsers[_userAddress][address(_token)][_network][txHash] = _amount;
        emit Transfers(_userAddress, "RECEIVE", _amount, _network, txHash);
    }

    function revertTransaction(address _userAddress, IRNB _token, uint256 _amount, bytes32 _hash, uint _network) external payable onlyOwner{
        require(TransfersByUsers[_userAddress][address(_token)][_network][_hash] > 0, "This transactions does not exists!");
         _token.transfer(_userAddress, _amount);
         TransfersByUsers[_userAddress][address(_token)][_network][_hash] = 0;
    }

    function transferTokens(address _userAddress, IRNB _token, uint256 _amount, bytes32 _hash) external payable whenNotPaused onlyOwner {
        require(_token.balanceOf(address(this)).sub(FeeSwapToLP[address(_token)]).sub(FeeSwapToProtocol[address(_token)]).sub(FeeSwapToLPClaimable[address(_token)]) >= _amount, "There's no enough liquidity in the pool!");
        require(CompletedTransfers[_userAddress][address(_token)][_hash] == false, "Transaction already completed!");
        uint256 amount = _amount;
        uint256 FeeLP = amount.mul(FEE_LP).div(PERCENT_DIVIDER);
        uint256 FeeProtocol = amount.mul(FEE_PROTOCOL).div(PERCENT_DIVIDER);
        amount = amount.sub(FeeLP).sub(FeeProtocol);
        FeeSwapToLP[address(_token)] = FeeSwapToLP[address(_token)].add(FeeLP);
        FeeSwapToProtocol[address(_token)] = FeeSwapToProtocol[address(_token)].add(FeeProtocol);
        CompletedTransfers[_userAddress][address(_token)][_hash] = true;
        _token.transfer(_userAddress, amount);
        emit Transfers(_userAddress, "TRANSFER", amount, 56, _hash);
    }   

    function payFeeToLP(address _token) external onlyOwner {
        require(FeeSwapToLP[_token] > 0, "There's no enough fees accumulated yet!");
        uint256 TotalAmount = TotalLiquidityToken[_token];
        uint256 FeeToPay = FeeSwapToLP[_token];
        uint256 TotalTokensByUser;
        uint256 Fee;
        address _addr;
        for(uint i = 0; i < TotalLiquidityProvidersToken[_token]; i++){
            if(LiquidityProviders[_token][i] == address(0)) continue;
            _addr = LiquidityProviders[_token][i];
            TotalTokensByUser = lp[_addr][_token].total;
            Fee = FeeToPay.mul(TotalTokensByUser).div(TotalAmount);
            lp[_addr][_token].rewards = lp[_addr][_token].rewards.add(Fee);
            FeeSwapToLPClaimable[_token] = FeeSwapToLPClaimable[_token].add(Fee);
        }
        FeeSwapToLP[_token] = 0;
    }

    function claimRewardsLP(IRNB _token) external payable{
        uint _amount = lp[msg.sender][address(_token)].rewards;
        require(lp[msg.sender][address(_token)].rewards > 0, "You do not have any rewards available yet!");
        require(_token.balanceOf(address(this)) >= _amount, "There's no enough liquidity in this pool! Please, try it again later!");
        _token.transfer(msg.sender, _amount);
        FeeSwapToLPClaimable[address(_token)] = FeeSwapToLPClaimable[address(_token)].sub(_amount);
        lp[msg.sender][address(_token)].rewards = 0;
        lp[msg.sender][address(_token)].claimed = true;
        lp[msg.sender][address(_token)].checkpoint = now;
    } 

    function claimRewardsProtocol(IRNB _token) external payable onlyOwner{
        uint _amount = FeeSwapToProtocol[address(_token)];
        require(FeeSwapToProtocol[address(_token)] > 0, "You do not have any rewards available yet!");
        _token.transfer(msg.sender, _amount);
        FeeSwapToProtocol[address(_token)] = 0;
    } 

    function SafeTransfer(IRNB _token, address _address, uint _amount) external payable whenPaused onlySubOwner {
         _token.transfer(_address, _amount);
    }
    
     function getUserTotalLiquidity(address _tokenAddress, address _userAddress) public view returns(uint){
        return lp[_userAddress][_tokenAddress].total;
    }

    function getUserRewards(address _token, address _addr) public view returns(uint){
        return lp[_addr][_token].rewards;
    }

    function getBalanceOfToken(IRNB _token) public view returns(uint){
        return _token.balanceOf(address(this));
    }
    
    function getAvailableLiquidityOfToken(IRNB _token) public view returns(uint){
        return _token.balanceOf(address(this)).sub(FeeSwapToLP[address(_token)]).sub(FeeSwapToProtocol[address(_token)]).sub(FeeSwapToLPClaimable[address(_token)]);
    }

    function getTotalLiquidityToken(address _tokenAddress) public view returns(uint){
        return TotalLiquidityToken[_tokenAddress];
    }


    function getAddressLiquidityProviderToken(address _token, uint _index) public view returns(address){
        return LiquidityProviders[_token][_index];
    }

    function getTransaction(address _userAddress, IRNB _token, uint _network, bytes32 _hash) public view returns(uint){
    return TransfersByUsers[_userAddress][address(_token)][_network][_hash];
    }

    function getTotalLiquidityProvidersTokens(address _token) public view returns(uint){
        return TotalLiquidityProvidersToken[_token];
    }

    function getLPSwapRewards(address _token) public view returns(uint){
        return FeeSwapToLP[_token];
    }

    function adminUpdateFeeLP(uint _fee) external onlyOwner {
        FEE_LP = _fee;
    }
    function adminUpdateFeeProtocol(uint _fee) external onlyOwner {
        FEE_PROTOCOL = _fee;
    }

    function getFeeLP() public view returns(uint) {
        return FEE_LP;
    }

    function getFeeProtocol() public view returns(uint) {
        return FEE_PROTOCOL;
    }
    

    
}