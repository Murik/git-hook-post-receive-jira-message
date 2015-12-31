# post-receive hook

Add comments in the Jira tickets using Jira API.
When the git push is received, every commit adds a comment depending on the Jira tickets found in the commit message.
The Jira comment contains :
- SHA1 commit
- Commit author
- Commit date
- Commit message
- A link to your git service website of the commit if gitServiceRootUrl is not tempty

This file must be named post-receive, and be saved in the hooks directory in a bare git repository.
Run "chmod +x post-receive" to make it executable.

Don't forget to change
- Jira server urls
- Jira id regex
- Jira group name
- Jira login
- Jira password
- git service url
