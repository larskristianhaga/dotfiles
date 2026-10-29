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

# Kill the process listening on a port, eg `kill-port 8080`.
kill-port() {
  local pids
  pids=$(lsof -ti tcp:"$1" -sTCP:LISTEN)
  if [ -z "$pids" ]; then
    echo "Ingen prosess på port $1"
    return 1
  fi
  echo "$pids" | xargs kill -9
}
