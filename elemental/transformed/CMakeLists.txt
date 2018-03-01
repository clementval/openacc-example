project(elemental_example_transformed Fortran)

cmake_minimum_required(VERSION 3.3)

add_executable(elemental
  mo_elemental.f90
  program.f90
)
