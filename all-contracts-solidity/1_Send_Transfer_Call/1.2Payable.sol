// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Payable {

    // Payable address puede recibir Ether
    address payable public owner;

    // Payable constructor puede recibir Ether
    constructor() payable {
        owner = payable(msg.sender);
    }

    // Función para recibir Ether cuando se envía a la dirección del contrato
    receive() external payable {}

    // Función Fallback para recibir Ether cuando se envía a una dirección que no tiene ninguna función asociada
    fallback() external payable {}

    // Retorna el saldo de ether almacenado en el contrato
    function getBalance() public view returns (uint) {
        return address(this).balance; // devuelve el balance del contrato por que hace un this y se refiere al contrato
    }

    // Función para depositar Ether en este contrato.
    // Llame a esta función junto con algo de Ether.
    // El saldo de este contrato se actualizará automáticamente.
    function deposit() public payable {}

    // Llame a esta función junto con algo de Ether.
    // La función arrojará un error ya que esta función no es payable.
    function notPayable() public {}

    // Función para retirar todo el Ether de este contrato.
    function withdraw() public {
        // obtener la cantidad de Ether almacenada en este contrato
        uint amount = address(this).balance;

        // envía todo el Ether al propietario
        // El propietario puede recibir Ether ya que la dirección del propietario es payable
        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to send Ether");
    }

    modifier onlyOwner {
        _; // si coloco el guion bajo primero, va a llamar a la funcion, ejecuta todo lo que esta arriba de este guion bajo y despues realiza las lineas debajo de este guion bajo
        require(msg.sender == owner,"Only owner");
        _; //significa que a partir de aca regresa al puntero que lo llamó y sigue con el codigo de la funcion que lo llamó
    }
    // Función para transferir Ether desde el saldo del contrato 
    // a la dirección pasada por parámetro
    function transfer(address payable _to, uint _amount) onlyOwner public {
        // Note que "_to" es declarada como payable
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed to send Ether");
    }

}