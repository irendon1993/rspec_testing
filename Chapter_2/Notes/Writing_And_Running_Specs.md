## From Writing Specs to Running Them

In chapter 1 we applied the following practices:

- Structuring your examples logically into groups
- Writing clear expectations that test ar the right level of detail
- Sharing common setup code across specs

In chapter 2 we will look at:

- Printing specs' output as documentation
- run a specific set of examples and- Fix a bug and rerun just the specs that failed last time
- Mark work in progress

### Customizing Your Specs' Output

Exercise: `coffee_spec.rb`

`context` is a method that groups a set of examples and their setup code together with a common description.

`context` is an alias for `describe` and can be used interchangeably, but `context` is typically used for phases that modify the object we're testing.
