<<<<<<< HEAD
# Install script for directory: /home/gong/桌面/myrobot/myrobot/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/gong/桌面/myrobot/myrobot/install")
=======
# Install script for directory: /home/gong/myrobot/src

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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/gong/桌面/myrobot/myrobot/install/_setup_util.py")
=======
   "/home/gong/myrobot/install/_setup_util.py")
>>>>>>> 4fc345b9def90f76e832b4afc4b39ddc28cb948b
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/gong/桌面/myrobot/myrobot/install" TYPE PROGRAM FILES "/home/gong/桌面/myrobot/myrobot/build/catkin_generated/installspace/_setup_util.py")
=======
file(INSTALL DESTINATION "/home/gong/myrobot/install" TYPE PROGRAM FILES "/home/gong/myrobot/build/catkin_generated/installspace/_setup_util.py")
>>>>>>> 4fc345b9def90f76e832b4afc4b39ddc28cb948b
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/gong/桌面/myrobot/myrobot/install/env.sh")
=======
   "/home/gong/myrobot/install/env.sh")
>>>>>>> 4fc345b9def90f76e832b4afc4b39ddc28cb948b
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/gong/桌面/myrobot/myrobot/install" TYPE PROGRAM FILES "/home/gong/桌面/myrobot/myrobot/build/catkin_generated/installspace/env.sh")
=======
file(INSTALL DESTINATION "/home/gong/myrobot/install" TYPE PROGRAM FILES "/home/gong/myrobot/build/catkin_generated/installspace/env.sh")
>>>>>>> 4fc345b9def90f76e832b4afc4b39ddc28cb948b
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/gong/桌面/myrobot/myrobot/install/setup.bash")
=======
   "/home/gong/myrobot/install/setup.bash")
>>>>>>> 4fc345b9def90f76e832b4afc4b39ddc28cb948b
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/gong/桌面/myrobot/myrobot/install" TYPE FILE FILES "/home/gong/桌面/myrobot/myrobot/build/catkin_generated/installspace/setup.bash")
=======
file(INSTALL DESTINATION "/home/gong/myrobot/install" TYPE FILE FILES "/home/gong/myrobot/build/catkin_generated/installspace/setup.bash")
>>>>>>> 4fc345b9def90f76e832b4afc4b39ddc28cb948b
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/gong/桌面/myrobot/myrobot/install/setup.sh")
=======
   "/home/gong/myrobot/install/setup.sh")
>>>>>>> 4fc345b9def90f76e832b4afc4b39ddc28cb948b
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/gong/桌面/myrobot/myrobot/install" TYPE FILE FILES "/home/gong/桌面/myrobot/myrobot/build/catkin_generated/installspace/setup.sh")
=======
file(INSTALL DESTINATION "/home/gong/myrobot/install" TYPE FILE FILES "/home/gong/myrobot/build/catkin_generated/installspace/setup.sh")
>>>>>>> 4fc345b9def90f76e832b4afc4b39ddc28cb948b
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/gong/桌面/myrobot/myrobot/install/setup.zsh")
=======
   "/home/gong/myrobot/install/setup.zsh")
>>>>>>> 4fc345b9def90f76e832b4afc4b39ddc28cb948b
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/gong/桌面/myrobot/myrobot/install" TYPE FILE FILES "/home/gong/桌面/myrobot/myrobot/build/catkin_generated/installspace/setup.zsh")
=======
file(INSTALL DESTINATION "/home/gong/myrobot/install" TYPE FILE FILES "/home/gong/myrobot/build/catkin_generated/installspace/setup.zsh")
>>>>>>> 4fc345b9def90f76e832b4afc4b39ddc28cb948b
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/gong/桌面/myrobot/myrobot/install/.rosinstall")
=======
   "/home/gong/myrobot/install/.rosinstall")
>>>>>>> 4fc345b9def90f76e832b4afc4b39ddc28cb948b
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/gong/桌面/myrobot/myrobot/install" TYPE FILE FILES "/home/gong/桌面/myrobot/myrobot/build/catkin_generated/installspace/.rosinstall")
=======
file(INSTALL DESTINATION "/home/gong/myrobot/install" TYPE FILE FILES "/home/gong/myrobot/build/catkin_generated/installspace/.rosinstall")
>>>>>>> 4fc345b9def90f76e832b4afc4b39ddc28cb948b
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
<<<<<<< HEAD
  include("/home/gong/桌面/myrobot/myrobot/build/gtest/cmake_install.cmake")
  include("/home/gong/桌面/myrobot/myrobot/build/myrobot_msgs/cmake_install.cmake")
  include("/home/gong/桌面/myrobot/myrobot/build/led/cmake_install.cmake")
  include("/home/gong/桌面/myrobot/myrobot/build/wifi/cmake_install.cmake")
=======
  include("/home/gong/myrobot/build/gtest/cmake_install.cmake")
  include("/home/gong/myrobot/build/myrobot_msgs/cmake_install.cmake")
  include("/home/gong/myrobot/build/beginner_tutorials/cmake_install.cmake")
  include("/home/gong/myrobot/build/led/cmake_install.cmake")
  include("/home/gong/myrobot/build/socket/cmake_install.cmake")
  include("/home/gong/myrobot/build/wifi/cmake_install.cmake")
>>>>>>> 4fc345b9def90f76e832b4afc4b39ddc28cb948b

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
<<<<<<< HEAD
file(WRITE "/home/gong/桌面/myrobot/myrobot/build/${CMAKE_INSTALL_MANIFEST}"
=======
file(WRITE "/home/gong/myrobot/build/${CMAKE_INSTALL_MANIFEST}"
>>>>>>> 4fc345b9def90f76e832b4afc4b39ddc28cb948b
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
