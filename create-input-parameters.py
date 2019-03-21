#!/usr/bin/python3

import sys
import json

if len(sys.argv) != 3:
    print("There are %d arguments" % (len(sys.argv)-1))
    print("Arguments should be")
    print("1-Parameter file path")
    print("2-Project config file path")
else:
    paramPath = sys.argv[1]
    projectPath = sys.argv[2]

    print ('Parameter file:  %s' % (paramPath))
    print ('Project config file:  %s' % (projectPath))

    with open(projectPath, 'r') as cf:
        with open(paramPath, 'r') as pf:
            config = json.load(cf)
            params = json.load(pf)

            params['parameters']['projectConfig']['value'] = config

            with open(paramPath + ".mod.json", "w") as output:
                json.dump(params, output)


