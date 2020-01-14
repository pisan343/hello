# hello

Hello World

A "simple" project to setup the development pipeline check to make sure we get

- compiler warnings
- clang-tidy warnings
- clang-format suggestions
- valgrind is working to detect memory leaks
- TravisCI is working for continuous integration and testing
- GitHub actions are working for automated testing

This repository is also used as a template for GitHub Classroom.

If you are using this as a GitHub Classroom template, follow the URL
provided by your instructor which will create a new private repository for you.

If you are learning how to use GitHub and creatging projects, follow 
the instructions below.

## Starting a new GitHub project

1.  Create a "new repository" on GitHub https://github.com/
  * Repository name: helloworld
  * Description: My First GitHub Project
  * Private (if your account allows it, Public otherwise)

2. Your newly created repository should have a URL like
https://github.com/pisan343/helloworld

3. Clone the project to your computer using GitHub Desktop
  * Command line: git clone https://github.com/YourGitHubUserName/helloworld
  * You can also use https://desktop.github.com/
  * If using https://repl.it/ , use "import code" button on top right
  * (I put all my GitHub code under a github directory to make it easier to find)
  * Your project should now be in C:\Users\pisan\github\helloworld (for Windows)
  * Your project should now be in /Users/pisan/github/helloworld (for Mac)

4. Depending on your IDE, you will need to take different action to create
the necessary project files which tells the IDE how to compile things
    - For CLion
        - Create a new project in CLion
        - Set the project Location to be newly cloned location
        - When CLion prompts you asking "The directory xxx is not empty", choose
        create a new project from existing files.
        - Use VCS > Commit and make sure main.cpp and CMakeLists.txt have check
        boxes next to them. If you do not have a VCS menu in CLion,
        install CLion plugins GitHub and Git Integration
        - Make some changes, use VCS > Commit to commit your changes to your
        local computer and then VCS > Git > Push to push your changes to GitHub
    - For https://repl.it/
        - The project should compile and run without modifications
        - Click on "Version Control" on the left side of browser
        - Click on "Commit & Push" to push your changes to GitHub
    - For Visual Studio
        - Not sure, email me instructions


5. In CLion, use VCS > Commit and make sure main.cpp and CMakeLists.txt have check boxes next to them
  * If you do not have a VCS menu in CLion, install CLion plugins GitHub and Git Integration
  * Add a meaningful commit log comment such as "starting my first project"


6. Use VCS > Git > Push to upload your project to GitHub.

7. Confirm that your modified files are on the web repository