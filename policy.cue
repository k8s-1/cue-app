// test all configs with
// cue eval policy.cue file.cue

import "encoding/yaml"

base!: yaml.MarshalStream([...])
baseKustomization!: string

kustomization!: {}
