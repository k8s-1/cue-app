//cue export import.cue --out text
import (
	"encoding/yaml"
	"github.com/k8s-1/app/best"
)

#objects: best.#Def & {
	#vals: {
		val1: 123
		val2: 345
	}
}

yaml.MarshalStream([ for _, v in #objects {v}, ])
