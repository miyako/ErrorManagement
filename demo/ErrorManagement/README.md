# Project Title

Error management and logging in 4D Applications 

## Description

This technical note discusses modern error handling in 4D, highlighting tools such as ON ERR CALL, throw(), and try/try catch. These mechanisms provide precise control over error flow, help isolate issues at their source, and promote cleaner, more readable code. They also support detailed logging and ensure consistent error handling across different levels—local, global, and component-based. By adopting these practices, applications become more robust, easier to maintain, and better equipped to scale in mission-critical environments.

## Getting Started

### Pre-requisites

* Download the latest Release version of 4D from: https://us.4d.com/product-download or the latest Beta version from: https://discuss.4d.com
* Follow the activation steps for 4D from: https://developer.4d.com/docs/GettingStarted/installation and https://developer.4d.com/docs/Admin/licenses


### Executing the Project

* Open the project in 4D 
* The Test ON ERR CALL method opens a file and attempts to write a line to it, while redirecting any potential errors to the ErrorWriteDoc error-handling method.
* The TestThrow method performs a division operation and, if the divisor is zero, it sets the result to 0 and throws a custom error using the throw command with the message "Division by zero!".
* The TestTry method attempts to open a file and write a line to it using the Try command, and if any errors occur during these operations, it calls the ErrorWriteDoc error-handling method.
* The TestTryCatch method uses two consecutive Try/Catch blocks to throw and catch two different errors, storing them in the $errors collection for later processing.

## Authors

Karim Meghraoui
[Karim.meghraoui@4D.com](Karim.meghraoui@4D.com)