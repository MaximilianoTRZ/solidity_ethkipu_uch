Tokens EIP - ERC
EIP - ERC
ERC-20 & ERC-721

Token
Objeto físico que tiene valor en un contexto determinado
Dicho valor en general no corresponde al valor de su material
Suelen representar otra entidad u objeto

Clasificaciones

Fungible: Se puede gastar, consumir. Los tokens no poseen una identificación marcada, por lo tanto dos token similares valen lo mismo y su reemplazo es legal por otro de igual calidad. Ejemplo: Criptomonedas
No Fungibles: Representan objetos únicos. Son identificables, y su valor es independiente en cada instancia. Ejemplo: coleccionables

Otras Clasificaciones

Currency: son utilizadas como monedas, reserva de valor o forma de pago
Utility: se utilizan para costear un servicio o contraprestación
Security: su intención es generar ganancias, como las acciones de la bolsa.
Asset: representa un objeto de la vida real.
Existen muchas más como las Equity. Destacamos las más utilizadas.

EIPs y estándares

Los EIPS (Ethereum Improvement Proposal), son básicamente propuestas de mejora a incluir en futuras versiones
Ethereum Improvement Proposals https://eips.ethereum.org/
Dentro de los EIPS se encuentran todos los ERC (Ethereum Request for Comments)
El EIP número 20, que se llamó ERC20 era el que proponía un estándar de funcionamiento
para los Tokens
https://eips.ethereum.org/EIPS/eip-20
La aceptación supuso una mejora en el uso, ya que desde entonces los tokens son compatibles con este estándar y eso permite que los wallets puedan soportar los nuevos tokens por defecto.

La principal diferencia entre los EIP y los ERC es que los EIP definen principalmente las funciones de Ethereum Core y los ERC definen las funciones y los diseños de la capa de aplicación descentralizada. ERC es solo una de las muchas categorías de EIP, pero los ERC son los EIP más utilizados, razón por la cual son tan populares y se discuten con frecuencia.

NFTs ejemplos

EIP-4907: Rental NFT, ERC-721 User And Expires Extension
Source code interpretation: How does the new Ethereum standard EIP-4907 realize NFT leasing?
https://coinyuppie.com/source-code-interpretation-how-does-the-new-ethereum-standard-eip-4907-realize-nft-leasing/
https://eips.ethereum.org/EIPS/eip-4907
https://eips.ethereum.org/EIPS/eip-5006 (for EIP-1155 tokens)

EIP-2981: NFT Royalty Standard
A standardized way to retrieve royalty payment information for non-fungible tokens (NFTs) to enable universal support for royalty payments across all NFT marketplaces and ecosystem participants.
https://eips.ethereum.org/EIPS/eip-2981

EIP-5058:Lockable ERC-721 Standard
The locked NFTs cannot be transferred until the end of the locking period. An immediate use case is to allow NFTs to participate in projects like [NFTFi](https://www.nftfi.com/) without changing the ownership of an NFT.
https://github.com/ethereum/EIPs/pull/5058/files

// Ejemplo de una Implementación muy básica de la intereface IERC20

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/\*
Ejemplo de una Implementación muy básica de la intereface IERC20
Este ejemplo usa una librería safeMath, implementada al final del archivo
Para ver una implementación completa del estandar ERC-20, segura y con la ultima versión de solc,
recomiendo estudiar la implementación de OpenZeppelin desde su repo en GitHub

https://github.com/OpenZeppelin/openzeppelin-contracts/tree/master/contracts/token/ERC20

hay seis funciones principales que debe implementar un token ERC-20:

    TotalSupply – Se utiliza establecer el suministro total de tokens de un token ERC-20 específico
    BalanceOf – Para obtener el balance de una dirección en particular
    Transfer – Permite al usuario transferir la propiedad de un token a otra dirección
    TransferFrom – Funciona de manera similar a la función de transferencia con la ventaja adicional
                    de permitir que los contratos transfieran tokens en nombre del usuario
    Approve – Se utiliza para establecer un límite en la cantidad de tokens que un contrato inteligente puede retirar
    Allowance – Otorga a direcciones externas el acceso y permiso para gastar los tokens de un saldo determinado

    Además de las funciones obligatorias anteriores, existen otras funciones opcionales que pueden mejorar
    la usabilidad de un token ERC-20. Token Name, Ticker Symbol (e.g. ETH), y Divisibility
    (cuántos lugares decimales puede admitir el token).

\*/
