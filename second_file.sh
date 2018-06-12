# Make new branch and check it out
git checkout -b "new_branch"

# Add files to the branch, adding content to the file
touch my_new_file.txt
echo "This is some text" > my_new_file.txt

# Stage and commit new content
git add .
git commit -m "Adding files"

# Push to remote repository
git push origin new_branch