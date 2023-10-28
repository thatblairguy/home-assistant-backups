
setlocal
:: locale safe, but sufficient for my needs.
set timestamp=%date:~10,4%-%date:~4,2%-%date:~7,2% %time:~0,2%-%time:~3,2%-%time:~6,2%

for %%a in (config backup ssl) do (
  robocopy \\hassio.local\%%a "the-stuff\%timestamp%\%%a" /mir
)
