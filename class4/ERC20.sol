// pragma solidity ^0.6.0;

interface IERC20 {
    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    function transfer(address recipient, uint256 amount)
        external
        returns (bool);

    function approve(address spender, uint256 amount) external returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}

contract ERC20Basic is IERC20 {
    string public constant name = "ERC20Basic";
    string public constant symbol = "ERC";
    uint8 public constant decimals = 18;

    event Approval2(
        address indexed tokenOwner,
        address indexed spender,
        uint256 tokens
    );
    event Transfer2(address indexed from, address indexed to, uint256 tokens);

    mapping(address => uint256) balances;

    mapping(address => mapping(address => uint256)) allowed;

    uint256 totalSupply_;

    using SafeMath for uint256;

    constructor(uint256 total) public {
        totalSupply_ = total;
        balances[msg.sender] = totalSupply_;
    }

    function totalSupply() public view override returns (uint256) {
        return totalSupply_;
    }

    function balanceOf(address tokenOwner)
        public
        view
        override
        returns (uint256)
    {
        return balances[tokenOwner];
    }

    /**
        Mueve la cantidad de tokens de la dirección de la persona que llama 
        a la función (msg.sender) a la dirección del destinatario. 
        Esta función emite el evento Transfer. 
        Devuelve verdadero si la transferencia fue posible. 
    */
    function transfer(address receiver, uint256 numTokens)
        public
        override
        returns (bool)
    {
        require(numTokens <= balances[msg.sender]);
        balances[msg.sender] = balances[msg.sender].sub(numTokens);
        balances[receiver] = balances[receiver].add(numTokens);
        emit Transfer2(msg.sender, receiver, numTokens);
        return true;
    }

    /**
        Establece la cantidad de token asignados que el address delegate 
        puede transferir desde el saldo de la función que llama (msg.sender). 
        Esta función emite el evento Aprobación. 
        La función devuelve true si la asignación se estableció correctamente.
    */
    function approve(address delegate, uint256 numTokens)
        public
        override
        returns (bool)
    {
        allowed[msg.sender][delegate] = numTokens;
        emit Approval2(msg.sender, delegate, numTokens);
        return true;
    }

    /**
    El estándar ERC-20 permite que una dirección dé una "asignación" 
    a otra dirección, y que esta pueda extraer tokens de la primera. 
    Este getter devuelve el número restante de tokens que el "delegate"
    podrá soliciar. 
    Esta función es un getter y no modifica el estado del contrato 
    y debería devolver 0 por defecto
    */
    function allowance(address owner, address delegate)
        public
        view
        override
        returns (uint256)
    {
        return allowed[owner][delegate];
    }

    /**
    Mueve la cantidad de tokens del remitente al destinatario mediante 
    el mecanismo de asignación. Luego, la cantidad se deduce de la 
    asignación de la persona que llama. 
    Esta función emite el evento Transferir.
    */
    function transferFrom(
        address owner,
        address buyer,
        uint256 numTokens
    ) public override returns (bool) {
        require(numTokens <= balances[owner]);
        require(numTokens <= allowed[owner][msg.sender]);

        balances[owner] = balances[owner].sub(numTokens);
        allowed[owner][msg.sender] = allowed[owner][msg.sender].sub(numTokens);
        balances[buyer] = balances[buyer].add(numTokens);
        emit Transfer2(owner, buyer, numTokens);
        return true;
    }
}

library SafeMath {
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        assert(b <= a);
        return a - b;
    }

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        assert(c >= a);
        return c;
    }
}

// fin   Ejemplo de una Implementación muy básica de la intereface IERC20


// ERC-20 1
