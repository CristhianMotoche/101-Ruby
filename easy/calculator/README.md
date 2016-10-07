# Calculator
Define a simple integer calculator for the basic operations.

## What I've learn from this example:
- Basic number operations
- Import modules (with `require` and `require_relative`)
- How to define a class
- How to define methods
- Encapsulation
- Class constructors
- Case statements
- Unless
- Name convention
- Handle exceptions
- [Options parser](http://ruby-doc.org/stdlib/libdoc/optparse/rdoc/OptionParser.html) for command line interface (CLI)
- Args for CLI
- While
- Testing using assertions
  - assert_equal
  - assert_raise
- Static methods (aka Class methods)
- [Asterisk wild](http://www.tldp.org/LDP/abs/html/special-chars.html#ASTERISKREF) card in bash

# Notes
## Assert
You should use [Test::Unit::Assertions](http://ruby-doc.org/stdlib-2.1.0/libdoc/test/unit/rdoc/Test/Unit/Assertions.html)
for assertions.

## Run

```shell
$ ruby main.rb --num1 [number] --num2 [number] -o [operation: (+,-,x,/)]
```

## Test

```shell
$ ruby calculator_test.rb
```

