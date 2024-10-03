import "encoding/yaml"

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

// MarshalStream to convert the list to a YAML stream and ensure it's treated as a list of documents
stream: yaml.MarshalStream(base)
