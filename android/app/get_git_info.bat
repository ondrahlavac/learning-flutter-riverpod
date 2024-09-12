@echo off

REM Get Git information

git log -1 --pretty=format:"%%an" > temp.txt
set /p GIT_AUTHOR=<temp.txt
del temp.txt

git log -1 --pretty=format:"%%ae" > temp.txt
set /p GIT_EMAIL=<temp.txt
del temp.txt

for /f "delims=" %%a in ('git rev-parse HEAD') do set "GIT_HASH=%%a"
for /f "delims=" %%a in ('git rev-parse --abbrev-ref HEAD') do set "GIT_BRANCH=%%a"
for /f "delims=" %%a in ('git config --get remote.origin.url') do set "GIT_URL=%%a"

REM Create a Dart class with the git info
(
echo class GitInfo {
echo   static const String author = "%GIT_AUTHOR%";
echo   static const String email = "%GIT_EMAIL%";
echo   static const String hash = "%GIT_HASH%";
echo   static const String branch = "%GIT_BRANCH%";
echo   static const String url = "%GIT_URL%";
echo }
) > ../../lib/git_info.dart

echo Git information has been written to lib\git_info.dart