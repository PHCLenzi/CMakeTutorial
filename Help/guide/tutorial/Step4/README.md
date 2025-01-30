source:
https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Generator%20Expressions.html#step-4-adding-generator-expressions

Adicionando expressões geradoras

Adicionando sinalizadores de aviso do compilador com expressões do gerador
"Generator Expressions (expressões geradoras) no CMake são avaliadas durante a geração do sistema de build (quando você executa cmake ..), e não no momento da execução da compilação.

Isso permite que certos valores (como opções de compilação, diretórios de inclusão, bibliotecas, etc.) sejam definidos condicionalmente, com base em fatores como:

    O compilador que está sendo usado (GCC, MSVC, Clang, etc.)
    O sistema operacional
    Se o código está sendo compilado para desenvolvimento ou se está sendo instalado (BUILD_INTERFACE vs INSTALL_INTERFACE)
    Outras propriedades do CMake
"


Comentario sobre esses Step4:
Entendi que em  set(gcc_like_cxx "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,Clang,GNU,LCC>") temos:

    COMPILE_LANG_AND_ID é uma variável a partir de 3.15, essa variável pega o atual  compilador e a atual linguagem.
    A expressao "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,Clang,GNU,LCC>" compara se o compilador atual é um desses listados: "CXX,ARMClang,AppleClang,Clang,GNU,LCC".
    Caso O compilador seja um desses listados a variável criada "gcc_like_cxx" é definida como verdaddeira.

Mais tarde em:  target_compile_options(tutorial_compiler_flags INTERFACE
                                        "$<${gcc_like_cxx}:-Wall;-Wextra;-Wshadow;-Wformat=2;-Wunused>"
                                        "$<${msvc_cxx}:-W3>"
                                        )
    Aqui a variavel "gcc_like_cxx" esta sendo usada como condicao, se ela for verdadeira as flags -Wall;-Wextra;-Wshadow;-Wformat=2;-Wunused vao ser adicionadas as opcoes de configuracao do projeto. A mesma coisa acontece em ""$<${msvc_cxx}:-W3>""

Mais tarde em:
    target_compile_options(tutorial_compiler_flags INTERFACE
                            "$<${gcc_like_cxx}:$<BUILD_INTERFACE:-Wall;-Wextra;-Wshadow;-Wformat=2;-Wunused>>"
                            "$<${msvc_cxx}:$<BUILD_INTERFACE:-W3>>"
                            )
    Aqui, usamos expressões geradoras aninhadas para garantir que as flags só sejam aplicadas durante a compilação do projeto (BUILD_INTERFACE), e não quando o projeto for instalado (INSTALL_INTERFACE).
