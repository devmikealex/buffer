cd /d "%~dp0"
start "" chrome.exe  --user-data-dir="%~n0" --remote-debugging-port=9444 --disable-web-security