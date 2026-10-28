.data.user as $u
| "repos=\($u.repositories.totalCount)",
  "stars=\([$u.repositories.nodes[].stargazerCount] | add // 0)",
  "commits=\($u.contributionsCollection.totalCommitContributions + $u.contributionsCollection.restrictedContributionsCount)",
  "contribs=\($u.contributionsCollection.contributionCalendar.totalContributions)",
  "prs=\($u.pullRequests.totalCount)",
  "issues=\($u.issues.totalCount)",
  ( [$u.repositories.nodes[].languages.edges[]]
    | group_by(.node.name)
    | map({name: .[0].node.name, size: (map(.size) | add)})
    | sort_by(-.size)
    | .[:6]
    | to_entries[]
    | "lang.\(.key)=\(.value.name):\(.value.size)" )
