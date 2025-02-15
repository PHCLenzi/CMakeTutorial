Step 2: Adding a Library

Conclusao desse Step2 depois de terminar:
Gostei da possibilidade de poder alterar quais bibliotecas secao linkadas e compiladas em uma opcao inicial na parte de config. Perem ficou bem confuso algumas funcoes de como adoicionar biblioteas e como lincar, porm a parte de id e ifdef ficou até claro.

Perguntas minhas aqui>

Pergunta no exercicio 1: Para mim nao ficou claro qual é diferenca entre o TODO 2 e o TODO 3. Eu achei que quando criavamos um nome global para bibliotecas como feito em TODO 1, poderiamos acessalas ou linca-las somente chamando pelo nome.
Ou seja, somente podefia chamar add_subdirectory(MathFunctions) no Camkefile no folder pai. Parem alem disso chamamos target_link_libraries(Tutorial PUBLIC MathFunctions) que parece fazer exatamente a mesma coisa.
Ficou a impressao que fazemos duas vezes a mesma coisa (lincamos duas vezes).

At this point, we have seen how to create a basic project using CMake. In this step, we will learn how to create and use a library in our project. We will also see how to make the use of our library optional.
Exercise 1 - Creating a Library

To add a library in CMake, use the add_library() command and specify which source files should make up the library.

Rather than placing all of the source files in one directory, we can organize our project with one or more subdirectories. In this case, we will create a subdirectory specifically for our library. Here, we can add a new CMakeLists.txt file and one or more source files. In the top level CMakeLists.txt file, we will use the add_subdirectory() command to add the subdirectory to the build.

Once the library is created, it is connected to our executable target with target_include_directories() and target_link_libraries().
Goal

Add and use a library.
Helpful Resources

    add_library()

    add_subdirectory()

    target_include_directories()

    target_link_libraries()

    PROJECT_SOURCE_DIR

Files to Edit

    CMakeLists.txt

    tutorial.cxx

    MathFunctions/CMakeLists.txt

Getting Started

In this exercise, we will add a library to our project that contains our own implementation for computing the square root of a number. The executable can then use this library instead of the standard square root function provided by the compiler.

For this tutorial we will put the library into a subdirectory called MathFunctions. This directory already contains the header files MathFunctions.h and mysqrt.h. Their respective source files MathFunctions.cxx and mysqrt.cxx are also provided. We will not need to modify any of these files. mysqrt.cxx has one function called mysqrt that provides similar functionality to the compiler's sqrt function. MathFunctions.cxx contains one function sqrt which serves to hide the implementation details of sqrt.

From the Help/guide/tutorial/Step2 directory, start with TODO 1 and complete through TODO 6.

First, fill in the one line CMakeLists.txt in the MathFunctions subdirectory.

Next, edit the top level CMakeLists.txt.

Finally, use the newly created MathFunctions library in tutorial.cxx
Build and Run

Run the cmake executable or the cmake-gui to configure the project and then build it with your chosen build tool.

Below is a refresher of what that looks like from the command line:

mkdir Step2_build
cd Step2_build
cmake ../Step2
cmake --build .

Try to use the newly built Tutorial and ensure that it is still producing accurate square root values.
Solution

In the CMakeLists.txt file in the MathFunctions directory, we create a library target called MathFunctions with add_library(). The source files for the library are passed as an argument to add_library(). This looks like the following line:
TODO 1: Click to show/hide answer

To make use of the new library we will add an add_subdirectory() call in the top-level CMakeLists.txt file so that the library will get built.
TODO 2: Click to show/hide answer

Next, the new library target is linked to the executable target using target_link_libraries().
TODO 3: Click to show/hide answer

Finally we need to specify the library's header file location. Modify the existing target_include_directories() call to add the MathFunctions subdirectory as an include directory so that the MathFunctions.h header file can be found.
TODO 4: Click to show/hide answer

Now let's use our library. In tutorial.cxx, include MathFunctions.h:
TODO 5: Click to show/hide answer

