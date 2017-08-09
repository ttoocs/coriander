##COCL FUDGE. - Make things think COCL is CUDA.

set(CVCOCLPRE "Cuda via Cuda on openCL: ")

macro(ENABLE_CUDA_FUDGE)
  message("Enabling cuda compiling via Cuda on openCL.")
  
#  if(NOT COMMAND cocl_add_library)
#    include($ENV{HOME}/coriander/share/cocl/cocl.cmake)
#  endif()
  
  if(CUDA_VIA_COCL)
    message( "${CVCOCLPRE} Already enabled.")
  elseif(CUDA_FOUND)
    message(SEND_ERROR "${CVCOCLPRE} CUDA ALREADY FOUND, LETTING IT DO IT.")
  else()
    message( "${CVCOCLPRE} Enabling") 
    
    set(CUDA_VIA_COCL TRUE)

    macro(CUDA_COMPILE name)
	    message( "Cuda-Compiling via COCL: ${name}")
	#    message( "${ARGN}")
	#    cocl_add_executable("${name}_exe" ${ARGN})
	    cocl_add_library("${name}" ${ARGN})
	#    set("${name}" "${name}_exe;${name}_lib")
	#    set("${name}" "${name_lib}")
	#    message("${name}: ${name}_exe;${name}_lib")
    endmacro()

  	macro(CUDA_ADD_LIBRARY name)
	  	message( "CUDA-compiling via COCL (LIB): ${name}")
	#    message( "${ARGN}")
		  cocl_add_library("${name}" ${ARGN})
  	endmacro()

	  macro(CUDA_ADD_EXECUTABLE name)
		  message( "CUDA-compiling via COCL (EXE): ${name}")
	#    message( "${ARGN}")
		  cocl_add_executable("${name}" ${ARGN})
	  endmacro()

    set(CUDA_LIBRAREIS ${Coriander_LIBRARIES})
  	set(CUDA_VERSION_STRING 8.0)
   	set(CUDA_FOUND TRUE)
    
  endif()

endmacro()
