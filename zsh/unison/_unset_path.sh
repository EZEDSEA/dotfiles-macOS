#!/bin/zsh
function unison:unset:path() {
  zparseopts -E -D -show=o_s -help=o_h
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
    echo "	Comments out the path variable in default.prfs to allow for entire root directory syncing"
    echo ""
    echo "		flags:"
    echo "			--show		outputs the new default.prf to terminal"
    return 1
  fi
  updatedDefPrefs="false"
  input="/Users/$USER/.unison/default.prf"
  updateLine="### UNISON DEFAULT PREFS UPDATED AT $(echo $(date)) BY COMMAND ~/.zshrc:unison:unset:path ###"
  defaultFile=""
  count=0
  sshTo=""
  while IFS= read -r line; do
    count=($count + 1)
    temp=$line
    if (($(strindex $line "root") != -1 && $(strindex $line "ssh") != -1)); then
      sshIndex=($(strindex $line "ssh") + 6)
      sshTo=${line:$sshIndex}
    fi
    if [[ ${line:0:4} == "path" || ${line:1:4} == "path" || ${line:2:4} == "path" ]]; then
      temp="#path = "
    elif [[ ${line:0:32} == "### UNISON DEFAULT PREFS UPDATED" ]]; then
      temp="$updateLine"
      updatedDefPrefs="true"
    fi
    if (($count > 1)); then
      defaultFile="$defaultFile\n$temp"
    else
      defaultFile="$temp"
    fi
    if (($(strindex $line "root") != -1 && $(strindex $line "ssh") != -1 && $(strindex $line "#") == -1)); then
      sshIndex=($(strindex $line "ssh") + 6)
      sshTo=${line:$sshIndex}
      echo $sshTo
    fi
  done < "$input"

  if [[ $updatedDefPrefs != "true" ]]; then
    defaultFile="$updateLine\n\n$defaultFile"
  fi
  echo $defaultFile > $input
  if ((${#o_s[@]} >= 1)); then
    echo $defaultFile
  fi
}

strindex() {
  x="${1%%$2*}"
  [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}
