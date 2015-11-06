# git-hook-post-receive-jira-message

This hook adds comments in the jira tickets using jira API.
When the git push is received, every commit adds a comment depending on the jira tickets found in the commit message.

The jira comment contains :
- SHA1 commit
- Commit author
- Commit date
- Commit message

This file must be named post-receive, and be saved in the hook directory in a bare git repository.
Run "chmod +x post-receive" to make it executable.

Don't forget to change the jira server url, jira id regex, login and password
