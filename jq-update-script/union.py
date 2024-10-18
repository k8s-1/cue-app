import json
import sys

app, env = sys.argv[1], sys.argv[2]

with open(f'{"dev" if env == "qa" else env}.cue') as f:
    non_json, data = f.read().split('{', 1)
    data = json.loads('{' + data)

with open(f'{env}.cue', 'w') as f:
    f.write(non_json + json.dumps(data | {app: data[app]}, indent=2))
