# >>>>>>>>>>>>>>>>>>>>>>>>>>>>> Personal Settings Start >>>>>>>>>>>>>>>>>>>>>>>>>>>>>

function settings
    vim ~/.config/fish/config.fish
end

function iCloud
    cd '/Users/xiao/Library/Mobile Documents/com~apple~CloudDocs'
end

function cman
    man -M /usr/local/share/man/zh-CN $argv
end

function openai
    ~/Workspace/Lab/Archives/ChatGPT/chatgpt.py $argv
end

function gemini
    ~/Workspace/Lab/Archives/Gemini/gemini.py $argv
end

function llama
    ~/Workspace/Lab/Archives/Llama-2/llama-2.py $argv
end

function trans
    openai translate $argv
end

function trans2
    gemini translate $argv
end

function debug
    openai debug $argv
end

function unproxy
    set -e http_proxy
    set -e https_proxy
    set -e all_proxy
    set -e HTTP_PROXY
    set -e HTTPS_PROXY
    set -e ALL_PROXY
    echo 'Proxy off'
end

# Functions

function ccman
    ~/Workspace/Lab/Archives/ChatGPT/ccman.sh
end

function ccman-2
    ~/Workspace/Lab/Archives/Gemini/ccman.sh
end

function bak
    ~/Workspace/Lab/Archives/bak.sh
end

function res
    ~/Workspace/Lab/Archives/res.sh
end

function rmhis
    ~/Workspace/Lab/Archives/rmhis.sh
end

function backup-config
    ~/Workspace/Lab/Archives/backup-config.sh
end

# <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< Personal Settings End <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


# >>>>>>>>>>>>>>>>>>>>>>>>>>>> Program Requirements Start >>>>>>>>>>>>>>>>>>>>>>>>>>>>

set -x PATH "/opt/homebrew/bin" $PATH
set -x PATH "/opt/homebrew/opt/curl/bin" $PATH
set -x LDFLAGS "-L/opt/homebrew/opt/curl/lib"
set -x CPPFLAGS "-I/opt/homebrew/opt/curl/include"
set -x PKG_CONFIG_PATH "/opt/homebrew/opt/curl/lib/pkgconfig"

set -x PATH "/opt/homebrew/opt/gnu-sed/libexec/gnubin" $PATH
set -x PATH "/opt/homebrew/opt/python@3.11/libexec/bin" $PATH

set -x PATH "/opt/homebrew/opt/binutils/bin" $PATH
set -x LDFLAGS "-L/opt/homebrew/opt/binutils/lib"
set -x CPPFLAGS "-I/opt/homebrew/opt/binutils/include"

set -x PATH "/Users/xiao/Library/Python/3.11/bin" $PATH
set -x PATH "$PATH:/Users/xiao/.local/bin"

[ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish

# <<<<<<<<<<<<<<<<<<<<<<<<<<<< Program Requirements End <<<<<<<<<<<<<<<<<<<<<<<<<<<<