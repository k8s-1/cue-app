//package schema
import "github.com/k8s-1/app/schema"

//cue eval use.cue --out yaml

k: schema.#A & {
  name: "somename"
  #test: "ok123"
}
