Chain List
https://chainlist.org/?testnets=true&search=

HardHat
https://hardhat.org/tutorial

Hardhat Shorthand
https://hardhat.org/hardhat-runner/docs/guides/command-line-completion


Hardhat boilerplate
https://github.com/NomicFoundation/hardhat-boilerplate

Infura
https://www.infura.io/

Alchemy
alchemy.com

HARDHAT

Hardhat es un entorno de desarrollo que facilita la construcción en Ethereum. Ayuda a los desarrolladores a gestionar y automatizar las tareas recurrentes inherentes al proceso de construir contratos inteligentes y aplicaciones descentralizadas (dApps), y te permite introducir fácilmente más funcionalidad en torno a este flujo de trabajo. Esto implica la compilación y prueba en su núcleo mismo.

Hardhat también incluye de forma integrada Hardhat Network, una red local de Ethereum diseñada para el desarrollo. Te permite implementar tus contratos, ejecutar tus pruebas y depurar tu código.

Hardhat para Visual Studio Code es la extensión oficial de Hardhat que agrega soporte avanzado para Solidity a VSCode. 


Nuevo proyecto Hardhat

mkdir hardhat-tutorial
cd hardhat-tutorial
npm init
npm install --save-dev hardhat
npx hardhat

Plugins

@nomicfoundation/hardhat-toolbox (ya instalado)

npm install --save-dev @nomicfoundation/hardhat-toolbox

Compiling contracts

$ npx hardhat compile

Testing contracts

Para probar nuestro contrato, vamos a utilizar Hardhat Network, una red local de Ethereum diseñada para el desarrollo. Viene integrada con Hardhat y se utiliza como la red predeterminada. No necesitas configurar nada para usarla.

En nuestras pruebas, vamos a utilizar ethers.js para interactuar con el contrato Ethereum que construimos en la sección anterior, y utilizaremos Mocha como nuestro entorno de pruebas.


$ npx hardhat test
$ REPORT_GAS=true npx hardhat test

Deploying

Para indicarle a Hardhat que se conecte a una red Ethereum específica, puedes usar el parámetro --network al ejecutar cualquier tarea, de esta manera:

$ npx hardhat run scripts/deploy.js --network <nombre-de-red>

Ejecutarlo sin el parámetro --network haría que el código se ejecute en una instancia local de Hardhat Network. En este escenario, la implementación en realidad se pierde cuando Hardhat termina de ejecutarse, pero sigue siendo útil para probar que nuestro código de implementación funciona:

$ npx hardhat run scripts/deploy.js
Desplegando contratos con la cuenta: 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
Dirección del token: 0x5FbDB2315678afecb367f032d93F642f64180aa3"

You can deploy in the localhost network following these steps:

Start a local node
$ npx hardhat node

Open a new terminal and deploy the smart contract in the localhost network
$ npx hardhat run --network localhost scripts/deploy.ts


Deploying a testnets

Para implementar en una red remota como mainnet o cualquier testnet, necesitas agregar una entrada de red en tu archivo hardhat.config.js. En este ejemplo, usaremos Sepolia, pero puedes agregar cualquier red de manera similar:
1 - Crear cuenta en Infura y obtener una API KEY
2 - Obtener Sepolia ETH

$ npx hardhat run scripts/deploy.ts --network sepolia

Verificamos 

https://sepolia.etherscan.io/

Verificación de contratos

1 - Crear una cuenta y obtener una API Key en Etherscan 
    https://etherscan.io/myapikey

$ npx hardhat verify --network sepolia <address> <unlock time>
$ npx hardhat verify --network sepolia 0xF0c0EEb3fab168ee5F080290f239188229339157 1691708555