// cue eval -e dev app.cue
// cue export app.cue -e dev -e prd --out yaml -o test.yaml

package main

import (
	"encoding/yaml"
)

// versions imported -> @if(env) scopes image versions

// standard deploy || sfs #Definition imported ...

// first export -e base to base folder
// cue export stream.cue -e stream --out text <--- export a yaml stream to --- separated yaml
base: [
	{
		num:  123
		name: "John"
	},
	{
		num:  432
		name: "Mary"
	},
]

text: yaml.MarshalStream(base)

// also export a kustomization file that has the app.yaml stream
// as resources

// next export each kustomization to app folders
kustomization: {
	val: "etc"

	// if dev {
	// }

	// if prod {
	// }

	// etc..
}
