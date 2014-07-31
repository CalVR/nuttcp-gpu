FIND_PATH(RDMA_CM_INCLUDE_DIR rdma/rdma_cma.h
  PATHS
  $ENV{RDMA_CM_HOME}
  NO_DEFAULT_PATH
    PATH_SUFFIXES include
)

FIND_PATH(RDMA_CM_INCLUDE_DIR rdma/rdma_cma.h
  PATHS
  /usr/local/include
  /usr/include
  /sw/include # Fink
  /opt/local/include # DarwinPorts
  /opt/csw/include # Blastwave
  /opt/include
)

FIND_LIBRARY(RDMA_CM_LIBRARY 
  NAMES rdmacm
  PATHS $ENV{RDMA_CM_HOME}
    NO_DEFAULT_PATH
    PATH_SUFFIXES lib64 lib
)

FIND_LIBRARY(RDMA_CM_LIBRARY 
  NAMES rdmacm
  PATHS
    /usr/local
    /usr
    /sw
    /opt/local
    /opt/csw
    /opt
    /usr/freeware
    PATH_SUFFIXES lib64 lib
)

SET(RDMA_CM_FOUND "NO")
IF(RDMA_CM_LIBRARY AND RDMA_CM_INCLUDE_DIR)
  SET(RDMA_CM_FOUND "YES")
  ENDIF(RDMA_CM_LIBRARY AND RDMA_CM_INCLUDE_DIR)

