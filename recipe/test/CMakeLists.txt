cmake_minimum_required(VERSION 3.15)
project(ilmbase_smoke LANGUAGES CXX)

find_package(IlmBase 2.5 REQUIRED CONFIG)
add_executable(ilmbase_smoke main.cpp)
target_link_libraries(ilmbase_smoke PRIVATE
    IlmBase::Half IlmBase::Imath IlmBase::Iex IlmBase::IexMath IlmBase::IlmThread)

enable_testing()
add_test(NAME ilmbase_smoke COMMAND ilmbase_smoke)
