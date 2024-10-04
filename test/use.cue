//package schema
import "github.com/k8s-1/app/schema"

// cue eval use.cue --out yaml
//
// k:
//  name: somename
//  lovely: ok123

// this is how to perform cross-module value definitions

k: schema.#A & {
  name: "somename"
  #test: "ok123"
}
