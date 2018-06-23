# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Use Antigen
# Load the oh-my-zsh's library.
source ~/.dotfiles/antigen.zsh

antigen init $HOME/.antigenrc

# configure comdump location
export ANTIGEN_COMPDUMPFILE=/path/to/location/.zcompdump

# use fzf for quick fuzzy search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# mutt for gmail - 2 step verification
export MUTT_EMAIL_ADDRESS="liangquanzhou1@gmail.com"
export MUTT_REALNAME="Liangquan Zhou"
export MUTT_SMTP_URL="smtp://liangquanzhou1@smtp.gmail.com:587/"

export XML_CATALOG_FILES=/usr/local/etc/xml/catalog
