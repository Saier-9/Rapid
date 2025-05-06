@echo off
setlocal

set cmd=%1
set args=%2 %3 %4 %5 %6 %7 %8 %9

set "args=%args:-fc=--force%"
set "args=%args:-rb=--rebase%"
set "args=%args:-hd=--hard%"
set "args=%args:-sf=--soft%"
set "args=%args:-br=--branch%"
set "args=%args:-pt=--patch%"
set "args=%args:-un=--unset%"
set "args=%args:-cf=--config%"
set "args=%args:-vb=--verbose%"
set "args=%args:-ia=--interactive%"
set "args=%args:-qt=--quiet%"
set "args=%args:-dr=--dry-run%"
set "args=%args:-ls=--list%"
set "args=%args:-us=--upstream%"
set "args=%args:-st=--staged%"

if /I "%cmd%"=="cln" (
    git clone %args%
    goto :eof
)

if /I "%cmd%"=="in" (
    git init %args%
    goto :eof
)

if /I "%cmd%"=="a" (
    git add %args%
    goto :eof
)

if /I "%cmd%"=="rst" (
    git restore %args%
    goto :eof
)

if /I "%cmd%"=="bs" (
    git bisect %args%
    goto :eof
)

if /I "%cmd%"=="df" (
    git diff %args%
    goto :eof
)

if /I "%cmd%"=="gr" (
    git grep %args%
    goto :eof
)

if /I "%cmd%"=="lg" (
    git log %args%
    goto :eof
)

if /I "%cmd%"=="shw" (
    git show %args%
    goto :eof
)

if /I "%cmd%"=="st" ( 
    git status %args%
    goto :eof
)

if /I "%cmd%"=="bf" (
    git backfill %args%
    goto :eof
)

if /I "%cmd%"=="br" (
    git branch %args%
    goto :eof
)

if /I "%cmd%"=="cm" (
    git commit -m "%args%"
    goto :eof
)

if /I "%cmd%"=="co" (
    git commit %args%
    goto :eof
)

if /I "%cmd%"=="mrg" (
    git merge %args%
    goto :eof
)

if /I "%cmd%"=="rb" (
    git rebase %args%
    goto :eof
)

if /I "%cmd%"=="rs" (
    git reset %args%
    goto :eof
)

if /I "%cmd%"=="sw" (
    git switch %args%
    goto :eof
)

if /I "%cmd%"=="tg" (
    git tag %args%
    goto :eof
)

if /I "%cmd%"=="bl" (
    git blame %args%
    goto :eof
)

if /I "%cmd%"=="cl" (
    git clean %args%
    goto :eof
)

if /I "%cmd%"=="ft" (
    git fetch %args%
    goto :eof
)

if /I "%cmd%"=="pl" (
    git pull %args%
    goto :eof
)

if /I "%cmd%"=="plm" (
    git pull origin main %args%
    goto :eof
)

if /I "%cmd%"=="ps" (
    git push %args%
    goto :eof
)

if /I "%cmd%"=="psm" (
    git push origin main %args%
    goto :eof
)

if /I "%cmd%"=="acp" (
    git add .
    git commit -m "%args%"
    git push
    goto :eof
)

if /I "%cmd%"=="spp" (
    git stash
    git pull
    git stash pop
    goto :eof
)

