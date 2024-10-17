#!/usr/bin/python3

# usage: python mod.py app1 qa

import json
import sys

app = str(sys.argv[1])
env = str(sys.argv[2])

# helper to split cue file into non-json and json
def get_json(environment):
    with open(environment + '.cue', 'r') as file:
        content = file.read()
        non_json, json_part = content.split('{', 1)
        return non_json, json.loads('{' + json_part)

# fetch version for the specified app and previous environment
previous_environments = {
    "qa":"dev",
}
_, data = get_json(previous_environments[env])
version = data[app]

# update version in the current environment's .cue file
non_json, data = get_json(env)
data[app] = version
with open(env + '.cue', 'w') as file:
    file.write(non_json_part + json.dumps(data, indent=2))
