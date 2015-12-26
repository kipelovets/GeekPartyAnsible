#!/bin/bash

read -d '' PAYLOAD <<"EOF"
{
  "ref": "refs/heads/master",
  "before": "0d44e4dc09df88c03c6e23bc225fbde36c38477e",
  "after": "6ead527eb6a7a495852706ca3f6e3d715e0ef141",
  "created": false,
  "deleted": false,
  "forced": false,
  "base_ref": null,
  "compare": "https://github.com/GeekPartyTeam/GeekParty-Site/compare/0d44e4dc09df...6ead527eb6a7",
  "commits": [
    {
      "id": "6ead527eb6a7a495852706ca3f6e3d715e0ef141",
      "distinct": true,
      "message": "Image fix",
      "timestamp": "2015-10-14T16:50:44+03:00",
      "url": "https://github.com/GeekPartyTeam/GeekParty-Site/commit/6ead527eb6a7a495852706ca3f6e3d715e0ef141",
      "author": {
        "name": "Георгий Коршунов",
        "email": "gk@4xxi.com"
      },
      "committer": {
        "name": "Георгий Коршунов",
        "email": "gk@4xxi.com"
      },
      "added": [

      ],
      "removed": [

      ],
      "modified": [
        "public_html/upd/img/rating-full-user.png"
      ]
    }
  ],
  "head_commit": {
    "id": "6ead527eb6a7a495852706ca3f6e3d715e0ef141",
    "distinct": true,
    "message": "Image fix",
    "timestamp": "2015-10-14T16:50:44+03:00",
    "url": "https://github.com/GeekPartyTeam/GeekParty-Site/commit/6ead527eb6a7a495852706ca3f6e3d715e0ef141",
    "author": {
      "name": "Георгий Коршунов",
      "email": "gk@4xxi.com"
    },
    "committer": {
      "name": "Георгий Коршунов",
      "email": "gk@4xxi.com"
    },
    "added": [

    ],
    "removed": [

    ],
    "modified": [
      "public_html/upd/img/rating-full-user.png"
    ]
  },
  "repository": {
    "id": 9258594,
    "name": "GeekParty-Site",
    "full_name": "GeekPartyTeam/GeekParty-Site",
    "owner": {
      "name": "GeekPartyTeam",
      "email": null
    },
    "private": false,
    "html_url": "https://github.com/GeekPartyTeam/GeekParty-Site",
    "description": "Sources of GameDevParty.Ru website — home of first russian gamejam",
    "fork": false,
    "url": "https://github.com/GeekPartyTeam/GeekParty-Site",
    "forks_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/forks",
    "keys_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/keys{/key_id}",
    "collaborators_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/collaborators{/collaborator}",
    "teams_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/teams",
    "hooks_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/hooks",
    "issue_events_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/issues/events{/number}",
    "events_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/events",
    "assignees_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/assignees{/user}",
    "branches_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/branches{/branch}",
    "tags_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/tags",
    "blobs_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/git/blobs{/sha}",
    "git_tags_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/git/tags{/sha}",
    "git_refs_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/git/refs{/sha}",
    "trees_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/git/trees{/sha}",
    "statuses_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/statuses/{sha}",
    "languages_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/languages",
    "stargazers_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/stargazers",
    "contributors_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/contributors",
    "subscribers_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/subscribers",
    "subscription_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/subscription",
    "commits_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/commits{/sha}",
    "git_commits_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/git/commits{/sha}",
    "comments_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/comments{/number}",
    "issue_comment_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/issues/comments{/number}",
    "contents_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/contents/{+path}",
    "compare_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/compare/{base}...{head}",
    "merges_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/merges",
    "archive_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/{archive_format}{/ref}",
    "downloads_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/downloads",
    "issues_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/issues{/number}",
    "pulls_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/pulls{/number}",
    "milestones_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/milestones{/number}",
    "notifications_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/notifications{?since,all,participating}",
    "labels_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/labels{/name}",
    "releases_url": "https://api.github.com/repos/GeekPartyTeam/GeekParty-Site/releases{/id}",
    "created_at": 1365245316,
    "updated_at": "2015-08-17T10:40:19Z",
    "pushed_at": 1444830647,
    "git_url": "git://github.com/GeekPartyTeam/GeekParty-Site.git",
    "ssh_url": "git@github.com:GeekPartyTeam/GeekParty-Site.git",
    "clone_url": "https://github.com/GeekPartyTeam/GeekParty-Site.git",
    "svn_url": "https://github.com/GeekPartyTeam/GeekParty-Site",
    "homepage": "GameDevParty.Ru",
    "size": 13168,
    "stargazers_count": 0,
    "watchers_count": 0,
    "language": "PHP",
    "has_issues": true,
    "has_downloads": true,
    "has_wiki": true,
    "has_pages": false,
    "forks_count": 0,
    "mirror_url": null,
    "open_issues_count": 0,
    "forks": 0,
    "open_issues": 0,
    "watchers": 0,
    "default_branch": "master",
    "stargazers": 0,
    "master_branch": "master",
    "organization": "GeekPartyTeam"
  },
  "pusher": {
    "name": "kipelovets",
    "email": "kipelovets@mail.ru"
  },
  "organization": {
    "login": "GeekPartyTeam",
    "id": 3609470,
    "url": "https://api.github.com/orgs/GeekPartyTeam",
    "repos_url": "https://api.github.com/orgs/GeekPartyTeam/repos",
    "events_url": "https://api.github.com/orgs/GeekPartyTeam/events",
    "members_url": "https://api.github.com/orgs/GeekPartyTeam/members{/member}",
    "public_members_url": "https://api.github.com/orgs/GeekPartyTeam/public_members{/member}",
    "avatar_url": "https://avatars.githubusercontent.com/u/3609470?v=3",
    "description": null
  },
  "sender": {
    "login": "kipelovets",
    "id": 204543,
    "avatar_url": "https://avatars.githubusercontent.com/u/204543?v=3",
    "gravatar_id": "",
    "url": "https://api.github.com/users/kipelovets",
    "html_url": "https://github.com/kipelovets",
    "followers_url": "https://api.github.com/users/kipelovets/followers",
    "following_url": "https://api.github.com/users/kipelovets/following{/other_user}",
    "gists_url": "https://api.github.com/users/kipelovets/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/kipelovets/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/kipelovets/subscriptions",
    "organizations_url": "https://api.github.com/users/kipelovets/orgs",
    "repos_url": "https://api.github.com/users/kipelovets/repos",
    "events_url": "https://api.github.com/users/kipelovets/events{/privacy}",
    "received_events_url": "https://api.github.com/users/kipelovets/received_events",
    "type": "User",
    "site_admin": false
  }
}
EOF

curl --data-binary "$PAYLOAD"