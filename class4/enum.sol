// Solidity admite enumerables y son útiles para modelar la elección
// y realizar un seguimiento del estado.
// Las enumeraciones se pueden declarar fuera de un contrato.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Enum {
    // Enum que representa el estado del envío
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    // El valor predeterminado es el primer elemento listado en
    // definición del tipo, en este caso "Pendiente"
    Status public status;

    // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4
    function get() public view returns (Status) {
        return status;
    }

    // Actualiza el estado pasando uint a la entrada
    function set(Status _status) public {
        status = _status;
    }

    // Puede actualizar a una enumeración específica como esta
    function cancel() public {
        status = Status.Canceled;
    }

    // eliminar restablece la enumeración a su primer valor, 0
    function reset() public {
        delete status;
    }
}