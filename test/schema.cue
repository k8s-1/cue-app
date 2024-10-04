package schema

// Definitions are a powerful way to add values
// Because CUE knows that definitions are used for validation, they aren’t output as data.
// ---> Use definitions ---> output as data!

message: "Hello, \(#Name)!"
#Name:   "world"

#A: {
	name: string
  _test: string

  lovely: _test
}
