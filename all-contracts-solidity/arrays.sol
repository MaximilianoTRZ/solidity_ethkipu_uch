// El array puede tener un tamaño fijo en tiempo de compilación o un tamaño dinámico.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Array {
    // Distintas formas de inicializar un array
    uint256[] public arr;
    uint256[] public arr2 = [1, 2, 3];

    // Matriz de tamaño fijo, todos los elementos se inicializan a 0
    uint256[10] public myFixedSizeArr;

    function get(uint256 i) public view returns (uint256) {
        return arr[i];
    }

    // Solidity puede devolver la matriz completa.
    // Pero esta función debe evitarse para
    // matrices que pueden crecer indefinidamente en longitud.
    function getArr() public view returns (uint256[] memory) {
        return arr;
    }

    function push(uint256 i) public {
        // Append a la matriz
        // Esto aumentará la longitud de la matriz en 1.
        arr.push(i);
    }

    function pop() public {
        // Eliminar el último elemento de la matriz
        // Esto disminuirá la longitud de la matriz en 1
        arr.pop();
    }

    function getLength() public view returns (uint256) {
        return arr.length;
    }

    function remove(uint256 index) public {
        // Eliminar no cambia la longitud de la matriz.
        // Restablece el valor en el índice a su valor predeterminado,
        // en este caso 0
        delete arr[index];
    }
}

contract CompactArray {
    uint256[] public arr;

    // Eliminar un elemento crea un espacio en la matriz.
    // Un truco para mantener la matriz compacta es
    // mueve el último elemento al lugar para eliminarlo.
    function remove(uint256 index) public {
        // Mover el último elemento al lugar para eliminar
        arr[index] = arr[arr.length - 1];
        // Remover el último elemento
        arr.pop();
    }

    function test() public {
        arr.push(1);
        arr.push(2);
        arr.push(3);
        arr.push(4);
        // [1, 2, 3, 4]

        remove(1);
        // [1, 4, 3]

        remove(2);
        // [1, 4]
    }
}