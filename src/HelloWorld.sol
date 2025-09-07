// SPDX-License-Identifier: UNLICENSED
// This specifies that the contract is unlicensed.
// In production, you would usually use something like MIT, GPL, etc.
pragma solidity ^0.8.13;
// This tells the compiler which version of Solidity to use.
// Here, any version from 0.8.13 onwards, but lower than 0.9.0.

contract HelloWorld {
    // Define a private state variable that stores the message
    string private message;

    // Constructor: executed only once when the contract is deployed
    constructor() {
        message = "Hello World from Foundry";
        // Initialize the state variable with a default message
    }

    // Public function to read the stored message
    // "view" means it doesn't modify the blockchain state
    function getMessage() public view returns (string memory) {
        return message;
    }

    // Public function to update the message
    // This modifies the blockchain state, so it costs gas
    function updateMessage(string memory _newMessage) public {
        message = _newMessage;
    }
}
