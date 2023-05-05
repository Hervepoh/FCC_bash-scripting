# FCC_bash-scripting

Display information about command type.
```
type: type [-afptP] name [name ...]   
```


test
```
help test
[[ hello == world ]]; echo $?
[[ hello =~ el ]]; echo $?
[[ "hello world"  =~ "lo wor" ]]; echo $?      # if the string contain ,
[[ "hello world"  =~ ^h ]]; echo $?            # if the string starts with an h,
[[ "hello world"  =~ ^h.+d$ ]]; echo $?        # if the string starts with an h, has at least one character after it, and ends with a d.
[[ $VAR =~ \?$ ]]; echo $?                      # if the string end with an ?
```

Print all environment variables
```
printenv
```

View all variables in the shell with 
```
declare -p      [-p stands for print]
```


let: let arg [arg ...]
    Evaluate arithmetic expressions.
    
    Evaluate each ARG as an arithmetic expression.  Evaluation is done in
    fixed-width integers with no check for overflow, though division by 0
    is trapped and flagged as an error.  The following list of operators is
    grouped into levels of equal-precedence operators.  The levels are listed
    in order of decreasing precedence.
    
        id++, id--      variable post-increment, post-decrement
        ++id, --id      variable pre-increment, pre-decrement
        -, +            unary minus, plus
        !, ~            logical and bitwise negation
        **              exponentiation
        *, /, %         multiplication, division, remainder
        +, -            addition, subtraction
        <<, >>          left and right bitwise shifts
        <=, >=, <, >    comparison
        ==, !=          equality, inequality
        &               bitwise AND
        ^               bitwise XOR
        |               bitwise OR
        &&              logical AND
        ||              logical OR
        expr ? expr : expr
                        conditional operator
        =, *=, /=, %=,
        +=, -=, <<=, >>=,
        &=, ^=, |=      assignment
