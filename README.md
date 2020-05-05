# hello

Hello World

Import this repository and run on repl.It using
[https://repl.it/github/pisan343/hello](https://repl.it/github/pisan343/hello)

The output from TravisCI from compiling and testing this project is at
[https://travis-ci.com/pisan343/hello](https://travis-ci.com/pisan343/hello)

The output from GitHub Actions is only visible to contributors,
it is at
[https://github.com/pisan343/hello/actions](https://github.com/pisan343/hello/actions)

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
        - If you have made changes on repl.it but want to revert to the version
        that is on GitHub use:
            ```
            git rebase --autostash master
            git reset --hard master
            ```
    - For Visual Studio Code
        - See .vscode directory
    - For Visual Studio
        - Not sure, email me instructions



5. Confirm that your modified files are on GitHub by
visiting the GitHub web page

## Files included in this project

`README.md` - This file, explanation of the project

`main.cpp` - C++ program to be compiled

`CMakeLists.txt` - cmake file that CLion uses to figure out what command line
options are used when compiling the program

`simplecompile.sh` - a shell program to compile and run the project
to make it easier to use from command line. Outputs date, machine name,
user name, chooses between clang++ and g++ as compiler, runs clang-tidy
to check for programming warnings, runs clang-format to make suggestions for
indentation, runs valgrind to test for memory leaks, runs the program with
`ASAN_OPTIONS=detect_leaks=1` to check for memory leaks. 

Generates lots of output, so best used as
```shell script
$ ./simplecompile.sh > output.txt 2>&1
```

`output.txt` - output created from `simplecompile.sh`

`.travis.yml` - If TravisCI is configured, this file will be used to
run the project automatically every time it is pushed to GitHub. Results will
be at https://travis-ci.com/

`.github/workflows/githubsimplecompile.yml` - This file will be used to
run the project automatically every time it is pushed to GitHub. Results will
be on GitHub under "Actions"

`.gitignore` - Files that should never be pushed to GitHub, such as core dumps,
executables, cached project files, etc

`.clang-tidy` - Specify the checks for `clang-tidy` program. Full list of
checks is at https://clang.llvm.org/extra/clang-tidy/checks/list.html
Also specifies `readability-identifier-naming` options based on 
LLVM style in https://llvm.org/docs/CodingStandards.html#the-low-level-issues
Modify it to choose a different style.

`.git` - Directory storing the database of project history including all
commits,comments, etc.

`.replit` - Specifies the build and run command if you want to clone this
project to repl.it and run it


