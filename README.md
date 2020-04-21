# travis_make_two_steps

Branch   |[![Travis CI logo](pics/TravisCI.png)](https://travis-ci.org)
---------|----------------------------------------------------------------------------------------------------------------------------------------------------
`master` |[![Build Status](https://travis-ci.org/richelbilderbeek/travis_make_two_steps.svg?branch=master)](https://travis-ci.org/richelbilderbeek/travis_make_two_steps)
`develop`|[![Build Status](https://travis-ci.org/richelbilderbeek/travis_make_two_steps.svg?branch=develop)](https://travis-ci.org/richelbilderbeek/travis_make_two_steps)

[Travis CI make example](https://github.com/richelbilderbeek/travis_make_tutorial)
of a pipeline of one step.

## Explanation

![](pics/out.png)

First, we specify in the `Makefile` that when we do `make`, the
success is dependent on `output.txt`:

```
all: output.txt
```

Second, we specify in the `Makefile` that `output.txt` is dependent on
`intermediate.txt`. If `intermediate.txt` changes, 
it will be copied to `output.txt`,
after which some text is appended. 

```
output.txt: intermediate.txt
	cp intermediate.txt output.txt
	echo "cool" >> output.txt
```

Third, we specify in the `Makefile` that `intermediate.txt` is dependent on
`input.txt`. If `input.txt` changes, 
it will be copied to `intermediate.txt`,
after which some text is appended. 

```
intermediate.txt: input.txt
	cp input.txt intermediate.txt
	echo "is" >> intermediate.txt
```

## FAQ

### How did you make the picture?

Using `make pic` (also part of the `Makefile`),
which uses [lindenb/makefile2graph](https://github.com/lindenb/makefile2graph).

