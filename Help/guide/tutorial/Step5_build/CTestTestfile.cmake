# CMake generated Testfile for 
# Source directory: /home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5
# Build directory: /home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5_build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Runs "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5_build/Tutorial" "25")
set_tests_properties(Runs PROPERTIES  _BACKTRACE_TRIPLES "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;52;add_test;/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;0;")
add_test(Usage "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5_build/Tutorial")
set_tests_properties(Usage PROPERTIES  PASS_REGULAR_EXPRESSION "Usage:.*number" _BACKTRACE_TRIPLES "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;57;add_test;/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;0;")
add_test(StandardUse "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5_build/Tutorial" "4")
set_tests_properties(StandardUse PROPERTIES  PASS_REGULAR_EXPRESSION "4 is 2" _BACKTRACE_TRIPLES "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;65;add_test;/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;0;")
add_test(Comp4 "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5_build/Tutorial" "4")
set_tests_properties(Comp4 PROPERTIES  PASS_REGULAR_EXPRESSION "4 is 2" _BACKTRACE_TRIPLES "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;73;add_test;/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;80;do_test;/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;0;")
add_test(Comp9 "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5_build/Tutorial" "9")
set_tests_properties(Comp9 PROPERTIES  PASS_REGULAR_EXPRESSION "9 is 3" _BACKTRACE_TRIPLES "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;73;add_test;/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;81;do_test;/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;0;")
add_test(Comp5 "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5_build/Tutorial" "5")
set_tests_properties(Comp5 PROPERTIES  PASS_REGULAR_EXPRESSION "5 is 2.236" _BACKTRACE_TRIPLES "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;73;add_test;/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;82;do_test;/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;0;")
add_test(Comp7 "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5_build/Tutorial" "7")
set_tests_properties(Comp7 PROPERTIES  PASS_REGULAR_EXPRESSION "7 is 2.645" _BACKTRACE_TRIPLES "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;73;add_test;/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;83;do_test;/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;0;")
add_test(Comp25 "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5_build/Tutorial" "25")
set_tests_properties(Comp25 PROPERTIES  PASS_REGULAR_EXPRESSION "25 is 5" _BACKTRACE_TRIPLES "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;73;add_test;/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;84;do_test;/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;0;")
add_test(Comp-25 "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5_build/Tutorial" "-25")
set_tests_properties(Comp-25 PROPERTIES  PASS_REGULAR_EXPRESSION "-25 is (-nan|nan|0)" _BACKTRACE_TRIPLES "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;73;add_test;/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;85;do_test;/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;0;")
add_test(Comp0.0001 "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5_build/Tutorial" "0.0001")
set_tests_properties(Comp0.0001 PROPERTIES  PASS_REGULAR_EXPRESSION "0.0001 is 0.01" _BACKTRACE_TRIPLES "/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;73;add_test;/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;86;do_test;/home/hg128004/side_Projects/CMakeTutorial/Help/guide/tutorial/Step5/CMakeLists.txt;0;")
subdirs("MathFunctions")
