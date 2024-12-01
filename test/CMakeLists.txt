add_subdirectory(googletest)

add_executable(runTests test_main.cpp)

target_link_libraries(runTests gtest gtest_main)


add_test(NAME RunAllTests COMMAND runTests)