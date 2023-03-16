github_token=$(<"$1")

curl -L \
 -H "Accept: application/vnd.github+json" \
 -H "Authorization: Bearer $github_token" \
 -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/iii-companion/companion/releases/latest \
  | jq  -r '.tag_name' > dist/version.txt
