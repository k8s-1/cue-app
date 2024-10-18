#!/usr/bin/python3

# usage: python mod.py app1 qa

import json
import sys


def get_json(environment: str) -> tuple[str, dict]:
    """Split file into non-JSON and JSON components."""

    with open(environment + '.cue', 'r') as file:
        content = file.read()

    non_json, json_part = content.split('{', 1)
    return non_json, json.loads('{' + json_part)


def main():
    app, environment = sys.argv[1], sys.argv[2]

    # fetch version for the specified app and previous environment
    previous_environments = {
        "qa": "dev",
    }
    _, json_data_previous = get_json(previous_environments[environment])
    version = json_data_previous[app]

    # update version in the current environment's .cue file
    non_json, json_data = get_json(environment)
    json_data[app] = version

    with open(environment + '.cue', 'w') as file:
        file.write(non_json + json.dumps(json_data, indent=2))


if __name__ == "__main__":
    main()
