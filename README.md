# Motivation
If you struggle adopting `git rebase` in your team​ you could use `​git ​merge` (and probably you do)​. The problem with merge is if you merge `master` branch into your feature branch, it will apply the old changes on top of the new ones. So the solution is to create a temporary branch from `master`​, merge the changes from the feature branch and then rename the branch to the feature branch's name, set the proper upstream and so on... Since it sounds like a long procedure (and it is, believe me), there is an easier way. You could execute:

```
catch-up origin/master
# resolve your conflicts here (ones, not many times as you would do with the rebase)
git commit
catch-up --continue
# this will clean up after you.
```

# Installation
Simply execute:

```
curl -sS https://raw.githubusercontent.com/ibetovski/catch-up-with-merge/master/install.sh | sh
```

# Contribute
Feel free to comment, contribute or give a suggestion how to make it more reliable.

# MIT License