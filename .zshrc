# Terraform
alias tf='terraform'
alias tfi='terraform init'
alias tfp='terraform plan'
alias tfa='terraform apply'

# Zed
alias zed="open -a /Applications/Zed.app -n"

# For when trying to type too fast, eg `gi ts`.
alias gi='git'
alias ts='status'
alias gits='git s'
alias gitps='git s'

# Set the prompt to show the current directory and a prompt symbol.
export PS1="%1~ %# "

# Kill the process listening on a port, eg `killport 8080` or `kill-port 8080`.
# Without an argument it asks for the port; an empty answer does nothing.
killport() {
  local port="$1"
  if [ -z "$port" ]; then
    read "port?Port: "
  fi
  [ -z "$port" ] && return
  local pids
  pids=$(lsof -ti tcp:"$port" -sTCP:LISTEN)
  if [ -z "$pids" ]; then
    echo "Ingen prosess på port $port"
    return 1
  fi
  echo "$pids" | xargs kill -9
}
alias kill-port='killport'