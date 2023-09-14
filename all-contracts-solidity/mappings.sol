// Los mapas se crean con la asignación de sintaxis mapping(keyType => valueType).
// keyType pueden ser tipos de valor como uint, address o bytes.
// valueType puede ser de cualquier tipo, incluido otro mapping o una array.
// Las Mappings no son iterables.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Mapping {
    // Mapping de address a uint
    mapping(address => uint256) public myMap;

    // getter function
    function get(address _addr) public view returns (uint256) {
        // El mapeo siempre devuelve un valor.
        // Si el valor nunca se estableció, devolverá el valor predeterminado.
        return myMap[_addr];
    }

    // setter function
    function set(address _addr, uint256 _i) public {
        // Actualiza el valor en esta dirección
        myMap[_addr] = _i;
    }

    // remove function
    function remove(address _addr) public {
        // Restablece el valor al valor predeterminado.
        delete myMap[_addr];
    }
}


contract NestedMapping {
    // Mapeo anidado (mapeo de la dirección a otro mapeo)
    mapping(address => mapping(uint256 => bool)) public nested;

    function get(address _addr1, uint256 _i) public view returns (bool) {
        // Puede obtener valores de un mapeo anidado
        // incluso cuando no está inicializado
        return nested[_addr1][_i];
    }

    function set(
        address _addr1,
        uint256 _i,
        bool _boo
    ) public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr1, uint256 _i) public {
        delete nested[_addr1][_i];
    }
}