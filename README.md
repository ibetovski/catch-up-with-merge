# Motivation
If you struggle adopting `git rebase` in your team​ you could use `​git ​merge` (and probably you do)​. The problem with merge is if you merge `master` branch into your feature branch, it will apply the old changes on top of the new ones. So the solution is to create a temporary branch from `master`​, merge the changes from the feature branch and then rename the branch to the feature branch's name, set the proper upstream and so on... Since it sounds like a long procedure (and it is, believe me), there is an easier way. You could execute:

```
catch-up origin/master
# resolve your conflicts here (once!, not many times as you would do with the rebase if you have many commits)
git commit
catch-up --continue
# this will clean up after you.
```

# Installation
Simply execute:

```
curl -sS https://raw.githubusercontent.com/ibetovski/catch-up-with-merge/master/install.sh | sh
```

# How it works

1. `catch-up [parent-branch]` - You tell the script which branch to catch up with. Usually this is `master` or `develop`. It is a good idea to have that branch up to date. Otherwise use `origin/develop` instead. The script will do `git fetch` first. This way you will be up-to-date.
2. It fetches the latest changes from the remote
3. It creates a temporary branch from the parent using the name of your feature branch but with random number as a suffix. If the feature branch is `abc-1234` it will create `abc-1234-temp76578676`.
4. Merges the feature branch into the temporary branch.
5. Deletes the feature branch
6. Renames the temporary branch to the feature branch it has deleted
7. Sets the upstream to the remote (Here it is hardcoded to `origin/[feature-branch]`)

# Contribute
Feel free to comment, contribute or give a suggestion how to make it more reliable.

# MIT License