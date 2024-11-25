import ballerina/io;

// Define the Person type at the module level
type Person record {|
    string name;
    int age;
|};

// Helper function for concurrency example
function fetchData(int id) returns string {
    io:println("Fetching data for ID: ", id.toString());
    return "Data" + id.toString();
}

// Helper function for map example: squares a number
function square(int n) returns int {
    return n * n;
}

// Helper function for filter example: checks if a number is even
function isEven(int n) returns boolean {
    return n % 2 == 0;
}

// Helper function for reduce example: adds two numbers
function add(int acc, int n) returns int {
    return acc + n;
}

// Helper function for tail recursion example
function factorial(int n, int acc) returns int {
    if (n == 0) {
        return acc;
    }
    return factorial(n - 1, acc * n); // Tail-recursive call
}

// Example of Data Structures
function demonstrateDataStructures() {
    // Array
    int[] numbers = [1, 2, 3, 4, 5];
    io:println("Array: ", numbers);

    // Map
    map<string> capitals = { "USA": "Washington D.C.", "France": "Paris", "Japan": "Tokyo" };
    io:println("Map: ", capitals);

    // Record
    Person person = { name: "Sam", age: 21 };
    io:println("Record: ", person);
}

// Example of Concurrency
function demonstrateConcurrency() {
    // Start multiple tasks concurrently
    future<string> task1 = start fetchData(1);
    future<string> task2 = start fetchData(2);

    // Wait for results and handle errors
    var result1 = wait task1;
    var result2 = wait task2;

    if (result1 is string && result2 is string) {
        io:println("Result1: ", result1);
        io:println("Result2: ", result2);
    } else {
        if (result1 is error) {
            io:println("Error in task1: ", result1.message());
        }
        if (result2 is error) {
            io:println("Error in task2: ", result2.message());
        }
    }
}


// Example of Map/Reduce/Filter
function demonstrateMapReduceFilter() {
    int[] numbers = [1, 2, 3, 4, 5];

    // Map: Square each number
    int[] squares = numbers.map(square);
    io:println("Squares: ", squares);

    // Filter: Keep only even numbers
    int[] evens = numbers.filter(isEven);
    io:println("Evens: ", evens);

    // Reduce: Calculate the sum of numbers
    int sum = numbers.reduce(add, 0);
    io:println("Sum: ", sum);
}

// Example of Tail Recursion
function demonstrateTailRecursion() {
    int num = 5;
    int result = factorial(num, 1);
    io:println("Factorial of ", num, ": ", result);
}

// Main function to demonstrate examples
public function main() {
    io:println("Demonstrating Data Structures");
    demonstrateDataStructures();

    io:println("\nDemonstrating Concurrency");
    demonstrateConcurrency();

    io:println("\nDemonstrating Map/Reduce/Filter");
    demonstrateMapReduceFilter();

    io:println("\nDemonstrating Tail Recursion");
    demonstrateTailRecursion();
}
