# Bash PS1 (Not updated)
# PS1='\n\[\e[m\][\[\e[35m\]\D{%y-%m-%d} \t\[\e[m\]] [\[\e[34m\]\h\[\e[m\]] [\[\e[33m\]\u\[\e[m\]] \[\e[37m\]\w \n\[\e[m\]$ '
PS1='\n\[\e[38;2;85;205;252m\]\D{%a} \[\e[38;2;247;168;184m\]\D{%m-}\[\e[38;2;255;255;255m\]\D{%d} \[\e[38;2;247;168;184m\]\D{%H:}\[\e[38;2;85;205;252m\]\D{%M}\[\e[0m\] \[\e[34m\]\h \[\e[33m\]\u \[\e[37m\]\w \n\[\e[m\]> '

# Prompt helper
alias prompt="$SCR/helpers/prompt.py"
PROMPT_RAW=""
prompt-show() {
    prompt "$PROMPT_RAW" show
}
prompt-set() {
    PROMPT_RAW=$(prompt "$PROMPT_RAW" set $1 $2)
}
prompt-update() {
    PROMPT=$(prompt-show)
}
pcolor() {
    tmp="$@"
    prompt "$tmp" color
}

########### Build a zsh prompt
# New line first
prompt-set 0 "&n"
# Time stamp
prompt-set 10 "&5%D{%a %m-%d %H:%M}&r "
[[ "$HOST" != "ASH-Tech" ]] && prompt-set 10 "&gf(#55CDFC)%D{%a} &gf(#F7A8B8)%D{%m-}&f%D{%d} &gf(#F7A8B8)%D{%H:}&gf(#55CDFC)%D{%M}&r "
# Hostname
prompt-set 20 "&1%m&r "
[[ "$HOST" == "ASH-Tech" ]] && prompt-set 20 "&gf(#55CDFC)AS&gf(#F7A8B8)H &fT&gf(#F7A8B8)EC&gf(#55CDFC)H&r "
# Username, or show a cat if I'm ZH
prompt-set 30 "&e%n&r "
[[ "$USER" == "ash" ]] && prompt-set 30 "🐱 "
# Directory
prompt-set 40 "&r%~ "
# New line after the prompt header
prompt-set 1000 "&n"
# Prompt before input
prompt-set 1100 "> "
# Create prompt
prompt-update
