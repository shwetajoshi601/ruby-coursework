# Understanding File imports

## Problem Statement
Define a programme that has three separate files each with its own set of methods. In the first file there should be a fairly big method that makes use of at least two other methods each of which are defined in two other files. 
Use "require_relative" to access the other two files and experiment a bit including and excluding the require_relative statement.

## Executing the code

Open terminal, type the command:

    ruby user.rb

Enter the information asked.
You will see an error for invalid inputs.
If all the values you enter are valid, all the information will be displayed.

## Note
When you exclude an import statement, and execute the code, ruby does not throw an error immediately. An error is thrown only when a line accessing any method from the imported file is encountered. This shows that ruby follows lazy evaluation from top to bottom.