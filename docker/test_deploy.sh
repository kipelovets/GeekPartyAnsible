#!/bin/bash

read -d '' PAYLOAD <<"EOF"
{
  "ref": "refs/heads/master",
  "after": "6ead527eb6a7a495852706ca3f6e3d715e0ef141",
  "deleted": false,
  "repository": {
    "full_name": "GeekPartyTeam/GeekParty-Site"
  }
}
EOF

curl --data-binary "$PAYLOAD" -H "X-Hub-Signature: sha1=b9e8100309185079a3af393f8bbd09f0a518a5cb" gohub.docker