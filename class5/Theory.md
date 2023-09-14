GENERATED TOKENS

UCHC 0x6a037D757dC64cef3FfD8b3992E92D6Edf4b7561
DPC 0x1209eabCeDD80916d45F81FFC0A810bb7235469e
wallet 0xfcc78031c38924B9bfE60795AE3903D6653882Bf
MaxTRZCoin -> 0x007C5c0D1110279D9245F6785cf375228Bf17777
sebastian contrato DPC 0x60be10a51f99bba2f4afda6c8a380c67c7f65851
wallet : 0xE14196Fd709B395281481326c2f549fCf1059E16
Andrés Kogan token AMK 0xAB5f1F54C91463820fd219bf231B6A52C82BA6B1
wallet 0x6C9f71D535e92046827347627fa479C8AEE35ac7
KREK 0xF3d16f24B68d147d9D02D669747D370A5C0fc8a2
0x335dD2f2c8478CF105A309295513FA873e72635F marcelo palma
MGC 0x25898E83dcDcFa3cbE6E8C6B6696b71b06548dB3
Matias Magni 0x25898E83dcDcFa3cbE6E8C6B6696b71b06548dB3
Mariana 0x1Db364B6C7177C80b4BFB99a4bC0EEF26B38436d

Para transferir tokens ERC-20, debes seguir los siguientes pasos:

1. Aprobar la transferencia: Primero, el titular de los tokens debe llamar a la función `approve` del contrato ERC-20 para autorizar la transferencia. Esta función requiere dos parámetros: la dirección del destinatario y la cantidad de tokens a transferir. Por ejemplo, `approve(dirección_destinatario, cantidad_tokens)`.

2. Incrementar la asignación: Luego, el titular de los tokens debe llamar a la función `increaseAllowance` del contrato ERC-20 para aumentar la cantidad de tokens permitidos para transferir. Esta función también requiere dos parámetros: la dirección del destinatario y la cantidad adicional de tokens a transferir. Por ejemplo, `increaseAllowance(dirección_destinatario, cantidad_tokens_adicional)`.

3. Transferir los tokens: Finalmente, el destinatario puede llamar a la función `transfer` del contrato ERC-20 para recibir los tokens transferidos. Esta función también requiere dos parámetros: la dirección del remitente y la cantidad de tokens a transferir. Por ejemplo, `transfer(dirección_remitente, cantidad_tokens)`.

Recuerda que estos pasos deben realizarse en el orden mencionado para asegurar que la transferencia se realice correctamente. Además, ten en cuenta que la implementación y los nombres de las funciones pueden variar según el contrato ERC-20 específico que hayas creado.

https://docs.openzeppelin.com/contracts/4.x/wizard
