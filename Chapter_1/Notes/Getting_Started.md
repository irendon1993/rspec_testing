## Getting Started with RSpec

### Tests vs. Specs vs. Examples

- A _test_ validates that a bit of code is working properly.
- A _spec_ describes the desired behavior of a bit of code.
- An _example_ shows how a particular API is intended to be used

Exercise `sandwich_spec.rb`

Three methods used in this exercise:

- `RSpec.describe` creates an example group(set of related tests)
- `it` creates an example(individual test)
- `expect` verifies an expected outcome (assertion)

### Hooks

A _before hook_ will run automatically before each example

Ex: `before {@sandwich = Sandwich.new('delicious,[])}`

RSpec keeps track of all the hooks you;ve registered. Each Time RSpec is about to start running one of your example, it will run any `before hooks` that apply.

The setup code is shared across specs, but the individual Sandwich instance is not. Every example gets its own sandwich.

Hooks are great for running common setup code that has real-world side effects.

### Helper methods

A more traditional Ruby approach to reducing duplication.

Each example group is a Ruby class, which means that we can define methods on it.

**Memoization** - Storing the results of an operation(creating a sandwich) and referring to to the stored copy from then on.

Ex: `@sandwich ||= Sandwich.new('delicious',[])`

The ||= operator works by seeing if @sandwich is a "falsey" (false or nil) before creating a sandwich. That means it wont work if we're actually trying to store something falsey

### Sharing Objects With let

RSpec gives us an alternative construct, `let`

You can think of `let` as binding a name(`sandwich`) to the result of a computation(the block). Just as with a memoized helper method, RSpec will run the block the first time any example calls `sandwich`.
