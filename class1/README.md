# UCH Class 1: Smart Contract Introduction.

![Solidity](https://cointral.com/wp-content/uploads/2019/11/solidity-nedir.png)



## Smart Contract Deployed
Remix IDE was used to develop, compile and deploy this Smart Contract to the Spolia testnet.
https://sepolia.etherscan.io/tx/0xc60255af99da642d7028c709f12a0360a565544e7eb893869ce19838b844f2cd

## Faucet

![Faucet](https://sepolia-faucet.pk910.de/images/progress.gif)

- https://faucetlink.to/sepolia

- https://sepolia-faucet.pk910.de/

- https://sepoliafaucet.com/

- https://www.infura.io/faucet/sepolia


# Apuntes de clase

Universidad Champagnat

https://pad.riseup.net/p/ethkipu-uch-01

Programación Blockchain con Solidity
Clase 1

Discordia ETH KIPU
https://discord.gg/UfUEHeuXu3

MATERIAL DE REFERENCIA - CURSO SOLIDEZ MAYO-JULIO 2023
https://docs.google.com/document/d/1EJ8z_xNj71SHQdVatYTO8ADS7An_GBE7kpHER7Fhhgs/editar

CARTERAS
https://docs.google.com/presentation/d/1jVGsZPoXDy-vsYhovgbCvhltqG02rKY79bZLEQ6lIds/edit#slide=id.g2092d6c72d5_0_19

Enlace de metamáscara
https://metamask.io/download/

UCHINTERNO
FUSMA@Intern o


### Nombre
- Exequiel De Carlini NombreContrato: 0xAA55ca317b30e0A8858Ff6370dbE55C20412A5a1
- uriel de carlini
- guillermo koch 
- guillermo gonzales
- Marcelo Palma contrato: 0xbe39081f49B0F73b43dAee74afDFDcb03F5ba19c
- Carolina Canessa
- Matías Magni 0xb15Ebc687bF3a241c6e548Ff10460fb8a996FaCc Contrato: 0x632ECF693D85D3a1e33D3AB4720e416Dc4d2cf4B
- Maximiliano Rivero Zuin 0xd2AC337981ECB1e44b8eE95e7B89D9B5cC27a0Bf
- Franco Dario Gregorio 0xCBE04756f3717D7e9f92CadAedcfD1De1Dc41b63
- Daniel Fantauzzi 0x5e381e98e79c5cA6D1b9A352Eb17C4427A7a6545
- Adrian Acevedo 0x9843d165D82F95a3daa30014B000409FAdaec2E1
- Javier Rosenstein contr: 0x632ECF693D85D3a1e33D3AB4720e416Dc4d2cf4B
- Lucas Molina
- Renzo Tejada
- Sebastian Esteban 0xE14196Fd709B395281481326c2f549fCf1059E16
- Ismael Llaver 0x6995bca9982a88d559738E780d664300D02F95f1
- Franco Carballar: 0xE23F952faa23605EC7849aB0C79e3a6619980B90
- Tomás Castillo: 0x0CE8186c7950bF78941b4740e093818fAE1DAF5A
- MarianaBrachetta 0x84f7bB0F46312CC62D8C528D270c1af701FeFe6b
- IgnacioPalma
- David Hernández
- Cano Adrian: 0xB4c35646646895Ab4bB76D9184103f007D0818Df   
- Astudillo Agustin 0x9a66f81A3a36e3420d061E15B304334395d8eCdb
- JavierBrizuela





-Faucet
https://faucetlink.to/sepolia
https://sepolia-faucet.pk910.de/
https://sepoliafaucet.com/
https://www.infura.io/faucet/sepolia


- Remix
https://remix.ethereum.org/

NameContract.sol

//Inicio

// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract NameContract {
    string private name;
    address public owner;

    constructor(string memory yourName) {
        owner = msg.sender;
        name = yourName;
    }

    function getName() public view returns (string memory) {
        return name;
    }
}

//Fin

- Documentacion oficial
https://docs.soliditylang.org/en/v0.8.20/

