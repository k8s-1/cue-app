// The OneOf pattern is used to enforce one and only one of a set of fields. We use disjunctions and an embedding to create this behavior.

#OneOf: {a: string} | {b: string}
//#OneOf: {} | {a: string} | {b: string} // {} empty choice if none should be valid

#E: {
	name: string
	#OneOf
}

ex1: #E & {
	name: "a choice"
	a:    "bar"
}

ex2: #E & {
	name: "b choice"
	b:    "hello"
}

ex3: #E & {
	name: "error none chosen"
}

ex4: #E & {
	name: "error both chosen"
	a:    "a"
	b:    "b"
}
