# Linear system of equations solver
`lineq-solve` implements a solver for systems of linear equations.
The equations are described by a (square) matrix A and a right-hand side
vector b.

A.x = b

## Usage
**make-a-solver** A => a-solver

Instantiate a solver for systems of equations involving matrix A.

**solve** a-solver b => x

Use a a-solver instance to solve for x with right-hand side vector b.

**quick-solve** A b => x

QoL function for when A is only ever used once. Slower if multiple b
need to be treated.

## Test
Launch tests with:
```common-lisp
(asdf:test-system "lineq-solve")
```

## Dependencies
* `lineq-solve`:
  * [lup-decomp](https://github.com/thomashoullier/lup-decomp)
  * [lup-solve](https://github.com/thomashoullier/lup-solve)
* `lineq-solve/test`:
  * [rove](https://github.com/fukamachi/rove)

## References

