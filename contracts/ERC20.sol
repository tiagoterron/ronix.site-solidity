pragma solidity ^0.5.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";

contract SLP is ERC20, ERC20Detailed {
    constructor() ERC20Detailed("SLP", "SLP", 0) public {
        _mint(msg.sender, 100000000 * 10 ** uint256(18));
    }
}
contract AXS is ERC20, ERC20Detailed {
    constructor() ERC20Detailed("AXS", "AXS", 18) public {
        _mint(msg.sender, 100000000 * 10 ** uint256(18));
    }
}
contract WETH is ERC20, ERC20Detailed {
    constructor() ERC20Detailed("WETH", "WETH", 18) public {
        _mint(msg.sender, 100000000 * 10 ** uint256(18));
    }
}
contract USDC is ERC20, ERC20Detailed {
    constructor() ERC20Detailed("USDC", "USDC", 6) public {
        _mint(msg.sender, 100000000 * 10 ** uint256(18));
    }
}
contract RON is ERC20, ERC20Detailed {
    constructor() ERC20Detailed("RON", "RON", 18) public {
        _mint(msg.sender, 100000000 * 10 ** uint256(18));
    }
}
contract BNB is ERC20, ERC20Detailed {
    constructor() ERC20Detailed("BNB", "BNB", 18) public {
        _mint(msg.sender, 100000000 * 10 ** uint256(18));
    }
}
contract MATIC is ERC20, ERC20Detailed {
    constructor() ERC20Detailed("MATIC", "MATIC", 18) public {
        _mint(msg.sender, 100000000 * 10 ** uint256(18));
    }
}
contract AVAX is ERC20, ERC20Detailed {
    constructor() ERC20Detailed("AVAX", "AVAX", 18) public {
        _mint(msg.sender, 100000000 * 10 ** uint256(18));
    }
}