if /I "%cmd%"=="help" (
    echo Setup and configuration
    echo ^| g cf  ^| git config           ^| Set your Git credentials                                              ^|
    echo.
    echo Start a working area
    echo ^| g cln ^| git clone            ^| Clone a repository into a new directory                               ^|
    echo ^| g ini ^| git init             ^| Create an empty Git repository or reinitialize an existing one        ^|
    echo.
    echo Work on the current change
    echo ^| g a   ^| git add              ^| Add file contents to the index                                        ^|
    echo ^| g mv  ^| git mv               ^| Move or rename a file, a directory, or a symlink                      ^|
    echo ^| g rst ^| git restore          ^| Restore working tree files                                            ^|
    echo ^| g rm  ^| git rm               ^| Remove files from the working tree and from the index                 ^|
    echo ^| g sta ^| git stash            ^| Save changes temporarily                                              ^|
    echo.
    echo Examine the history and state
    echo ^| g bs  ^| git bisect           ^| Use binary search to find the commit that introduced a bug            ^|
    echo ^| g df  ^| git diff             ^| Show changes between commits, commit and working tree, etc            ^|
    echo ^| g gr  ^| git grep             ^| Print lines matching a pattern                                        ^|
    echo ^| g lg  ^| git log              ^| Show commit logs                                                      ^|
    echo ^| g shw ^| git show             ^| Show various types of objects                                         ^|
    echo ^| g st  ^| git status           ^| Show the working tree status                                          ^|
    echo.
    echo Grow, mark and tweak your common history
    echo ^| g bf  ^| git backfill         ^| Download missing objects in a partial clone                           ^|
    echo ^| g br  ^| git branch           ^| List, create, or delete branches                                      ^|
    echo ^| g cm  ^| git commit           ^| Record changes to the repository                                      ^|
    echo ^| g mrg ^| git merge            ^| Join two or more development histories together                       ^|
    echo ^| g rb  ^| git rebase           ^| Reapply commits on top of another base tip                            ^|
    echo ^| g rs  ^| git reset            ^| Reset current HEAD to the specified state                             ^|
    echo ^| g rv  ^| git revert           ^| Create a new commit that undoes an earlier one                        ^|
    echo ^| g sw  ^| git switch           ^| Switch branches                                                       ^|
    echo ^| g tg  ^| git tag              ^| Create, list, delete or verify a tag object signed with GPG           ^|
    echo.
    echo Collaborate
    echo ^| g bl  ^| git blame            ^| Show who changed each line                                            ^|
    echo ^| g cl  ^| git clean            ^| Delete untracked files                                                ^|
    echo ^| g ft  ^| git fetch            ^| Download objects and refs from another repository                     ^|
    echo ^| g pl  ^| git pull             ^| Fetch from and integrate with another repository or a local branch    ^|
    echo ^| g plm ^| git pull origin main ^| Fetch from and integrate with the main branch                         ^|
    echo ^| g ps  ^| git push             ^| Update remote refs along with associated objects                      ^|
    echo ^| g psm ^| git push origin main ^| Update remote refs along with associated objects from the main branch ^|

    goto :eof
)

if /I "%cmd%"=="" (
    echo Setup and configuration
    echo ^| g cf  ^| git config           ^| Set your Git credentials                                              ^|
    echo.
    echo Start a working area
    echo ^| g cln ^| git clone            ^| Clone a repository into a new directory                               ^|
    echo ^| g ini ^| git init             ^| Create an empty Git repository or reinitialize an existing one        ^|
    echo.
    echo Work on the current change
    echo ^| g a   ^| git add              ^| Add file contents to the index                                        ^|
    echo ^| g mv  ^| git mv               ^| Move or rename a file, a directory, or a symlink                      ^|
    echo ^| g rst ^| git restore          ^| Restore working tree files                                            ^|
    echo ^| g rm  ^| git rm               ^| Remove files from the working tree and from the index                 ^|
    echo ^| g sta ^| git stash            ^| Save changes temporarily                                              ^|
    echo.
    echo Examine the history and state
    echo ^| g bs  ^| git bisect           ^| Use binary search to find the commit that introduced a bug            ^|
    echo ^| g df  ^| git diff             ^| Show changes between commits, commit and working tree, etc            ^|
    echo ^| g gr  ^| git grep             ^| Print lines matching a pattern                                        ^|
    echo ^| g lg  ^| git log              ^| Show commit logs                                                      ^|
    echo ^| g shw ^| git show             ^| Show various types of objects                                         ^|
    echo ^| g st  ^| git status           ^| Show the working tree status                                          ^|
    echo.
    echo Grow, mark and tweak your common history
    echo ^| g bf  ^| git backfill         ^| Download missing objects in a partial clone                           ^|
    echo ^| g br  ^| git branch           ^| List, create, or delete branches                                      ^|
    echo ^| g cm  ^| git commit           ^| Record changes to the repository                                      ^|
    echo ^| g mrg ^| git merge            ^| Join two or more development histories together                       ^|
    echo ^| g rb  ^| git rebase           ^| Reapply commits on top of another base tip                            ^|
    echo ^| g rs  ^| git reset            ^| Reset current HEAD to the specified state                             ^|
    echo ^| g rv  ^| git revert           ^| Create a new commit that undoes an earlier one                        ^|
    echo ^| g sw  ^| git switch           ^| Switch branches                                                       ^|
    echo ^| g tg  ^| git tag              ^| Create, list, delete or verify a tag object signed with GPG           ^|
    echo.
    echo Collaborate
    echo ^| g bl  ^| git blame            ^| Show who changed each line                                            ^|
    echo ^| g cl  ^| git clean            ^| Delete untracked files                                                ^|
    echo ^| g ft  ^| git fetch            ^| Download objects and refs from another repository                     ^|
    echo ^| g pl  ^| git pull             ^| Fetch from and integrate with another repository or a local branch    ^|
    echo ^| g plm ^| git pull origin main ^| Fetch from and integrate with the main branch                         ^|
    echo ^| g ps  ^| git push             ^| Update remote refs along with associated objects                      ^|
    echo ^| g psm ^| git push origin main ^| Update remote refs along with associated objects from the main branch ^|

    goto :eof
)

git %cmd% %args%

endlocal