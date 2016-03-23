@if not exist "%HOME%" @set HOME=%HOMEDRIVE%%HOMEPATH%
@if not exist "%HOME%" @set HOME=%USERPROFILE%

@set APP_PATH=%HOME%\vim-plug
IF NOT EXIST "%APP_PATH%" (
    call git clone https://github.com/sherylynn/vim-plug.git "%APP_PATH%"
) ELSE (
    @set ORIGINAL_DIR=%CD%
    echo updating vim-plug
    chdir /d "%APP_PATH%"
    call git pull
    chdir /d "%ORIGINAL_DIR%"
    call cd "%APP_PATH%"
)
call rmlink "%HOME%\.vimrc"
call rmlink "%HOME%\_vimrc" 
call rmlink "%HOME%\.eslintrc.json" 
call rmlink "%HOME%\.tern-config" 
call rmdir "%HOME%\.vim" 

call mklink "%HOME%\.vimrc" "%APP_PATH%\config\vimrc"
call mklink "%HOME%\_vimrc" "%APP_PATH%\config\vimrc"
call mklink "%HOME%\.eslintrc.json" "%APP_PATH%\config\eslintrc.json"
call mklink "%HOME%\.tern-config" "%APP_PATH%\config\tern-config"
call mklink /J "%HOME%\.vim" "%APP_PATH%\"

IF NOT EXIST "%APP_PATH%\plugged" (
    call mkdir "%APP_PATH%\plugged"
)

::IF NOT EXIST "%HOME%/.vim/bundle/vundle" (
::    call git clone https://github.com/gmarik/vundle.git "%HOME%/.vim/bundle/vundle"
::) ELSE (
::  call cd "%HOME%/.vim/bundle/vundle"
::  call git pull
::  call cd %HOME%
::)

call vim +PlugInstall! +PlugClean! +qall

call npm i -g eslint eslint_d eslint-plugin-babel eslint-plugin-react eslint-plugin-react-native babel-eslint eslint-config-airbnb  --registry=http://registry.npm.taobao.org