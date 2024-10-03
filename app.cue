// cue eval -e dev app.cue
// cue export app.cue -e dev -e prd --out yaml -o test.yaml



// versions imported -> @if(env) scopes image versions

// standard deploy || sfs #Definition imported ...

// first export -e base to base folder
base: {
  num: 123
  name: "John"
}

// next export each kustomization to app folders
kustomization: {
  val: "etc"

  // if dev {
  // }

  // if prod {
  // }

  // etc..
}
