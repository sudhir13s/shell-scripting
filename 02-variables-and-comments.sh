#!/bin/bash

# This is a comment. Comments starts with # symbol.

echo "Hello World!" # This is also a comment.

# Now, variables should be in lowercase. It can be in uppercase but if it's global.

# variables  --> system or user defined.
# comments   --> starts with #. No multi-line comments symbol.
# quotes     --> single, double or inverted quotes.
# brackets   --> normal, flower or square brackets.
# redirection--> input, output, pile or error.
# wild cards --> *, ?
# escape char--> /n, r, / etc.

# $ is used before a variable name while using it.
# not required while declaring the variable.

my_variable=$BASH

# now print all.
echo My SHELL is: $SHELL
echo "My BASH is:" $BASH
echo "My BASH version is:" $BASH_VERSION
echo "My home directory is:" $HOME
echo "My current working directory is:" $PWD
echo "My user name is:" $USER
echo "My log-in name is:" $LOGNAME
echo "My my_variable value is:" $my_variable




