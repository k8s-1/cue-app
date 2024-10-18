#!/usr/bin/python3

# usage: python mod.py app1 qa

import json
import sys


def get_json(env: str) -> tuple[str, dict]:
    with open(f"{env}.cue") as f:
        non_json, json_part = f.read().split('{', 1)
        return non_json, json.loads('{' + json_part)


def main():
    app, env = sys.argv[1], sys.argv[2]

    previous_environments = {
        "qa": "dev",
    }

    version = get_json(previous_environments[env])[1][app]

    non_json, _json = get_json(env)
    _json[app] = version

    with open(f"{env}.cue", 'w') as f:
        f.write(non_json + json.dumps(_json, indent=2))


if __name__ == "__main__":
    main()
