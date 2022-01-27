# Shows the last opened git branches for the current repository
githist() {
for i in {1..10}; do
   branchName=$(git rev-parse --symbolic-full-name @{-$i};)
   echo "@{-$i} ${branchName}"
  done
}
