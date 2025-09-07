// SPDX-License-Identifier: UNLICENSED
// License identifier: contract is unlicensed
pragma solidity ^0.8.13;
// Solidity compiler version: >= 0.8.13 and < 0.9.0

// Import Foundry’s standard testing utilities
import "forge-std/Test.sol";
// Import the HelloWorld contract to be tested
import "../src/HelloWorld.sol";

// Define the test contract for HelloWorld
contract TestHelloWorld is Test {
    // Declare a public variable of type HelloWorld
    HelloWorld public message;

    // setUp() is a special Foundry function that runs before each test
    // It initializes the HelloWorld contract so every test starts fresh
    function setUp() public {
        message = new HelloWorld();
    }

    // Test function to check that the default message is correct
    function testGetMessage() public view {
        assertEq(message.getMessage(), "Hello World from Foundry");
    }

    // Test function to check that updating the message works correctly
    function testUpdateMessage() public {
        // Update the message
        message.updateMessage("Hello World");
        // Assert that the message was updated successfully
        assertEq(message.getMessage(), "Hello World");
    }
}
