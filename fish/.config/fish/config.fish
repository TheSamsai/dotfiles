# custom entries on PATH
#set -gx PATH (ruby -e 'print Gem.user_dir')/bin $PATH
set -gx PATH /usr/local/bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH /opt/atlassian/plugin-sdk/bin $PATH

# virsh should connect to the system session by default
set -gx LIBVIRT_DEFAULT_URI "qemu:///system"

# set the pacaur directory
set -gx AURDEST "/home/luca/aur"

# fix up streamlink with mpv
alias streamlink="streamlink --player mpv"

# convenience function
alias gpg_decrypt_clipboard="xsel --clipboard | gpg --decrypt -"

# alias pmbootstrap.py
alias pmb /mnt/hdd/postmarketOS/pmbootstrap/pmbootstrap.py

# setup "thefuck"
thefuck --alias | source

# set email and name for debian stuff
set -gx DEBFULLNAME "Luca Weiss"
set -gx DEBEMAIL "luca@z3ntu.xyz"

function monstercatinstinct
   /usr/bin/streamlink --player mpv "https://www.youtube.com/watch?v=-rWPZtM1eRs" 480p &
   disown
end

# start X at login
#if status --is-login
#    if test -z "$DISPLAY" -a $XDG_VTNR -eq 1
#        exec startx -- -keeptty
#    end
#end
