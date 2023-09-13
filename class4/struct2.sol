// Struct ejemplo 2 

// Puede definir su propio tipo creando una estructura.
// Son útiles para agrupar datos relacionados.
// Las estructuras pueden declararse fuera de un contrato
// e importarse en otro contrato.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

// import "./8_StructDeclaration.sol";

// import "http://github.com/oraclize/ethereum-api/oraclizeAPI_0.4.sol";

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    // Un array de 'Todo' structs
    Todo[] public todos;

    function create(string memory _text) public {
        // 3 formas de inicializar una estructura
        // - llamándolo como una función
        todos.push(Todo(_text, false));

        // mapeo de valor clave
        todos.push(Todo({text: _text, completed: false}));

        // inicializar una estructura vacía y luego actualizarla
        Todo memory todo;
        todo.text = _text;
        // todo.completed Inicializad a false

        todos.push(todo);
    }

    // Solidity creó automáticamente un getter para 'todos' así que
    // en realidad no necesitas esta función.
    function get(uint256 _index)
        public
        view
        returns (string memory text, bool completed)
    {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    // update text
    function update(uint256 _index, string memory _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    // update completed
    function toggleCompleted(uint256 _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}