# CMake generated Testfile for 
# Source directory: /home/sgx/CLionProjects/LNTEESGX/lib/eEVM
# Build directory: /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/eEVM
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(eevm_tests "/home/sgx/CLionProjects/LNTEESGX/lib/eEVM/tests/unit_test_wrapper.sh" "eevm_tests")
set_tests_properties(eevm_tests PROPERTIES  ENVIRONMENT "TEST_DIR=/home/sgx/CLionProjects/LNTEESGX/lib/eEVM/3rdparty/test_cases" _BACKTRACE_TRIPLES "/home/sgx/CLionProjects/LNTEESGX/lib/eEVM/CMakeLists.txt;99;add_test;/home/sgx/CLionProjects/LNTEESGX/lib/eEVM/CMakeLists.txt;0;")
subdirs("3rdparty")
