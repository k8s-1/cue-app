package schema

// definitions are a powerful way
// to add any value anywhere

message: "Hello, \(#Name)!"
#Name:   "world"

#A: {
	name: string
  _test: string

  lovely: _test
}
