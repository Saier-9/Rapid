# Rapid - A Git Alias Set
This script provides a full suite of Git command aliases for Windows users via the `g.bat` file. It's designed to speed up your Git workflow and make commonly used commands easier to type.

## Usage
1. Place `g.bat` directly in the `C:\Users\%USERPROFILE%\Scripts\` folder of your system path.
2. Add the folder to your PATH, by open the start menu and search for `Environment Variables`. Once open, select the `PATH` variable, and select `Edit`. In the new window, select `New` and type in `C:\Users\%USERPROFILE%\Scripts\`, replacing `%USERPROFILE%` with your username. Finally, select `OK` and close the remaining window.
3. Once in your PATH, use the new commands by typing `g <alias>` in your Git-enabled terminal. All arguments and flags remain the defaults.

## Tips
- If you're using Git Bash or Windows Terminal, this will work out-of-the-box as long as `g.bat` is in your PATH.
- You can change the `g` prefix by changing the name of the `g.bat` file.

For example, to commit changes and push to a repository:
```bash
g st             # git status
g a file.ext     # git add file.ext
g cm -m "msg"    # git commit -m "msg"
g psm            # git push origin main
```

## Included Aliases
#### Help
| Alias | Command | Description |
| -------- | -------- | -------- |
|`g help`|N/A|Shows this list|
#### Setup and configuration
| Alias | Command | Description |
| -------- | -------- | -------- |
|`g cf`|`git config`|Set up your Git credentials|
#### Start a working area
| Alias | Command | Description |
| -------- | -------- | -------- |
|`g cln`|`git clone`|Clone a repository into a new directory|
|`g in`|`git init`|Create an empty Git repository or reinitialize an existing one|
#### Work on the current change
| Alias | Command | Description |
| -------- | -------- | -------- |
|`g a`|`git add`|Add file contents to the index|
|`g mv`|`git mv`|Move or rename a file, a directory, or a symlink|
|`g rst`|`git restore`|Restore working tree files|
|`g rm`|`git rm`|Remove files from the working tree and from the index|
|`g sta`|`git stash`|Save changes temporarily|
#### Examine the history and state
| Alias | Command | Description |
| -------- | -------- | -------- |
|`g bs`|`git bisect`|Use binary search to find the commit that introduced a bug|
|`g df`|`git diff`|Show changes between commits, commit and working tree, etc|
|`g gr`|`git grep`|Print lines matching a pattern|
|`g lg`|`git log`|Show commit logs|
|`g shw`|`git show`|Show various types of objects|
|`g st`|`git status`|Show the working tree status|
#### Grow, mark and tweak your common history
| Alias | Command | Description |
| -------- | -------- | -------- |
|`g bf`|`git backfill`|Download missing objects in a partial clone|
|`g br`|`git branch`|List, create, or delete branches|
|`g cm`|`git commit`|Record changes to the repository|
|`g mrg`|`git merge`|Join two or more development histories together|
|`g rb`|`git rebase`|Reapply commits on top of another base tip|
|`g rs`|`git reset`|Reset current HEAD to the specified state|
|`g rv`|`git revert`|Create a new commit that undoes an earlier one|
|`g sw`|`git switch`|Switch branches|
|`g tag`|`git tag`|Create, list, delete or verify a tag object signed with GPG|
#### Collaborate
| Alias | Command | Description |
| -------- | -------- | -------- |
|`g bl`|`git blame`|Show who changed each line|
|`g cl`|`git clean`|Delete untracked files|
|`g ft`|`git fetch`|Download objects and refs from another repository|
|`g pl`|`git pull`|Fetch from and integrate with another repository or a local branch|
|`g plm`|`git pull origin main`|Fetch from and integrate with the main branch|
|`g ps`|`git push`|Update remote refs along with associated objects|
|`g psm`|`git push origin main`|Update remote refs along with associated objects from the main branch|