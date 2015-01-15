#!/usr/bin/env python
import json

BINDING_FILE = 'StandardKeyBinding.json'

fp = open(BINDING_FILE)
data = json.load(fp)
fp.close()

fp = open(BINDING_FILE, 'w')
json.dump(data, fp, indent=4)
fp.close()
