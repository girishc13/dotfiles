# You can put these two commands in your local shell initialization script
# e.g. ~/.bashrc or ~/.zshrc
export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8

export PATH=/usr/local/bin:/usr/local/sbin:$PATH

alias config='/usr/bin/git --git-dir=/Users/gchandrashek/.cfg/ --work-tree=/Users/gchandrashek'
alias config='/usr/bin/git --git-dir=/Users/gchandrashek/.cfg/ --work-tree=/Users/gchandrashek'

# added by Miniconda3 4.5.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/gchandrashek/miniconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/gchandrashek/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/gchandrashek/miniconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/gchandrashek/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

