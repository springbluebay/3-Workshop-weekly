1. open the terminal (Git Bash/VS Code or whatever)
 - When you first open the terminal, you are in the home directory of your user. 

2. To know which directory you are in, you can use the “pwd” command.
 - It gives us the absolute path, which means the path that starts from the root. The root is the base of the Linux file system. It is denoted by a forward slash( / ). 
 - The user directory is usually something like "/home/username".

3. Go to desktop
 - cd desktop
 - Use the "cd" command to go to a directory. For example, if you are in the home folder, and you want to go to the downloads folder, then you can type in “cd Downloads”. 
 - Remember, this command is case sensitive, and you have to type in the name of the folder exactly as it is. 
 - But there is a problem with these commands. Imagine you have a folder named “Raspberry Pi”. In this case, when you type in “cd Raspberry Pi”, the shell will take the second argument of the command as a different one, so you will get an error saying that the directory does not exist. Here, you can use a backward slash. That is, you can use “cd Raspberry\ Pi” in this case. 
 - Spaces are denoted like this: If you just type “cd” and press enter, it takes you to the home directory. 
 - To go back from a folder to the folder before that, you can type “cd ..” . The two dots represent back.

4. Create a directory named "clarusway"
 - mkdir clarusway
 - Use the mkdir command when you need to create a folder or a directory. For example, if you want to make a directory called “DIY”, then you can type “mkdir DIY”. Remember, as told before, if you want to create a directory named “DIY Hacking”, then you can type “mkdir DIY\ Hacking”.
 - go to clarusway directory
   cd clarusway

5. List all the files with details
 - ls -al
 - "ls" command is used to know what files are in the directory you are in. You can see all the hidden files by using the command “ls -a”.
 - As we created the folder yet, there is no files in it.

6. Create a file named test.txt
 - touch test.txt
 - The touch command is used to create a file. It can be anything, from an empty txt file to an empty zip file. 

7. Write "hello" to test.txt
 - echo "hello" > test.txt
 - The "echo" command helps us move some data, usually text into a file.

8. Add "My name is Sergio" to test.txt
 - echo "My name is Sergio" >> test.txt

9. Print the content of test.txt
 - cat test.txt
 - Use the cat command to display the contents of a file. It is usually used to easily view programs.

10. Create a file named test1.txt and write "hello, this is second text file" while creating.
 - cat > test1.txt
   hello
   this is second text file
   (Contol C to exit)

11. Print the content of test1.txt
 - cat test1.txt
 - As you see this is the second way of creating a file. We created this file with cat command and wrote the content while creating it.

12. Display the contents of the file test.txt and test1.txt at the same time.
 - cat test.txt test1.txt

13. Create text files with the name multiple1.txt through multiple100.txt in current directory.
 - touch multiple{1..100}.txt
 - Also you can use "touch multiple1.txt multiple2.txt ... multiple100.txt" command.

14. Go to upper directory
 - cd ..

15. Create a directory named "europe"
 - mkdir europe 
    go to the europe directory
 - cd europe

16. Create two files named lab.txt and lab1.txt at the same time
 - touch lab.txt lab1.txt

17. Write "This is the second directories first file" in lab.txt
 - echo "This is the second directories first file" > lab.txt

18. Print the content of lab.txt
 - cat lab.txt

19. Make a copy of lab.txt in the current directory as newlab.txt
 - cp lab.txt newlab.txt
 - We use this command when we are copying the file in the current directory.
 - If the destination file exists, it will be overwritten. (To get rid of this use -i. This will give a warning.)

20. List all the files in current directory.
 - ls -a
 - As you see this is the third way of creating a file. We cretaed this file using an existing one with the same content in it. 

20. Print the content of newlab.txt
 - cat newlab.txt

21. List any file in current directory with the extension of ".txt"
 - ls *.txt

22. List any file which begins with "n" and ends with".txt"
 - ls n*.txt
    List any file begins with lab and we dont know the end of it 
 - ls lab?.txt

23. Copy newlab.txt to the clarusway directory.
 - As you remember newlab.txt is in the europe directory. We will copy it in a different directory named clarusway.
 - To copy a file to a directory, specify the absolute or the relative path to the directory. If the destination directory is omitted the file is copied to the current directory.
 - An absolute or full path points to the same location in a file system, regardless of the current working directory. To do that, it must include the root directory.
 - By contrast, a relative path starts from some given working directory, avoiding the need to provide the full absolute path. 
 - cp /home/sergiotaco/europe/newlab.txt /home/sergiotaco/clarusway (absolute path)
 - cp newlab.txt ../clarusway/ (relative path)

24. Copy the files beginnig with "m*{20..30}" and ending with ".txt from clarusway directory to europe directory.
 - cd ..
 - cd clarusway
 - cp m*{20..30}.txt ../europe/

25. Move the files beginnig with "m*{40..50}" and ending with ".txt from clarusway directory to europe directory.
 - The move command is a command line utility that moves files or directories from one place to another . 
 - It supports moving single files, multiple files and directories. It can prompt before overwriting and has an option to only move files that are new than the destination.
 - cd ..
 - cd clarusway
 - mv m*{40..50}.txt ../europe/

26. List all the files on Clarusway directory
 - ls -al

27. Rename the newlab.txt file as linuxlab.txt
 - mv newlab.txt linuxlab.txt

28. List the files with details on clarusway directory and see the renamed linuxlab.txt file
 - ls -l

29. Print the permission details of linuxlab.txt
 - ls -l linuxlab.txt

30. Change file permissions of the linuxlab.txt as everybody can read, write and execute.
 - chmod -v ugo=rwx linuxlab.txt

31. Change execute permissions of everybody to no execute permission on linuxlab.txt
 - chmod -v 666 linuxlab.txt

32. Change the file permissions "one level up" on linuxlab.txt
 - chmod -v +x linuxlab.txt
** ./ ile x yetkisini test etme

33. Delete the linuxlab.txt file
 - to delete this file you should go to the directory of the file or use the absolute path of file
 - rm linuxlab.txt

34. Create "america" directory
 - mkdir america

35. Delete america directory
 - rmdir america

36. Delete clarusway directory
 - cd ..
 - rmdir clarusway
 - You can not delete this directory because it is not empty.
 - rm -r clarusway

37. Go to the europe directory
 - cd europe

38. List the contents of europe directory
 - ls

39. Create a hidden linuxworkshop.txt file
 - touch .linuxworkshop.txt

40. Use ls command to list the contents of the europe directory
 - ls
 - As you see we can not see the linuxworkshop.txt file
 - To list all the files, we use "ls -a" command.
 - ls -a

41. Make the linuxworkshop.txt visible
 - mv .linuxworkshop.txt linuxworkshop.txt

42. Use vim editor to manipulate the linuxworkshop.txt file
 - vim linuxworkshop.txt
 - make it insertable
   - i
 - write something in it.
 - save and exit
   - (esc) :wq

43. Exit from the terminal
 - exit

* Tips and Tricks for Using Linux Command Line

- You can use the clear command to clear the terminal if it gets filled up with too many commands.
- TAB can be used to fill up in terminal. For example, You just need to type “cd Doc” and then TAB and the terminal fills the rest up and makes it “cd Documents”.
- Ctrl+C can be used to stop any command in terminal safely. If it doesn't stop with that, then Ctrl+Z can be used to force stop it.
