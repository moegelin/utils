# Open Github for the current project from the commandline
opengit() {
  git_repo=`git remote -v | awk '/fetch/{print $2}' | sed -Ee 's#(git@|git://)#https://#' -e 's@com:@com/@' -e 's%\.git$%%' | awk '/github/' | cut -d"/" -f 4,5`
  git_url="https://github.com/"$git_repo""
  open $git_url
}