Lastly, replace sqrt with the wrapper function mathfunctions::sqrt.
TODO 6: Click to show/hide answer

Exercise 2 - Adding an Option

Now let us add an option in the MathFunctions library to allow developers to select either the custom square root implementation or the built in standard implementation. While for the tutorial there really isn't any need to do so, for larger projects this is a common occurrence.

CMake can do this using the option() command. This gives users a variable which they can change when configuring their cmake build. This setting will be stored in the cache so that the user does not need to set the value each time they run CMake on a build directory.
Goal

Add the option to build without MathFunctions.
Helpful Resources

    if()

    option()

    target_compile_definitions()

Files to Edit

    MathFunctions/CMakeLists.txt

    MathFunctions/MathFunctions.cxx

Getting Started

Start with the resulting files from Exercise 1. Complete TODO 7 through TODO 14.

First create a variable USE_MYMATH using the option() command in MathFunctions/CMakeLists.txt. In that same file, use that option to pass a compile definition to the MathFunctions library.

Then, update MathFunctions.cxx to redirect compilation based on USE_MYMATH.

Lastly, prevent mysqrt.cxx from being compiled when USE_MYMATH is on by making it its own library inside of the USE_MYMATH block of MathFunctions/CMakeLists.txt.
Build and Run

Since we have our build directory already configured from Exercise 1, we can rebuild by simply calling the following:

cd ../Step2_build
cmake --build .

Next, run the Tutorial executable on a few numbers to verify that it's still correct.

Now let's update the value of USE_MYMATH to OFF. The easiest way is to use the cmake-gui or ccmake if you're in the terminal. Or, alternatively, if you want to change the option from the command-line, try:

cmake ../Step2 -DUSE_MYMATH=OFF

Now, rebuild the code with the following:

cmake --build .

Then, run the executable again to ensure that it still works with USE_MYMATH set to OFF. Which function gives better results, sqrt or mysqrt?
Solution

The first step is to add an option to MathFunctions/CMakeLists.txt. This option will be displayed in the cmake-gui and ccmake with a default value of ON that can be changed by the user.
TODO 7: Click to show/hide answer

Next, make building and linking our library with mysqrt function conditional using this new option.

Create an if() statement which checks the value of USE_MYMATH. Inside the if() block, put the target_compile_definitions() command with the compile definition USE_MYMATH.
TODO 8: Click to show/hide answer

When USE_MYMATH is ON, the compile definition USE_MYMATH will be set. We can then use this compile definition to enable or disable sections of our source code.

The corresponding changes to the source code are fairly straightforward. In MathFunctions.cxx, we make USE_MYMATH control which square root function is used:
TODO 9: Click to show/hide answer

Next, we need to include mysqrt.h if USE_MYMATH is defined.
TODO 10: Click to show/hide answer

Finally, we need to include cmath now that we are using std::sqrt.
TODO 11: Click to show/hide answer

At this point, if USE_MYMATH is OFF, mysqrt.cxx would not be used but it will still be compiled because the MathFunctions target has mysqrt.cxx listed under sources.

There are a few ways to fix this. The first option is to use target_sources() to add mysqrt.cxx from within the USE_MYMATH block. Another option is to create an additional library within the USE_MYMATH block which is responsible for compiling mysqrt.cxx. For the sake of this tutorial, we are going to create an additional library.

First, from within USE_MYMATH create a library called SqrtLibrary that has sources mysqrt.cxx.
TODO 12: Click to show/hide answer

Next, we link SqrtLibrary onto MathFunctions when USE_MYMATH is enabled.
TODO 13: Click to show/hide answer

Finally, we can remove mysqrt.cxx from our MathFunctions library source list because it will be pulled in when SqrtLibrary is included.
TODO 14: Click to show/hide answer

With these changes, the mysqrt function is now completely optional to whoever is building and using the MathFunctions library. Users can toggle USE_MYMATH to manipulate what library is used in the build.
