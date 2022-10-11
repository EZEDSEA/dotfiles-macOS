#!/bin/zsh
SCRIPT_DIR=${0:a:h}
source "$SCRIPT_DIR/_unset_path.sh"
source "$SCRIPT_DIR/_set_path.sh"

function unison:terminal:notifier() {
  zparseopts -E -D -name:=o_n -pkg=o_p -specifyPkg:=o_pkg -help=o_h
  o_pkgPath=""
  if [[ "$OSTYPE" != "darwin"* ]]; then
    echo "Only MacOS is supported."
    return 0
  fi
  if ((${#o_h} >= 1)); then
    echo ""
    echo ""
    echo "		unison:terminal-notifier command function"
    echo " 				Requires: unison:set:path and unison:unset:path command functions"
    echo "			Features:"
    echo "				Start up unison and continuously retrieves unison output and sends useful output as a MacOS notification."
    echo "				Sends a macOS User Notification banner when UNISON has finished syncing file(s)"
    echo "					Banner includes the time of sync, Name of files synced, and number of files synced"
    echo "				Sends a macOS User Notification banner when UNISON failed to sync file(s)"
    echo "					Banner includes the time of failure, Name of files not synced, and number of files not synced"
    echo "				Sends a macOS User Notification banner when UNISON has a fatal error"
    echo "					Banner includes time of fatal error, and fatal error reason."
    echo "					Note: a fatal error means unison has crashed which means unison:terminal-notifier command function will also stop running"
    echo ""
    echo "		flags:"
    echo "			--help				view help info"
    echo "			--name				Optional flag to specify a workspace to sync and requires an argument with the workspace name."
    echo "								If flag is not specified entire root folder will be synced by unison."
    echo "			--pkg				Optional flag to sync only one package in the workspace. Chosen package will be the workspaces name."
    echo "			--specifyPkg 		Optional flag to sync only one package in the workspace. Chosen package is based the required argument string."
    return 1
  fi
  if [[ $(where terminal-notifier) == "terminal-notifier not found" ]]; then
    echo "terminal-notifier binary not found, trying to find with brew"
    notifierPath=""
    brew info terminal-notifier \
      | while IFS= read -r line; do
        if [[ ${line:0:36} == "/usr/local/Cellar/terminal-notifier/" ]]; then
          notifierPath="${line:0:41}/terminal-notifier.app/Contents/MacOS"
          echo "Terminal-notifier already installed by brew. Adding temporary export PATH and alias"
          export PATH=$notifierPath:$PATH
          alias terminal-notifier="$notifierPath/terminal-notifier"
        fi
      done

    if [[ $notifierPath == "" ]]; then
      echo "terminal-notifier is not installed, trying to install with brew"
      brew install terminal-notifier \
        | while IFS= read -r line; do
          echo $line
          if (($(strindex $line "/usr/local/Cellar/terminal-notifier/") != -1)); then
            echo "Found You"
            notifierStart=$(strindex $line "/usr/local/Cellar/terminal-notifier/")
            notifierEnd=($(strindex $line ": ") - $notifierStart)
            notifierPath="${line:$notifierStart:$notifierEnd}/terminal-notifier.app/Contents/MacOS"
            echo "Installed terminal-notifier. Adding to PATH temporarily, and creating a temporary alias"
            export PATH=$notifierPath:$PATH
            alias terminal-notifier="$notifierPath/terminal-notifier"
          fi
        done
    fi
    if [[ $(where terminal-notifier) == "terminal-notifier not found" ]]; then
      echo "💥Fatal Error💥: Couldn't install terminal-notifier"
      echo "	Try running manually:"
      echo "		% brew install terminal-notifier"
      echo "		% brew info terminal-notifier"
      echo "		% export PATH=<brew info output to binary>/terminal-notifier.app/Contents/MacOS:\$PATH"
      echo "		% where terminal-notifier"
      return 0
    else
      echo "  🎉Success🎉: terminal-notifier installed successfully.\n"
      echo "  Exported PATH env variable temparily that now inclues dir to terminal-notifier binary\n"
      echo "    Warning: make sure to add $notifierPath to your PATH and alias terminal-notifier in ~/.zshrc"
      echo ""
      echo "    For example, add these two lines to your ~/.zshrc file:"
      echo "      export PATH=$notifierPath:\$PATH"
      echo "      alias terminal-notifier=$notifierPath/terminal-notifier"
      echo ""
      echo ""
    fi
  fi
  if ((${#o_n[@]} == 2)); then
    o_ws=$o_n[2]
    syncSshTo="Host Not Found"
    if ((${#o_pkg[@]} == 2)); then
      echo "Syncing set to only $o_ws/src/${o_pkg[2]} bidirectionally"
      syncSshTo="$(unison:set:path --name $o_ws --specifyPkg $o_pkg[2])"
    elif ((${#o_p[@]} == 1)); then
      echo "Syncing set to only $o_ws/src/$o_ws bidirectionally"
      syncSshTo="$(unison:set:path --name $o_ws --pkg)"
    else
      echo "Syncing set to entire workspace bidirectionally: $o_ws"
      syncSshTo="$(unison:set:path --name $o_ws)"
    fi
  elif ((${#o_n[@]} == 1)); then
    echo "--name flag's argument is required. It's the name of the workspace. Try running with --help for guidance"
    return 1
  else
    syncSshTo="$(unison:unset:path)"
    echo "Syncing set to entire root directory bidirectionally: $syncSshTo"
  fi
  unset o_p
  unset o_pkg
  hostEndIndex=($(strindex $syncSshTo ".com") + 4)
  echo "UNISON Currently Running and Syncing bidirectionally from laptop to ${syncSshTo:0:$hostEndIndex}"
  echo "  Do Not Close This Terminal Session or Kill This Running Command"
  fileStrings=""
  unison -ui text 2>&1 > /dev/null | while IFS= read -r line; do
    #echo $line
    if [[ ${line:1:3} == "END" ]]; then
      lastLine=${line:19}
      searchstring="src/"
      rest=${lastLine#*$searchstring}
      fileIndex=(${#lastLine} - ${#rest})
      searchstring="/"
      fileString=${lastLine:$fileIndex}
      rest=${fileString#*$searchstring}
      fileIndex=(${#fileString} - ${#rest})
      fileStrings="$fileStrings${fileString:$fileIndex}, "
    elif [[ ${line:1:3} == "BGN" ]]; then
      bgnlastLine=${line:19}
      searchstring="src/"
      rest=${lastLine#*$searchstring}
      bgnfileIndex=(${#bgnlastLine} - ${#rest})
      searchstring="/"
      bgnfileString=${bgnlastLine:$bgnfileIndex}
      rest=${bgnfileString#*$searchstring}
      bgnfileIndex=(${#bgnfileString} - ${#bgnrest})
      bgnfileStrings="$fileStrings${fileString:$fileIndex}, "
    elif [[ ${line:0:4} == "Sync" ]]; then
      emoji=🤜🤛
      groupId="UNISON"
      message=${line:39}
      line_length=${#line}
      msg_length=(${#message} - 1)
      message=${message:0:$msg_length}
      if [[ $msg_length < 1 ]]; then
        $message=$line
        $msg_length=${#message}
      fi
      fileStrings_length=(${#fileStrings} - 2)
      if [[ ${line:0:26} == "Synchronization incomplete" ]]; then
        fileStrings=$bgnfileStrings
        fileStrings_length=(${#fileStrings} - 2)
        message=${line:41}
        msg_length=(${#message} - 1)
        groupId="UNISONFAIL"
        message="FAIL: ${message:0:$msg_length}"
        echo $message
        emoji=⚠️⚠️
      fi
      echo $message
      currentTime="$(date)"
      terminal-notifier -message "$message" \
        -subtitle ${fileStrings:0:$fileStrings_length} \
        -title "💻$emoji🖥️@"${currentTime:11:12}" | UNISON" \
        # -sound "Default" -group "$groupId"
      fileStrings=""
      bgfileStrings=""
    elif [[ ${line:0:11} == "Fatal error" ]]; then
      echo $line
      currentTime="$(date)"
      terminal-notifier -message "$line" \
        -title "💻💥💥🖥️UNISON SYNC STOPPED@${currentTime:11:8} PST" \
        -sound "Bottle" -group "UNISONFAIL"
    fi
  done
}
