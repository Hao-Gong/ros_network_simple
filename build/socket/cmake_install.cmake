<<<<<<< HEAD
# Install script for directory: /home/gong/桌面/myrobot/myrobot/src/socket

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/gong/桌面/myrobot/myrobot/install")
=======
# Install script for directory: /home/gong/myrobot/src/socket

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/gong/myrobot/install")
>>>>>>> 4fc345b9def90f76e832b4afc4b39ddc28cb948b
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
<<<<<<< HEAD
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/gong/桌面/myrobot/myrobot/build/socket/catkin_generated/installspace/socket.pc")
=======
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/gong/myrobot/build/socket/catkin_generated/installspace/socket.pc")
>>>>>>> 4fc345b9def90f76e832b4afc4b39ddc28cb948b
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/socket/cmake" TYPE FILE FILES
<<<<<<< HEAD
    "/home/gong/桌面/myrobot/myrobot/build/socket/catkin_generated/installspace/socketConfig.cmake"
    "/home/gong/桌面/myrobot/myrobot/build/socket/catkin_generated/installspace/socketConfig-version.cmake"
=======
    "/home/gong/myrobot/build/socket/catkin_generated/installspace/socketConfig.cmake"
    "/home/gong/myrobot/build/socket/catkin_generated/installspace/socketConfig-version.cmake"
>>>>>>> 4fc345b9def90f76e832b4afc4b39ddc28cb948b
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
<<<<<<< HEAD
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/socket" TYPE FILE FILES "/home/gong/桌面/myrobot/myrobot/src/socket/package.xml")
=======
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/socket" TYPE FILE FILES "/home/gong/myrobot/src/socket/package.xml")
>>>>>>> 4fc345b9def90f76e832b4afc4b39ddc28cb948b
endif()

