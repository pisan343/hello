# hello

Hello World

A simple CLion project to make sure that we get

- compiler warnings
- cppcheck warning for memory leaks
- cpplint warnings for lines longer than 80 characters

## Starting a new GitHub project

1.  Create a "new repository" on GitHub https://github.com/
  * Repository name: helloworld
  * Description: My First GitHub Project
  * Private (if your account allows it, Public otherwise)
  * Check "Initialize this repository with a README"
  * Add .gitignore for C++

2. Your newly created repository should have a URL like https://github.com/pisan343/helloworld

3. Clone the project to your computer using GitHub Desktop
  * Your project should now be in C:\Users\pisan\github\helloworld (for Windows)
  * Your project should now be in /Users/pisan/github/helloworld (for Mac)


4. Create a new project in CLion
  * Set the project Location to be newly copied projecy where README.md is located
  * CLion should prompts you

> The directory xxx is not empty.
> Would you like to create a new project from existing sources instead?

  * Answer NO. We want CLion to create CMakeLists.txt main.cpp and other project files

5. In CLion, use VCS > Commit and make sure main.cpp and CMakeLists.txt have check boxes next to them
  * If you do not have a VCS menu in CLion, install CLion plugins GitHub and Git Integration
  * Add a meaningful commit log comment such as "starting my first project"


6. Use VCS > Git > Push to upload your project to GitHub.

7. Confirm that your modified files are on the web repository