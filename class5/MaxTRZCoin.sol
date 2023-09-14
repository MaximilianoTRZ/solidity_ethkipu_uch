/*
Un contrato de tokens es simplemente un smart contract de Ethereum!. 
"Enviar tokens" en realidad significa:
"llamar a un método en un contrato inteligente que alguien escribió e implementó". 
Al final del día, un contrato de tokens no es mucho más que un mapping de 
direcciones a saldos, además de algunos métodos para sumar y restar de esos saldos.

¡Eso es todo! Estos saldos podrían considerarse dinero, puntos de experiencia 
en un juego, escrituras de propiedad o derechos de voto, 
y cada uno de estos tokens se almacenaría en diferentes contratos de tokens.

npm i @openzeppelin/contracts

*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract UCHCoin is ERC20 {
    
    constructor(uint256 initialSupply) ERC20("MaxTRZCoin", "MTRZ") {
        _mint(msg.sender, initialSupply);
    }
    
}
    // *** Sobre Decimales ***
    
    // por default, ERC20 usa un valor de 18 para decimales, 
    // al igual que Ether y la mayoría de los tokens ERC20
    // Para usar un valor diferente, debemos sobreescribor la función decimals()

    // function decimals() public view virtual override returns (uint8) {
    //     return 16;
    // }

    // Si queremos enviar 5 tokens utilizando un contrato de token con 18 decimales, 
    // el método será:
    // transfer(recipient, 5 * 10^18);


// FIN UCHCoin.sol **************************************************

