// ERC-20 1

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
pragma solidity ^0.8.0;

// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DiploCoin is ERC20 {
    
    constructor(uint256 initialSupply) ERC20("DiploCoin", "DPC") {
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


// fin ERC-20 1

// UCHC token contract: 0x14A9b8D4be1706D0f2d355102148216D8820808e

// 0xfcc78031c38924B9bfE60795AE3903D6653882Bf
// 0xb15Ebc687bF3a241c6e548Ff10460fb8a996FaCc
// 0xE14196Fd709B395281481326c2f549fCf1059E16