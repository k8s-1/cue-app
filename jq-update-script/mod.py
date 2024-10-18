#!/usr/bin/python3

# usage: python mod.py app1 qa

import json
import sys


def get_json(env):
    with open(f"{env}.cue") as f:
        non_json, json_part = f.read().split('{', 1)
        return non_json, json.loads('{' + json_part)


def main():
    app, env = sys.argv[1], sys.argv[2]

    version = get_json({"qa": "dev"}[env])[1][app]

    non_json, data = get_json(env)
    data[app] = version

    with open(f"{env}.cue", 'w') as f:
        f.write(non_json + json.dumps(data, indent=2))


if __name__ == "__main__":
    main()
