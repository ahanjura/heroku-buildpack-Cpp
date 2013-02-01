heroku-buildpack-Cpp
====================

Buildpack for C++

Use C++-Buildpack if you need Heroku to execute a C++ application.

Usage

NOTE: The C++ app being deployed with this buildpack needs a makefile that will specify the build rules 
of the project.


$> heroku create myapp -s cedar 

$> heroku config:add BUILDPACK_URL=https://github.com/ahanjura/heroku-buildpack-Cpp.git
