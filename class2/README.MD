# Clase 2 Solidity

Se empezó con un contrato sencillo llamado Register al que se le va añadiendo cada vez más funcionalidad.

Universidad Champagnat

https://pad.riseup.net/p/ethkipu-uch-02

Programación Blockchain con Solidity
Clase 2

Discord ETH KIPU
https://discord.gg/UfUEHeuXu3

MATERIAL DE REFERENCIA - CURSO SOLIDITY MAYO-JULIO 2023
https://docs.google.com/document/d/1EJ8z_xNj71SHQdVatYTO8ADS7An_GBE7kpHER7Fhhgs/edit

### Nombre
- ignacio palma
- Exequiel De Carlini
- JavierBrizuela
- Mariana Brachetta
- Pritz Alejandrina
- Carolina Canessa
- Javier Rosenstein
- Maximiliano Rivero Zuin
- Agustin Ezequiel Astudillo
- Marcelo Palma
- Lucas Molina


register 1

// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;
 
contract Register {
    string private storedInfo;

    function setInfo(string memory myInfo) external {
        storedInfo = myInfo;
    }

    function getInfo() external view returns (string memory) {
        return storedInfo;
    }
}



- License
https://spdx.org/licenses/

Variables:
Solidity supports three types of variables.
        State Variables − Variables whose values are permanently stored in a contract storage.
        Local Variables − Variables whose values are present till function is executing.
        Global Variables − Special variables exists in the global namespace used to get information about the blockchain.

- Variables Visibility and Getters
https://docs.soliditylang.org/en/v0.8.20/contracts.html#visibility-and-getters


register3

// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

/// @title Concepts: Constructor
/// @author Solange Gueiros
contract Register03 {
    string private storedInfo;
    uint public countChanges = 0;

    /**
    * Constructor is a function which is called only when the contract is been deployed
    * It is used to initialize variables and states
    */
    constructor() {
        storedInfo = "Hello world";
        // Will countChanges count the initial set? 
        // To be discussed in class
        // Here is not counting
    }
    
    /**
    * Store `myInfo`
    * Manage how many times storedInfo is updated
    * @dev stores the string in the state variable `storedInfo` 
    * @dev Increase the counter
    * @param myInfo the new string to store
    */
    function setInfo(string memory myInfo) external {
        storedInfo = myInfo;
        countChanges++;
    }
    
    /**
    * Return the stored string
    * @dev retrieves the string of the state variable `storedInfo`
    * @return the stored string
    */
    function getInfo() external view returns (string memory) {
        return storedInfo;
    }  
}

- Types 
https://docs.soliditylang.org/en/v0.8.20/types.html#value-types

- Integer Ranges
https://mavlevin.com/2023/02/22/Size-Matters-Solidity-Integer-Range-Cheatsheet-From-uint8-To-uint256.html

- NatSpec Format
https://docs.soliditylang.org/en/develop/natspec-format.html
https://www.npmjs.com/package/solidity-docgen

register4

// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

/// @title Concepts: Type address, msg.sender, owner, if
/// @author Solange Gueiros
contract Register04 {
    string private storedInfo;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    /**
    * Store `myInfo`
    * Check if the account sending the transaction is the contract owner.
    * In affirmative case, update `myInfo` and increase the counter.
    * Otherwise, nothing will happen.
    * @dev check if msg.sender is the owner, update `storedInfo` and increase the counter
    * @param myInfo the new string to store
    */
    function setInfo(string memory myInfo) external {
        if (msg.sender == owner) {
            storedInfo = myInfo;
        }
    }

    /**
    * Return the stored string
    * @dev retrieves the string of the state variable `storedInfo`
    * @return the stored string
    */
    function getInfo() external view returns (string memory) {
        return storedInfo;
    }
}

Auditoría
https://www.youtube.com/@JohnnyTime/videos

register5

// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

/// @title Concepts: require owner
/// @author Solange Gueiros
contract Register05 {
    string private storedInfo;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    /**
    * Store `myInfo`
    * Require that the account sending the transaction is the contract owner.
    * If not, exits returning an error message. 
    * If require is valid, continue execution.
    * @dev require msg.sender is the owner, otherwise send an error message
    * @param myInfo the new string to store
    */
    function setInfo(string memory myInfo) external {
        require(msg.sender == owner, "Only owner");
        storedInfo = myInfo;
    }

    /**
    * Return the stored string
    * @dev retrieves the string of the state variable `storedInfo`
    * @return the stored string
    */
    function getInfo() external view returns (string memory) {
        return storedInfo;
    }   
}
