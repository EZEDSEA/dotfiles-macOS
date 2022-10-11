#!/bin/zsh
function unison:set:path() {
  zparseopts -E -D -name:=o_n -pkg=o_p -specifyPkg:=o_pkg -show=o_s -help=o_h
  if [[ "$OSTYPE" == "darwin"* ]]; then
    input="/Users/$USER/.unison/default.prf"
  elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    input="/home/$USER/.unison/default.prf"
  else
    echo "OS not Supported"
    return 0
  fi
  if ((${#o_h} >= 1)); then
    echo ""
    echo "	Set the path variable in default.prf for unison"
    echo ""
    echo "		flags:"
    echo "			--help				view help info"
    echo "			--name				Required flag to specify a workspace to sync and requires an argument with the workspace name."
    echo "			--pkg				Optional flag to sync only one package in the workspace. Chosen package will be the workspaces name."
    echo "			--specifyPkg 		Optional flag to sync only one package in the workspace. Chosen package is based the required argument string."
    return 1
  fi
  o_pkgPath=""
  if ((${#o_n} <= 1)); then
    echo ""
    echo ""
    echo "Workspace name is required --name, use --help for more info"
    return 0
  fi
  if ((${#o_pkg[@]} == 2)); then
    o_pkgPath="/src/${o_pkg[2]}"
  elif ((${#o_p[@]} == 1)); then
    o_pkgPath="/src/${o_n[2]}"
  else
    o_pkgPath=""
  fi
  unset o_p
  unset o_pkg

  updatedDefPrefs="false"
  updateLine="### UNISON DEFAULT PREFS UPDATED $(echo "$(date)") BY COMMAND ~/.zshrc:unison:set:path ###"
  defaultFile=""
  pathUpdated="false"
  count=0
  afterRoots=""
  beforeRootsRead="false"
  while IFS= read -r line; do
    temp=$line
    count=($count + 1)
    if [[ ${line:0:4} == "path" || ${line:1:4} == "path" || ${line:2:4} == "path" ]]; then
      temp="path = ${o_n[2]}$o_pkgPath"
      pathUpdated="true"
    elif [[ ${line:0:32} == "### UNISON DEFAULT PREFS UPDATED" ]]; then
      temp="$updateLine"
      updatedDefPrefs="true"
    fi
    if [[ $beforeRootsRead == "false" || ${line:0:66} == "# Specific paths to synchronize (or leave out to sync entire root)" ]]; then
      if [[ ${line:0:66} == "# Specific paths to synchronize (or leave out to sync entire root)" ]]; then
        count=0
      fi
      if ((count > 1)) || [[ ${line:0:66} == "# Specific paths to synchronize (or leave out to sync entire root)" ]]; then
        defaultFile="$defaultFile\n$temp"
      else
        defaultFile="$temp"
      fi
    elif [[ $beforeRootsRead == "true" ]]; then
      if ((count > 1)); then
        afterRoots="$afterRoots\n$temp"
      else
        afterRoots="$temp"
      fi
    fi

    if (($(strindex $temp "root") != -1 && $(strindex $temp "ssh") != -1 && $(strindex $temp "#") == -1)); then
      sshIndex=($(strindex $temp "ssh") + 6)
      sshTo=${temp:$sshIndex}
      beforeRootsRead="true"
      count=0
    fi

  done < "$input"
  if [[ $updatedDefPrefs != "true" ]]; then
    defaultFile="$updateLine\n\n$defaultFile"
  fi
  if [[ $pathUpdated != "true" ]]; then
    defaultFile="$defaultFile\npath = ${o_n[2]}$o_pkgPath\n$afterRoots"
  else
    defaultFile="$defaultFile\n$afterRoots"
  fi
  echo $defaultFile > $input
  if ((${#o_s[@]} >= 1)); then
    echo $defaultFile
  fi
  echo $sshTo
}

strindex() {
  x="${1%%$2*}"
  [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}
