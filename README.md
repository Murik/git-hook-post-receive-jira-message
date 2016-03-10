# post-receive hook

Add comments in the Jira tickets using Jira API.
When the git push is received, every commit adds a comment depending on the Jira tickets found in the commit message.
The Jira comment contains :
- SHA1 commit
- Commit author
- Commit date
- Commit message
- A link to your git service website of the commit if gitServiceRootUrl is not empty

This file must be named post-receive, and be saved in the hooks directory in a bare git repository.
Run "chmod +x post-receive" to make it executable.

Don't forget to change in the script :
- Jira server urls
- Jira id regex
- Jira role name to limit comment visibility (not mandatory)
- Jira login
- Jira password
- git service url

If you want to test a simple comment creation 
reset && curl -D- -u myLogin:myPassword -X POST --data "{\"body\": \"test\" -H "Content-Type: application/json" http://jira-test.com/rest/api/2/issue/ABC-1234/comment

If you want to test a comment creation that will be visible only for a Jira role
curl -D- -u myLogin:myPassword -X POST --data "{\"body\": \"test\", \"visibility\": { \"type\": \"role\", \"value\": \"My role name\" }}" -H "Content-Type: application/json" http://jira-test.com/rest/api/2/issue/ABC-1234/comment
