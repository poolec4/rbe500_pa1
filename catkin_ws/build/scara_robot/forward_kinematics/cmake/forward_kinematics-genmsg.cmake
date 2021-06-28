# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "forward_kinematics: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iforward_kinematics:/media/chris/Local Disk/rbe500_team2_pa1/catkin_ws/src/scara_robot/forward_kinematics/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(forward_kinematics_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/media/chris/Local Disk/rbe500_team2_pa1/catkin_ws/src/scara_robot/forward_kinematics/msg/scara_robot_pose.msg" NAME_WE)
add_custom_target(_forward_kinematics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "forward_kinematics" "/media/chris/Local Disk/rbe500_team2_pa1/catkin_ws/src/scara_robot/forward_kinematics/msg/scara_robot_pose.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(forward_kinematics
  "/media/chris/Local Disk/rbe500_team2_pa1/catkin_ws/src/scara_robot/forward_kinematics/msg/scara_robot_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/forward_kinematics
)

### Generating Services

### Generating Module File
_generate_module_cpp(forward_kinematics
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/forward_kinematics
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(forward_kinematics_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(forward_kinematics_generate_messages forward_kinematics_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/chris/Local Disk/rbe500_team2_pa1/catkin_ws/src/scara_robot/forward_kinematics/msg/scara_robot_pose.msg" NAME_WE)
add_dependencies(forward_kinematics_generate_messages_cpp _forward_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(forward_kinematics_gencpp)
add_dependencies(forward_kinematics_gencpp forward_kinematics_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS forward_kinematics_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(forward_kinematics
  "/media/chris/Local Disk/rbe500_team2_pa1/catkin_ws/src/scara_robot/forward_kinematics/msg/scara_robot_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/forward_kinematics
)

### Generating Services

### Generating Module File
_generate_module_eus(forward_kinematics
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/forward_kinematics
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(forward_kinematics_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(forward_kinematics_generate_messages forward_kinematics_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/chris/Local Disk/rbe500_team2_pa1/catkin_ws/src/scara_robot/forward_kinematics/msg/scara_robot_pose.msg" NAME_WE)
add_dependencies(forward_kinematics_generate_messages_eus _forward_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(forward_kinematics_geneus)
add_dependencies(forward_kinematics_geneus forward_kinematics_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS forward_kinematics_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(forward_kinematics
  "/media/chris/Local Disk/rbe500_team2_pa1/catkin_ws/src/scara_robot/forward_kinematics/msg/scara_robot_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/forward_kinematics
)

### Generating Services

### Generating Module File
_generate_module_lisp(forward_kinematics
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/forward_kinematics
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(forward_kinematics_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(forward_kinematics_generate_messages forward_kinematics_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/chris/Local Disk/rbe500_team2_pa1/catkin_ws/src/scara_robot/forward_kinematics/msg/scara_robot_pose.msg" NAME_WE)
add_dependencies(forward_kinematics_generate_messages_lisp _forward_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(forward_kinematics_genlisp)
add_dependencies(forward_kinematics_genlisp forward_kinematics_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS forward_kinematics_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(forward_kinematics
  "/media/chris/Local Disk/rbe500_team2_pa1/catkin_ws/src/scara_robot/forward_kinematics/msg/scara_robot_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/forward_kinematics
)

### Generating Services

### Generating Module File
_generate_module_nodejs(forward_kinematics
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/forward_kinematics
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(forward_kinematics_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(forward_kinematics_generate_messages forward_kinematics_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/chris/Local Disk/rbe500_team2_pa1/catkin_ws/src/scara_robot/forward_kinematics/msg/scara_robot_pose.msg" NAME_WE)
add_dependencies(forward_kinematics_generate_messages_nodejs _forward_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(forward_kinematics_gennodejs)
add_dependencies(forward_kinematics_gennodejs forward_kinematics_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS forward_kinematics_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(forward_kinematics
  "/media/chris/Local Disk/rbe500_team2_pa1/catkin_ws/src/scara_robot/forward_kinematics/msg/scara_robot_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/forward_kinematics
)

### Generating Services

### Generating Module File
_generate_module_py(forward_kinematics
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/forward_kinematics
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(forward_kinematics_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(forward_kinematics_generate_messages forward_kinematics_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/chris/Local Disk/rbe500_team2_pa1/catkin_ws/src/scara_robot/forward_kinematics/msg/scara_robot_pose.msg" NAME_WE)
add_dependencies(forward_kinematics_generate_messages_py _forward_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(forward_kinematics_genpy)
add_dependencies(forward_kinematics_genpy forward_kinematics_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS forward_kinematics_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/forward_kinematics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/forward_kinematics
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(forward_kinematics_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/forward_kinematics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/forward_kinematics
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(forward_kinematics_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/forward_kinematics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/forward_kinematics
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(forward_kinematics_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/forward_kinematics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/forward_kinematics
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(forward_kinematics_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/forward_kinematics)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/forward_kinematics\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/forward_kinematics
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(forward_kinematics_generate_messages_py std_msgs_generate_messages_py)
endif()
