package schema

// definitions are a powerful way
// to add any value anywhere
// Because CUE knows that definitions are used for validation, they aren’t output as data.

message: "Hello, \(#Name)!"
#Name:   "world"

#A: {
	name: string
  _test: string

  lovely: _test
}
