# Opens the existing pull request for the current branch 
openpr() {
  git_repo=`git remote -v | awk '/fetch/{print $2}' | sed -Ee 's#(git@|git://)#https://#' -e 's@com:@com/@' -e 's%\.git$%%' | awk '/github/' | cut -d"/" -f 4,5`
  git_branch=`git symbolic-ref HEAD | cut -d"/" -f 3,4`
  git_api_url="https://api.github.com/repos/"$git_repo"/pulls"
  pr_url=`curl -s -X GET -G $git_api_url \
  -H "Authorization: token <access_token>" \
  -H "Accept: application/vnd.github.v3+json" \
  -d head=spring-media:$git_branch | jq '.[0].html_url' | tr -d '"'`
  if [ $pr_url = null ]
  then
      echo "No PR Url found. Push first."
  else
      print Found GitHub pull request url: $pr_url
      open $pr_url
  fi
}
