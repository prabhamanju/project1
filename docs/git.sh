
#!/bin/bash

echo "step four, making the project folder a git repository, so we can sync it with our git server to track progress and collaborate with others"

read -p "What is the url of your github repository? " URL

## this function is used only for the first git initialization of your project
function initGit() {
	
	P_DIR=/home/hyfbe12/hyfdev/project1
	cd /home/hyfbe12/hyfdev/project1
	git init
	git add .
	git commit -m "Initial commit!"
	git remote add origin $URL
	git push -u origin master


}

initGit

echo 
echo Now your project is also on github!
echo 
echo 

## tip !!
#
# for new commits the most simple sequence is
# git status ( see what has changed )
# git add <modified/new files>
# git commit -m your message
# git push

	
