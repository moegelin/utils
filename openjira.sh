openjira() {
  # Get current branch name
  local branch
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null) || {
    echo "Not a git repository."
    return 1
  }

  # Extract ONEUP-<number>
  local ticket
  ticket=$(echo "$branch" | grep -oE 'ONEUP-[0-9]+')

  if [[ -z "$ticket" ]]; then
    echo "No ONEUP ticket found in branch name: $branch"
    return 1
  fi

  # Construct and open the Jira URL
  local url="https://axelspringer.atlassian.net/browse/$ticket"
  echo "Opening: $url"
  if command -v open >/dev/null; then
    open "$url"     # macOS
  elif command -v xdg-open >/dev/null; then
    xdg-open "$url" # Linux
  else
    echo "No suitable open command found."
    return 1
  fi
}
