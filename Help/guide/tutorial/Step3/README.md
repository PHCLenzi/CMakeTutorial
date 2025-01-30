Source:
https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Usage%20Requirements%20for%20a%20Library.html#exercise-1-adding-usage-requirements-for-a-library

Conclusao aqui: O motivo de criar library INTERFACE é criar um padrao de configuracao que pode ser usado em varios target, aqui quanda usamos INTERFACE opcao nas funcoes add_library(...INTERFACE...), target_include_directories(...INTERFACE...),target_compile_definitions(... INTERFACE ...), Basicamente estamos informando que é um padrao sendo usado ou contruido q que ele nao é um target, ou seja ela nao precisa existir.

Perguntas aqui:
em Exec 1 TODO 3, o que significa esse EXTRA_INCLUDES?
