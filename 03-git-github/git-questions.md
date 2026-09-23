## 1. What is Git? Why do we use it?
Git is Version Control System Tool that helps to track our changes in code.</br>

- Example:</br>
“Suppose I am working on an application and I update a file called app.py.</br>
With Git, I can save this change using a commit.</br>
If my change causes an issue later, I can easily go back to the previous working version.</br>
Git also allows multiple developers to work on the same project without overwriting each other’s code.”

## 2. Difference between Git and GitHub?
Git is a version control tool, while GitHub is a cloud platform that hosts Git repositories and helps teams collaborate.

## 3. Which Git commands did you use most?
I mostly used git status, git add, git commit, git pull, git push, and git fetch.

## 4. What is a repository?
A repository is a storage location that contains project files and their complete version history.

## 5. Difference between git clone and git pull?
git clone creates a local copy of a remote repository for the first time, whereas git pull updates an existing local repository.

## 6. Difference between git fetch and git pull?
git fetch downloads changes without modifying the local code, while git pull downloads and merges the changes.

## 7. What is a branch in Git?
A branch is an independent line of development used to work on features or fixes without affecting the main branch.

## 8. What is merge conflict ?
A merge conflict occur when Git cannot automatically combine changes from two branches because the same part of file was changed differently.

## 9. How do you resolve a merge conflict?
First, I run git status to identify the conflict files . Then I open the files and manually resolve the conflicting changes by deciding which changes to keep. After resolving the conflict, I run git add to stage the resolved files and then commit the merge. 

## 10. What is git status used for?
git status shows the current state of the working directory and staging area.

## 11. What happens when you run git commit?
git commit saves the staged changes to the local repository with a commit message.

## 12. What is git init ?
```git init``` initializes a new git repository in the current working directory.

## 13. What does ```git add``` do ?
It moves changes from working directory to the staging area .

## 14. What does ```git commit``` do ?
It save stage changed into the local Git Repository with a commit message.

## 15. What does ```git push``` do ?
It uploads local commits to the remote repository.

## 16. What is git merge ?
git merge combine changes from one branch into another branch.

## 17. You modify the file but doesn't want to commit the changes yet. What can you do ?
I can keep the changes on my working directory or use git stash if I need a clean working directory temporary.

## 18. You accidentally commit the wrong changes . What would you do?
It depends on whether the commit has already been pushed. If it is a local commit, I can use git reset. If it has already been shared, git revert is safer option because it create a new commit that reverses the previous one.

## 19. What is git reset ?
git reset is used to move the current branch/HEAD to another commit. It can also change the staging area and working directory depending on the option you use.</br>
```
--soft   → remove commit, keep changes STAGED
--mixed  → remove commit, keep changes UNSTAGED
--hard   → remove commit, DELETE changes
```

## 20. Difference between ```git reset``` and ```git revert``` ?
```git reset``` moves the branch pointer to a previous commit and can rewrite Git history, whereas ```git revert``` creates a new commit that reverses the changes of an existing commit without removing that commit from history.</br>
```
RESET  → Move backward
REVERT → Create a new commit to undo
```
