#!/bin/zsh

set -euo pipefail

# List up to 1,000 top-level sessions globally: session ID and directory.
opencode api get '/api/session?parentID=null&limit=1000&order=desc' |
  jq -r '(["Session", "Directory"], (.data[] | [.id, .location.directory])) | @tsv' |
  column -t -s $'\t'
