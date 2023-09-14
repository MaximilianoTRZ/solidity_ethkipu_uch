CONTRATO NFT UCHH: 0xCA7d5b5304E1962321096Eca3027aD7f89b4e051
CONTRATO MAXI: 0x6F4C481f8524996B7b98E0Fa3D7394FA2bd45faf
CONTRATO MGH: 0xa806C5D0F6ddC4C850af240d8EBc9a6bBA273Fb0
El almacenamiento descentralizado

El almacenamiento descentralizado se refiere a la distribución de datos en múltiples nodos o dispositivos en lugar de tenerlos centralizados en un solo lugar. Esto permite una mayor resistencia a la censura, mayor privacidad y mayor disponibilidad de los datos.

IPFS (InterPlanetary File System) y Swarm son dos protocolos populares para el almacenamiento descentralizado en la web.

IPFS utiliza una red de nodos interconectados para almacenar y distribuir contenido. Utiliza un sistema de direccionamiento basado en contenido, donde cada archivo se identifica por su hash criptográfico, lo que permite una recuperación eficiente y una verificación de integridad de los datos. IPFS también utiliza un enfoque de almacenamiento en caché para mejorar el rendimiento y la velocidad de acceso a los datos.

Swarm, por otro lado, está integrado en la red de Ethereum y se enfoca en el almacenamiento y distribución de contenido web. Utiliza un enfoque de direccionamiento basado en contenido similar al de IPFS, pero también tiene características específicas para la integración con contratos inteligentes y aplicaciones descentralizadas en la red de Ethereum.

En resumen, tanto IPFS como Swarm son protocolos de almacenamiento descentralizado que utilizan un enfoque de direccionamiento basado en contenido. IPFS es más general y se puede utilizar de manera independiente, mientras que Swarm está específicamente diseñado para integrarse con la red de Ethereum.

En IPFS, si un archivo no se "pin" explícitamente, su tiempo de almacenamiento en la red puede ser impredecible. IPFS utiliza un mecanismo de enrutamiento basado en DHT (Tabla de Hash Distribuida) para localizar y acceder a los archivos. Si un archivo no se solicita con frecuencia, es posible que los nodos que lo almacenan en la red IPFS lo eliminen para liberar espacio y dar prioridad a los archivos más populares.

La duración exacta de almacenamiento de un archivo no pin en IPFS dependerá de varios factores, como la popularidad del archivo, la disponibilidad de los nodos que lo almacenan y las políticas de almacenamiento de los nodos individuales. En general, los archivos menos solicitados tienen más probabilidades de ser eliminados con el tiempo.

Para garantizar la persistencia de un archivo en IPFS, se recomienda "pin" el archivo en un nodo que esté bajo tu control o utilizar servicios como Pinata que ofrecen la capacidad de "pin" archivos en su infraestructura para asegurar su disponibilidad a largo plazo. Al hacer esto, el archivo se mantendrá almacenado y accesible en la red IPFS incluso si no está siendo solicitado activamente por otros usuarios.

https://www.pinata.cloud/

IPFS (InterPlanetary File System) es un protocolo de almacenamiento descentralizado y distribuido que permite la creación y distribución de contenido en la web de manera eficiente y resistente a la censura. En lugar de utilizar direcciones basadas en ubicación, IPFS utiliza un sistema de direccionamiento basado en contenido, donde cada archivo se identifica por su hash criptográfico. Esto permite una recuperación eficiente de los datos y una verificación de integridad.

Pinata es un servicio de almacenamiento y gestión de archivos basado en IPFS. Proporciona una interfaz fácil de usar para subir, almacenar y administrar archivos en la red IPFS. Pinata se encarga de la complejidad técnica de la infraestructura de IPFS y ofrece características adicionales como el almacenamiento en caché global para mejorar la velocidad de acceso a los archivos y una API para facilitar la integración con aplicaciones y servicios externos.

Al utilizar Pinata, puedes cargar archivos a través de su interfaz o API, y obtendrás una dirección IPFS única para cada archivo cargado. Estas direcciones se pueden compartir para que otros usuarios puedan acceder y descargar los archivos a través de la red IPFS. Pinata también ofrece características adicionales, como la capacidad de marcar archivos como "pin" para garantizar su persistencia en la red IPFS, incluso si no hay otros nodos que los estén solicitando.

En resumen, IPFS es un protocolo de almacenamiento descentralizado y distribuido, mientras que Pinata es un servicio que facilita la gestión y el acceso a archivos en la red IPFS, proporcionando una interfaz fácil de usar y características adicionales como el almacenamiento en caché y la persistencia de archivos.

// \*\* Contrato NFT

// UPLOAD FILES TO IPFS FROM BROWSER
// https://www.pinata.cloud/

/\*
El contrato ERC721URIStorage es una implementación de ERC721 que incluye
las extensiones estándar de metadatos (IERC721Metadata), así como un mecanismo
para metadatos por token. De ahí viene el método \_setTokenURI: lo usamos para almacenar los metadatos de un elemento.

https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/extensions/ERC721URIStorage.sol

A diferencia de ERC20, ERC721 carece de un campo de decimales,
ya que cada token es distinto y no se puede particionar.

\*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DiploHero is ERC721URIStorage, Ownable {
using Counters for Counters.Counter;
Counters.Counter private \_tokenIds;

    constructor() ERC721("DiploHero", "DPH") {}

    function awardItem(address player, string memory tokenURI)
        public
        onlyOwner
        returns (uint256)
    {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(player, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }

}

// \*\* Fin Contrato NFT

// json ejemplo

{
"name": "UCH Hero 1",
"description": "El hero cool.",
"image": "https://gateway.pinata.cloud/ipfs/QmfKsPbTpuVgLbgPzq28sgj7ScjFMprRJX6vTQYzKBiWzy",
"strength": 100
}

// fin json ejemplo

https://gateway.pinata.cloud/ipfs/Qma9KDTaiXD6TQeG9TtkfpdPWKux7QeXhmisL2dDCNZe3H
