@echo off
setlocal enabledelayedexpansion
set tool=
set /p tool="操作を選んでください。push or reset > "
if "%tool%"=="push" (
    set msg=
    set /p msg="メッセージを選んでください。Message > "
    git add .
    git commit -m "!msg!"
    git push -u origin master
    echo push - 完了。
) else if "%tool%"=="reset" (
    git fetch origin master
    git reset --hard origin/master
    echo reset - 完了。
) else (
    echo 操作なし - 完了。
)
@echo on