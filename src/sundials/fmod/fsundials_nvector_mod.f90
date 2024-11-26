! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module fsundials_nvector_mod
 use, intrinsic :: ISO_C_BINDING
 use fsundials_types_mod
 implicit none
 private

 ! DECLARATION CONSTRUCTS
 ! typedef enum N_Vector_ID
 enum, bind(c)
  enumerator :: SUNDIALS_NVEC_SERIAL
  enumerator :: SUNDIALS_NVEC_PARALLEL
  enumerator :: SUNDIALS_NVEC_OPENMP
  enumerator :: SUNDIALS_NVEC_PTHREADS
  enumerator :: SUNDIALS_NVEC_PARHYP
  enumerator :: SUNDIALS_NVEC_PETSC
  enumerator :: SUNDIALS_NVEC_CUDA
  enumerator :: SUNDIALS_NVEC_RAJA
  enumerator :: SUNDIALS_NVEC_OPENMPDEV
  enumerator :: SUNDIALS_NVEC_TRILINOS
  enumerator :: SUNDIALS_NVEC_MANYVECTOR
  enumerator :: SUNDIALS_NVEC_MPIMANYVECTOR
  enumerator :: SUNDIALS_NVEC_MPIPLUSX
  enumerator :: SUNDIALS_NVEC_CUSTOM
 end enum
 integer, parameter, public :: N_Vector_ID = kind(SUNDIALS_NVEC_SERIAL)
 public :: SUNDIALS_NVEC_SERIAL, SUNDIALS_NVEC_PARALLEL, SUNDIALS_NVEC_OPENMP, SUNDIALS_NVEC_PTHREADS, SUNDIALS_NVEC_PARHYP, &
    SUNDIALS_NVEC_PETSC, SUNDIALS_NVEC_CUDA, SUNDIALS_NVEC_RAJA, SUNDIALS_NVEC_OPENMPDEV, SUNDIALS_NVEC_TRILINOS, &
    SUNDIALS_NVEC_MANYVECTOR, SUNDIALS_NVEC_MPIMANYVECTOR, SUNDIALS_NVEC_MPIPLUSX, SUNDIALS_NVEC_CUSTOM
 ! struct struct _generic_N_Vector_Ops
 type, bind(C), public :: N_Vector_Ops
  type(C_FUNPTR), public :: nvgetvectorid
  type(C_FUNPTR), public :: nvclone
  type(C_FUNPTR), public :: nvcloneempty
  type(C_FUNPTR), public :: nvdestroy
  type(C_FUNPTR), public :: nvspace
  type(C_FUNPTR), public :: nvgetarraypointer
  type(C_FUNPTR), public :: nvsetarraypointer
  type(C_FUNPTR), public :: nvgetcommunicator
  type(C_FUNPTR), public :: nvgetlength
  type(C_FUNPTR), public :: nvlinearsum
  type(C_FUNPTR), public :: nvconst
  type(C_FUNPTR), public :: nvprod
  type(C_FUNPTR), public :: nvdiv
  type(C_FUNPTR), public :: nvscale
  type(C_FUNPTR), public :: nvabs
  type(C_FUNPTR), public :: nvinv
  type(C_FUNPTR), public :: nvaddconst
  type(C_FUNPTR), public :: nvdotprod
  type(C_FUNPTR), public :: nvmaxnorm
  type(C_FUNPTR), public :: nvwrmsnorm
  type(C_FUNPTR), public :: nvwrmsnormmask
  type(C_FUNPTR), public :: nvmin
  type(C_FUNPTR), public :: nvwl2norm
  type(C_FUNPTR), public :: nvl1norm
  type(C_FUNPTR), public :: nvcompare
  type(C_FUNPTR), public :: nvinvtest
  type(C_FUNPTR), public :: nvconstrmask
  type(C_FUNPTR), public :: nvminquotient
  type(C_FUNPTR), public :: nvlinearcombination
  type(C_FUNPTR), public :: nvscaleaddmulti
  type(C_FUNPTR), public :: nvdotprodmulti
  type(C_FUNPTR), public :: nvlinearsumvectorarray
  type(C_FUNPTR), public :: nvscalevectorarray
  type(C_FUNPTR), public :: nvconstvectorarray
  type(C_FUNPTR), public :: nvwrmsnormvectorarray
  type(C_FUNPTR), public :: nvwrmsnormmaskvectorarray
  type(C_FUNPTR), public :: nvscaleaddmultivectorarray
  type(C_FUNPTR), public :: nvlinearcombinationvectorarray
  type(C_FUNPTR), public :: nvdotprodlocal
  type(C_FUNPTR), public :: nvmaxnormlocal
  type(C_FUNPTR), public :: nvminlocal
  type(C_FUNPTR), public :: nvl1normlocal
  type(C_FUNPTR), public :: nvinvtestlocal
  type(C_FUNPTR), public :: nvconstrmasklocal
  type(C_FUNPTR), public :: nvminquotientlocal
  type(C_FUNPTR), public :: nvwsqrsumlocal
  type(C_FUNPTR), public :: nvwsqrsummasklocal
  type(C_FUNPTR), public :: nvprint
  type(C_FUNPTR), public :: nvprintfile
 end type N_Vector_Ops
 ! struct struct _generic_N_Vector
 type, bind(C), public :: N_Vector
  type(C_PTR), public :: content
  type(C_PTR), public :: ops
 end type N_Vector
 public :: FN_VNewEmpty
 public :: FN_VFreeEmpty
 public :: FN_VCopyOps
 public :: FN_VGetVectorID
 public :: FN_VClone
 public :: FN_VCloneEmpty
 public :: FN_VDestroy
 public :: FN_VSpace
 public :: FN_VGetArrayPointer
 public :: FN_VSetArrayPointer
 public :: FN_VGetCommunicator
 public :: FN_VGetLength
 public :: FN_VLinearSum
 public :: FN_VConst
 public :: FN_VProd
 public :: FN_VDiv
 public :: FN_VScale
 public :: FN_VAbs
 public :: FN_VInv
 public :: FN_VAddConst
 public :: FN_VDotProd
 public :: FN_VMaxNorm
 public :: FN_VWrmsNorm
 public :: FN_VWrmsNormMask
 public :: FN_VMin
 public :: FN_VWL2Norm
 public :: FN_VL1Norm
 public :: FN_VCompare
 public :: FN_VInvTest
 public :: FN_VConstrMask
 public :: FN_VMinQuotient
 public :: FN_VLinearCombination
 public :: FN_VScaleAddMulti
 public :: FN_VDotProdMulti
 public :: FN_VLinearSumVectorArray
 public :: FN_VScaleVectorArray
 public :: FN_VConstVectorArray
 public :: FN_VWrmsNormVectorArray
 public :: FN_VWrmsNormMaskVectorArray
 public :: FN_VDotProdLocal
 public :: FN_VMaxNormLocal
 public :: FN_VMinLocal
 public :: FN_VL1NormLocal
 public :: FN_VWSqrSumLocal
 public :: FN_VWSqrSumMaskLocal
 public :: FN_VInvTestLocal
 public :: FN_VConstrMaskLocal
 public :: FN_VMinQuotientLocal
 public :: FN_VNewVectorArray
 public :: FN_VCloneEmptyVectorArray
 public :: FN_VCloneVectorArray
 public :: FN_VDestroyVectorArray
 public :: FN_VGetVecAtIndexVectorArray
 public :: FN_VSetVecAtIndexVectorArray
 public :: FN_VPrint
 public :: FN_VPrintFile

! WRAPPER DECLARATIONS
interface
function swigc_FN_VNewEmpty() &
bind(C, name="_wrap_FN_VNewEmpty") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR) :: fresult
end function

subroutine swigc_FN_VFreeEmpty(farg1) &
bind(C, name="_wrap_FN_VFreeEmpty")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

function swigc_FN_VCopyOps(farg1, farg2) &
bind(C, name="_wrap_FN_VCopyOps") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
integer(C_INT) :: fresult
end function

function swigc_FN_VGetVectorID(farg1) &
bind(C, name="_wrap_FN_VGetVectorID") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
integer(C_INT) :: fresult
end function

function swigc_FN_VClone(farg1) &
bind(C, name="_wrap_FN_VClone") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR) :: fresult
end function

function swigc_FN_VCloneEmpty(farg1) &
bind(C, name="_wrap_FN_VCloneEmpty") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR) :: fresult
end function

subroutine swigc_FN_VDestroy(farg1) &
bind(C, name="_wrap_FN_VDestroy")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

subroutine swigc_FN_VSpace(farg1, farg2, farg3) &
bind(C, name="_wrap_FN_VSpace")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
end subroutine

function swigc_FN_VGetArrayPointer(farg1) &
bind(C, name="_wrap_FN_VGetArrayPointer") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR) :: fresult
end function

subroutine swigc_FN_VSetArrayPointer(farg1, farg2) &
bind(C, name="_wrap_FN_VSetArrayPointer")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
end subroutine

function swigc_FN_VGetCommunicator(farg1) &
bind(C, name="_wrap_FN_VGetCommunicator") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR) :: fresult
end function

function swigc_FN_VGetLength(farg1) &
bind(C, name="_wrap_FN_VGetLength") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
integer(C_INT64_T) :: fresult
end function

subroutine swigc_FN_VLinearSum(farg1, farg2, farg3, farg4, farg5) &
bind(C, name="_wrap_FN_VLinearSum")
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE), intent(in) :: farg1
type(C_PTR), value :: farg2
real(C_DOUBLE), intent(in) :: farg3
type(C_PTR), value :: farg4
type(C_PTR), value :: farg5
end subroutine

subroutine swigc_FN_VConst(farg1, farg2) &
bind(C, name="_wrap_FN_VConst")
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE), intent(in) :: farg1
type(C_PTR), value :: farg2
end subroutine

subroutine swigc_FN_VProd(farg1, farg2, farg3) &
bind(C, name="_wrap_FN_VProd")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
end subroutine

subroutine swigc_FN_VDiv(farg1, farg2, farg3) &
bind(C, name="_wrap_FN_VDiv")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
end subroutine

subroutine swigc_FN_VScale(farg1, farg2, farg3) &
bind(C, name="_wrap_FN_VScale")
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE), intent(in) :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
end subroutine

subroutine swigc_FN_VAbs(farg1, farg2) &
bind(C, name="_wrap_FN_VAbs")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
end subroutine

subroutine swigc_FN_VInv(farg1, farg2) &
bind(C, name="_wrap_FN_VInv")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
end subroutine

subroutine swigc_FN_VAddConst(farg1, farg2, farg3) &
bind(C, name="_wrap_FN_VAddConst")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
real(C_DOUBLE), intent(in) :: farg2
type(C_PTR), value :: farg3
end subroutine

function swigc_FN_VDotProd(farg1, farg2) &
bind(C, name="_wrap_FN_VDotProd") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
real(C_DOUBLE) :: fresult
end function

function swigc_FN_VMaxNorm(farg1) &
bind(C, name="_wrap_FN_VMaxNorm") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
real(C_DOUBLE) :: fresult
end function

function swigc_FN_VWrmsNorm(farg1, farg2) &
bind(C, name="_wrap_FN_VWrmsNorm") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
real(C_DOUBLE) :: fresult
end function

function swigc_FN_VWrmsNormMask(farg1, farg2, farg3) &
bind(C, name="_wrap_FN_VWrmsNormMask") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
real(C_DOUBLE) :: fresult
end function

function swigc_FN_VMin(farg1) &
bind(C, name="_wrap_FN_VMin") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
real(C_DOUBLE) :: fresult
end function

function swigc_FN_VWL2Norm(farg1, farg2) &
bind(C, name="_wrap_FN_VWL2Norm") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
real(C_DOUBLE) :: fresult
end function

function swigc_FN_VL1Norm(farg1) &
bind(C, name="_wrap_FN_VL1Norm") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
real(C_DOUBLE) :: fresult
end function

subroutine swigc_FN_VCompare(farg1, farg2, farg3) &
bind(C, name="_wrap_FN_VCompare")
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE), intent(in) :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
end subroutine

function swigc_FN_VInvTest(farg1, farg2) &
bind(C, name="_wrap_FN_VInvTest") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
integer(C_INT) :: fresult
end function

function swigc_FN_VConstrMask(farg1, farg2, farg3) &
bind(C, name="_wrap_FN_VConstrMask") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
integer(C_INT) :: fresult
end function

function swigc_FN_VMinQuotient(farg1, farg2) &
bind(C, name="_wrap_FN_VMinQuotient") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
real(C_DOUBLE) :: fresult
end function

function swigc_FN_VLinearCombination(farg1, farg2, farg3, farg4) &
bind(C, name="_wrap_FN_VLinearCombination") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
type(C_PTR), value :: farg4
integer(C_INT) :: fresult
end function

function swigc_FN_VScaleAddMulti(farg1, farg2, farg3, farg4, farg5) &
bind(C, name="_wrap_FN_VScaleAddMulti") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
type(C_PTR), value :: farg4
type(C_PTR), value :: farg5
integer(C_INT) :: fresult
end function

function swigc_FN_VDotProdMulti(farg1, farg2, farg3, farg4) &
bind(C, name="_wrap_FN_VDotProdMulti") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
type(C_PTR), value :: farg4
integer(C_INT) :: fresult
end function

function swigc_FN_VLinearSumVectorArray(farg1, farg2, farg3, farg4, farg5, farg6) &
bind(C, name="_wrap_FN_VLinearSumVectorArray") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: farg1
real(C_DOUBLE), intent(in) :: farg2
type(C_PTR), value :: farg3
real(C_DOUBLE), intent(in) :: farg4
type(C_PTR), value :: farg5
type(C_PTR), value :: farg6
integer(C_INT) :: fresult
end function

function swigc_FN_VScaleVectorArray(farg1, farg2, farg3, farg4) &
bind(C, name="_wrap_FN_VScaleVectorArray") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
type(C_PTR), value :: farg4
integer(C_INT) :: fresult
end function

function swigc_FN_VConstVectorArray(farg1, farg2, farg3) &
bind(C, name="_wrap_FN_VConstVectorArray") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: farg1
real(C_DOUBLE), intent(in) :: farg2
type(C_PTR), value :: farg3
integer(C_INT) :: fresult
end function

function swigc_FN_VWrmsNormVectorArray(farg1, farg2, farg3, farg4) &
bind(C, name="_wrap_FN_VWrmsNormVectorArray") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
type(C_PTR), value :: farg4
integer(C_INT) :: fresult
end function

function swigc_FN_VWrmsNormMaskVectorArray(farg1, farg2, farg3, farg4, farg5) &
bind(C, name="_wrap_FN_VWrmsNormMaskVectorArray") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
type(C_PTR), value :: farg4
type(C_PTR), value :: farg5
integer(C_INT) :: fresult
end function

function swigc_FN_VDotProdLocal(farg1, farg2) &
bind(C, name="_wrap_FN_VDotProdLocal") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
real(C_DOUBLE) :: fresult
end function

function swigc_FN_VMaxNormLocal(farg1) &
bind(C, name="_wrap_FN_VMaxNormLocal") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
real(C_DOUBLE) :: fresult
end function

function swigc_FN_VMinLocal(farg1) &
bind(C, name="_wrap_FN_VMinLocal") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
real(C_DOUBLE) :: fresult
end function

function swigc_FN_VL1NormLocal(farg1) &
bind(C, name="_wrap_FN_VL1NormLocal") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
real(C_DOUBLE) :: fresult
end function

function swigc_FN_VWSqrSumLocal(farg1, farg2) &
bind(C, name="_wrap_FN_VWSqrSumLocal") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
real(C_DOUBLE) :: fresult
end function

function swigc_FN_VWSqrSumMaskLocal(farg1, farg2, farg3) &
bind(C, name="_wrap_FN_VWSqrSumMaskLocal") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
real(C_DOUBLE) :: fresult
end function

function swigc_FN_VInvTestLocal(farg1, farg2) &
bind(C, name="_wrap_FN_VInvTestLocal") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
integer(C_INT) :: fresult
end function

function swigc_FN_VConstrMaskLocal(farg1, farg2, farg3) &
bind(C, name="_wrap_FN_VConstrMaskLocal") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
integer(C_INT) :: fresult
end function

function swigc_FN_VMinQuotientLocal(farg1, farg2) &
bind(C, name="_wrap_FN_VMinQuotientLocal") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
real(C_DOUBLE) :: fresult
end function

function swigc_FN_VNewVectorArray(farg1) &
bind(C, name="_wrap_FN_VNewVectorArray") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: farg1
type(C_PTR) :: fresult
end function

function swigc_FN_VCloneEmptyVectorArray(farg1, farg2) &
bind(C, name="_wrap_FN_VCloneEmptyVectorArray") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: farg1
type(C_PTR), value :: farg2
type(C_PTR) :: fresult
end function

function swigc_FN_VCloneVectorArray(farg1, farg2) &
bind(C, name="_wrap_FN_VCloneVectorArray") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: farg1
type(C_PTR), value :: farg2
type(C_PTR) :: fresult
end function

subroutine swigc_FN_VDestroyVectorArray(farg1, farg2) &
bind(C, name="_wrap_FN_VDestroyVectorArray")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
integer(C_INT), intent(in) :: farg2
end subroutine

function swigc_FN_VGetVecAtIndexVectorArray(farg1, farg2) &
bind(C, name="_wrap_FN_VGetVecAtIndexVectorArray") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
integer(C_INT), intent(in) :: farg2
type(C_PTR) :: fresult
end function

subroutine swigc_FN_VSetVecAtIndexVectorArray(farg1, farg2, farg3) &
bind(C, name="_wrap_FN_VSetVecAtIndexVectorArray")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
integer(C_INT), intent(in) :: farg2
type(C_PTR), value :: farg3
end subroutine

subroutine swigc_FN_VPrint(farg1) &
bind(C, name="_wrap_FN_VPrint")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

subroutine swigc_FN_VPrintFile(farg1, farg2) &
bind(C, name="_wrap_FN_VPrintFile")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
end subroutine

end interface


contains
 ! MODULE SUBPROGRAMS
function FN_VNewEmpty() &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
type(N_Vector), pointer :: swig_result
type(C_PTR) :: fresult 

fresult = swigc_FN_VNewEmpty()
call c_f_pointer(fresult, swig_result)
end function

subroutine FN_VFreeEmpty(v)
use, intrinsic :: ISO_C_BINDING
type(N_Vector), target, intent(inout) :: v
type(C_PTR) :: farg1 

farg1 = c_loc(v)
call swigc_FN_VFreeEmpty(farg1)
end subroutine

function FN_VCopyOps(w, v) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
type(N_Vector), target, intent(inout) :: w
type(N_Vector), target, intent(inout) :: v
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = c_loc(w)
farg2 = c_loc(v)
fresult = swigc_FN_VCopyOps(farg1, farg2)
swig_result = fresult
end function

function FN_VGetVectorID(w) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(N_Vector_ID) :: swig_result
type(N_Vector), target, intent(inout) :: w
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 

farg1 = c_loc(w)
fresult = swigc_FN_VGetVectorID(farg1)
swig_result = fresult
end function

function FN_VClone(w) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
type(N_Vector), pointer :: swig_result
type(N_Vector), target, intent(inout) :: w
type(C_PTR) :: fresult 
type(C_PTR) :: farg1 

farg1 = c_loc(w)
fresult = swigc_FN_VClone(farg1)
call c_f_pointer(fresult, swig_result)
end function

function FN_VCloneEmpty(w) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
type(N_Vector), pointer :: swig_result
type(N_Vector), target, intent(inout) :: w
type(C_PTR) :: fresult 
type(C_PTR) :: farg1 

farg1 = c_loc(w)
fresult = swigc_FN_VCloneEmpty(farg1)
call c_f_pointer(fresult, swig_result)
end function

subroutine FN_VDestroy(v)
use, intrinsic :: ISO_C_BINDING
type(N_Vector), target, intent(inout) :: v
type(C_PTR) :: farg1 

farg1 = c_loc(v)
call swigc_FN_VDestroy(farg1)
end subroutine

subroutine FN_VSpace(v, lrw, liw)
use, intrinsic :: ISO_C_BINDING
type(N_Vector), target, intent(inout) :: v
integer(C_INT64_T), dimension(*), target, intent(inout) :: lrw
integer(C_INT64_T), dimension(*), target, intent(inout) :: liw
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 

farg1 = c_loc(v)
farg2 = c_loc(lrw(1))
farg3 = c_loc(liw(1))
call swigc_FN_VSpace(farg1, farg2, farg3)
end subroutine

function FN_VGetArrayPointer(v) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE), dimension(:), pointer :: swig_result
type(N_Vector), target, intent(inout) :: v
type(C_PTR) :: fresult 
type(C_PTR) :: farg1 

farg1 = c_loc(v)
fresult = swigc_FN_VGetArrayPointer(farg1)
call c_f_pointer(fresult, swig_result, [1])
end function

subroutine FN_VSetArrayPointer(v_data, v)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE), dimension(*), target, intent(inout) :: v_data
type(N_Vector), target, intent(inout) :: v
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = c_loc(v_data(1))
farg2 = c_loc(v)
call swigc_FN_VSetArrayPointer(farg1, farg2)
end subroutine

function FN_VGetCommunicator(v) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
type(C_PTR) :: swig_result
type(N_Vector), target, intent(inout) :: v
type(C_PTR) :: fresult 
type(C_PTR) :: farg1 

farg1 = c_loc(v)
fresult = swigc_FN_VGetCommunicator(farg1)
swig_result = fresult
end function

function FN_VGetLength(v) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT64_T) :: swig_result
type(N_Vector), target, intent(inout) :: v
integer(C_INT64_T) :: fresult 
type(C_PTR) :: farg1 

farg1 = c_loc(v)
fresult = swigc_FN_VGetLength(farg1)
swig_result = fresult
end function

subroutine FN_VLinearSum(a, x, b, y, z)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE), intent(in) :: a
type(N_Vector), target, intent(inout) :: x
real(C_DOUBLE), intent(in) :: b
type(N_Vector), target, intent(inout) :: y
type(N_Vector), target, intent(inout) :: z
real(C_DOUBLE) :: farg1 
type(C_PTR) :: farg2 
real(C_DOUBLE) :: farg3 
type(C_PTR) :: farg4 
type(C_PTR) :: farg5 

farg1 = a
farg2 = c_loc(x)
farg3 = b
farg4 = c_loc(y)
farg5 = c_loc(z)
call swigc_FN_VLinearSum(farg1, farg2, farg3, farg4, farg5)
end subroutine

subroutine FN_VConst(c, z)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE), intent(in) :: c
type(N_Vector), target, intent(inout) :: z
real(C_DOUBLE) :: farg1 
type(C_PTR) :: farg2 

farg1 = c
farg2 = c_loc(z)
call swigc_FN_VConst(farg1, farg2)
end subroutine

subroutine FN_VProd(x, y, z)
use, intrinsic :: ISO_C_BINDING
type(N_Vector), target, intent(inout) :: x
type(N_Vector), target, intent(inout) :: y
type(N_Vector), target, intent(inout) :: z
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 

farg1 = c_loc(x)
farg2 = c_loc(y)
farg3 = c_loc(z)
call swigc_FN_VProd(farg1, farg2, farg3)
end subroutine

subroutine FN_VDiv(x, y, z)
use, intrinsic :: ISO_C_BINDING
type(N_Vector), target, intent(inout) :: x
type(N_Vector), target, intent(inout) :: y
type(N_Vector), target, intent(inout) :: z
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 

farg1 = c_loc(x)
farg2 = c_loc(y)
farg3 = c_loc(z)
call swigc_FN_VDiv(farg1, farg2, farg3)
end subroutine

subroutine FN_VScale(c, x, z)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE), intent(in) :: c
type(N_Vector), target, intent(inout) :: x
type(N_Vector), target, intent(inout) :: z
real(C_DOUBLE) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 

farg1 = c
farg2 = c_loc(x)
farg3 = c_loc(z)
call swigc_FN_VScale(farg1, farg2, farg3)
end subroutine

subroutine FN_VAbs(x, z)
use, intrinsic :: ISO_C_BINDING
type(N_Vector), target, intent(inout) :: x
type(N_Vector), target, intent(inout) :: z
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = c_loc(x)
farg2 = c_loc(z)
call swigc_FN_VAbs(farg1, farg2)
end subroutine

subroutine FN_VInv(x, z)
use, intrinsic :: ISO_C_BINDING
type(N_Vector), target, intent(inout) :: x
type(N_Vector), target, intent(inout) :: z
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = c_loc(x)
farg2 = c_loc(z)
call swigc_FN_VInv(farg1, farg2)
end subroutine

subroutine FN_VAddConst(x, b, z)
use, intrinsic :: ISO_C_BINDING
type(N_Vector), target, intent(inout) :: x
real(C_DOUBLE), intent(in) :: b
type(N_Vector), target, intent(inout) :: z
type(C_PTR) :: farg1 
real(C_DOUBLE) :: farg2 
type(C_PTR) :: farg3 

farg1 = c_loc(x)
farg2 = b
farg3 = c_loc(z)
call swigc_FN_VAddConst(farg1, farg2, farg3)
end subroutine

function FN_VDotProd(x, y) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swig_result
type(N_Vector), target, intent(inout) :: x
type(N_Vector), target, intent(inout) :: y
real(C_DOUBLE) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = c_loc(x)
farg2 = c_loc(y)
fresult = swigc_FN_VDotProd(farg1, farg2)
swig_result = fresult
end function

function FN_VMaxNorm(x) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swig_result
type(N_Vector), target, intent(inout) :: x
real(C_DOUBLE) :: fresult 
type(C_PTR) :: farg1 

farg1 = c_loc(x)
fresult = swigc_FN_VMaxNorm(farg1)
swig_result = fresult
end function

function FN_VWrmsNorm(x, w) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swig_result
type(N_Vector), target, intent(inout) :: x
type(N_Vector), target, intent(inout) :: w
real(C_DOUBLE) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = c_loc(x)
farg2 = c_loc(w)
fresult = swigc_FN_VWrmsNorm(farg1, farg2)
swig_result = fresult
end function

function FN_VWrmsNormMask(x, w, id) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swig_result
type(N_Vector), target, intent(inout) :: x
type(N_Vector), target, intent(inout) :: w
type(N_Vector), target, intent(inout) :: id
real(C_DOUBLE) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 

farg1 = c_loc(x)
farg2 = c_loc(w)
farg3 = c_loc(id)
fresult = swigc_FN_VWrmsNormMask(farg1, farg2, farg3)
swig_result = fresult
end function

function FN_VMin(x) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swig_result
type(N_Vector), target, intent(inout) :: x
real(C_DOUBLE) :: fresult 
type(C_PTR) :: farg1 

farg1 = c_loc(x)
fresult = swigc_FN_VMin(farg1)
swig_result = fresult
end function

function FN_VWL2Norm(x, w) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swig_result
type(N_Vector), target, intent(inout) :: x
type(N_Vector), target, intent(inout) :: w
real(C_DOUBLE) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = c_loc(x)
farg2 = c_loc(w)
fresult = swigc_FN_VWL2Norm(farg1, farg2)
swig_result = fresult
end function

function FN_VL1Norm(x) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swig_result
type(N_Vector), target, intent(inout) :: x
real(C_DOUBLE) :: fresult 
type(C_PTR) :: farg1 

farg1 = c_loc(x)
fresult = swigc_FN_VL1Norm(farg1)
swig_result = fresult
end function

subroutine FN_VCompare(c, x, z)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE), intent(in) :: c
type(N_Vector), target, intent(inout) :: x
type(N_Vector), target, intent(inout) :: z
real(C_DOUBLE) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 

farg1 = c
farg2 = c_loc(x)
farg3 = c_loc(z)
call swigc_FN_VCompare(farg1, farg2, farg3)
end subroutine

function FN_VInvTest(x, z) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
type(N_Vector), target, intent(inout) :: x
type(N_Vector), target, intent(inout) :: z
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = c_loc(x)
farg2 = c_loc(z)
fresult = swigc_FN_VInvTest(farg1, farg2)
swig_result = fresult
end function

function FN_VConstrMask(c, x, m) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
type(N_Vector), target, intent(inout) :: c
type(N_Vector), target, intent(inout) :: x
type(N_Vector), target, intent(inout) :: m
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 

farg1 = c_loc(c)
farg2 = c_loc(x)
farg3 = c_loc(m)
fresult = swigc_FN_VConstrMask(farg1, farg2, farg3)
swig_result = fresult
end function

function FN_VMinQuotient(num, denom) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swig_result
type(N_Vector), target, intent(inout) :: num
type(N_Vector), target, intent(inout) :: denom
real(C_DOUBLE) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = c_loc(num)
farg2 = c_loc(denom)
fresult = swigc_FN_VMinQuotient(farg1, farg2)
swig_result = fresult
end function

function FN_VLinearCombination(nvec, c, x, z) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
integer(C_INT), intent(in) :: nvec
real(C_DOUBLE), dimension(*), target, intent(inout) :: c
type(C_PTR) :: x
type(N_Vector), target, intent(inout) :: z
integer(C_INT) :: fresult 
integer(C_INT) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 
type(C_PTR) :: farg4 

farg1 = nvec
farg2 = c_loc(c(1))
farg3 = x
farg4 = c_loc(z)
fresult = swigc_FN_VLinearCombination(farg1, farg2, farg3, farg4)
swig_result = fresult
end function

function FN_VScaleAddMulti(nvec, a, x, y, z) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
integer(C_INT), intent(in) :: nvec
real(C_DOUBLE), dimension(*), target, intent(inout) :: a
type(N_Vector), target, intent(inout) :: x
type(C_PTR) :: y
type(C_PTR) :: z
integer(C_INT) :: fresult 
integer(C_INT) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 
type(C_PTR) :: farg4 
type(C_PTR) :: farg5 

farg1 = nvec
farg2 = c_loc(a(1))
farg3 = c_loc(x)
farg4 = y
farg5 = z
fresult = swigc_FN_VScaleAddMulti(farg1, farg2, farg3, farg4, farg5)
swig_result = fresult
end function

function FN_VDotProdMulti(nvec, x, y, dotprods) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
integer(C_INT), intent(in) :: nvec
type(N_Vector), target, intent(inout) :: x
type(C_PTR) :: y
real(C_DOUBLE), dimension(*), target, intent(inout) :: dotprods
integer(C_INT) :: fresult 
integer(C_INT) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 
type(C_PTR) :: farg4 

farg1 = nvec
farg2 = c_loc(x)
farg3 = y
farg4 = c_loc(dotprods(1))
fresult = swigc_FN_VDotProdMulti(farg1, farg2, farg3, farg4)
swig_result = fresult
end function

function FN_VLinearSumVectorArray(nvec, a, x, b, y, z) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
integer(C_INT), intent(in) :: nvec
real(C_DOUBLE), intent(in) :: a
type(C_PTR) :: x
real(C_DOUBLE), intent(in) :: b
type(C_PTR) :: y
type(C_PTR) :: z
integer(C_INT) :: fresult 
integer(C_INT) :: farg1 
real(C_DOUBLE) :: farg2 
type(C_PTR) :: farg3 
real(C_DOUBLE) :: farg4 
type(C_PTR) :: farg5 
type(C_PTR) :: farg6 

farg1 = nvec
farg2 = a
farg3 = x
farg4 = b
farg5 = y
farg6 = z
fresult = swigc_FN_VLinearSumVectorArray(farg1, farg2, farg3, farg4, farg5, farg6)
swig_result = fresult
end function

function FN_VScaleVectorArray(nvec, c, x, z) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
integer(C_INT), intent(in) :: nvec
real(C_DOUBLE), dimension(*), target, intent(inout) :: c
type(C_PTR) :: x
type(C_PTR) :: z
integer(C_INT) :: fresult 
integer(C_INT) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 
type(C_PTR) :: farg4 

farg1 = nvec
farg2 = c_loc(c(1))
farg3 = x
farg4 = z
fresult = swigc_FN_VScaleVectorArray(farg1, farg2, farg3, farg4)
swig_result = fresult
end function

function FN_VConstVectorArray(nvec, c, z) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
integer(C_INT), intent(in) :: nvec
real(C_DOUBLE), intent(in) :: c
type(C_PTR) :: z
integer(C_INT) :: fresult 
integer(C_INT) :: farg1 
real(C_DOUBLE) :: farg2 
type(C_PTR) :: farg3 

farg1 = nvec
farg2 = c
farg3 = z
fresult = swigc_FN_VConstVectorArray(farg1, farg2, farg3)
swig_result = fresult
end function

function FN_VWrmsNormVectorArray(nvec, x, w, nrm) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
integer(C_INT), intent(in) :: nvec
type(C_PTR) :: x
type(C_PTR) :: w
real(C_DOUBLE), dimension(*), target, intent(inout) :: nrm
integer(C_INT) :: fresult 
integer(C_INT) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 
type(C_PTR) :: farg4 

farg1 = nvec
farg2 = x
farg3 = w
farg4 = c_loc(nrm(1))
fresult = swigc_FN_VWrmsNormVectorArray(farg1, farg2, farg3, farg4)
swig_result = fresult
end function

function FN_VWrmsNormMaskVectorArray(nvec, x, w, id, nrm) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
integer(C_INT), intent(in) :: nvec
type(C_PTR) :: x
type(C_PTR) :: w
type(N_Vector), target, intent(inout) :: id
real(C_DOUBLE), dimension(*), target, intent(inout) :: nrm
integer(C_INT) :: fresult 
integer(C_INT) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 
type(C_PTR) :: farg4 
type(C_PTR) :: farg5 

farg1 = nvec
farg2 = x
farg3 = w
farg4 = c_loc(id)
farg5 = c_loc(nrm(1))
fresult = swigc_FN_VWrmsNormMaskVectorArray(farg1, farg2, farg3, farg4, farg5)
swig_result = fresult
end function

function FN_VDotProdLocal(x, y) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swig_result
type(N_Vector), target, intent(inout) :: x
type(N_Vector), target, intent(inout) :: y
real(C_DOUBLE) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = c_loc(x)
farg2 = c_loc(y)
fresult = swigc_FN_VDotProdLocal(farg1, farg2)
swig_result = fresult
end function

function FN_VMaxNormLocal(x) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swig_result
type(N_Vector), target, intent(inout) :: x
real(C_DOUBLE) :: fresult 
type(C_PTR) :: farg1 

farg1 = c_loc(x)
fresult = swigc_FN_VMaxNormLocal(farg1)
swig_result = fresult
end function

function FN_VMinLocal(x) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swig_result
type(N_Vector), target, intent(inout) :: x
real(C_DOUBLE) :: fresult 
type(C_PTR) :: farg1 

farg1 = c_loc(x)
fresult = swigc_FN_VMinLocal(farg1)
swig_result = fresult
end function

function FN_VL1NormLocal(x) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swig_result
type(N_Vector), target, intent(inout) :: x
real(C_DOUBLE) :: fresult 
type(C_PTR) :: farg1 

farg1 = c_loc(x)
fresult = swigc_FN_VL1NormLocal(farg1)
swig_result = fresult
end function

function FN_VWSqrSumLocal(x, w) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swig_result
type(N_Vector), target, intent(inout) :: x
type(N_Vector), target, intent(inout) :: w
real(C_DOUBLE) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = c_loc(x)
farg2 = c_loc(w)
fresult = swigc_FN_VWSqrSumLocal(farg1, farg2)
swig_result = fresult
end function

function FN_VWSqrSumMaskLocal(x, w, id) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swig_result
type(N_Vector), target, intent(inout) :: x
type(N_Vector), target, intent(inout) :: w
type(N_Vector), target, intent(inout) :: id
real(C_DOUBLE) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 

farg1 = c_loc(x)
farg2 = c_loc(w)
farg3 = c_loc(id)
fresult = swigc_FN_VWSqrSumMaskLocal(farg1, farg2, farg3)
swig_result = fresult
end function

function FN_VInvTestLocal(x, z) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
type(N_Vector), target, intent(inout) :: x
type(N_Vector), target, intent(inout) :: z
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = c_loc(x)
farg2 = c_loc(z)
fresult = swigc_FN_VInvTestLocal(farg1, farg2)
swig_result = fresult
end function

function FN_VConstrMaskLocal(c, x, m) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
type(N_Vector), target, intent(inout) :: c
type(N_Vector), target, intent(inout) :: x
type(N_Vector), target, intent(inout) :: m
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 

farg1 = c_loc(c)
farg2 = c_loc(x)
farg3 = c_loc(m)
fresult = swigc_FN_VConstrMaskLocal(farg1, farg2, farg3)
swig_result = fresult
end function

function FN_VMinQuotientLocal(num, denom) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swig_result
type(N_Vector), target, intent(inout) :: num
type(N_Vector), target, intent(inout) :: denom
real(C_DOUBLE) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = c_loc(num)
farg2 = c_loc(denom)
fresult = swigc_FN_VMinQuotientLocal(farg1, farg2)
swig_result = fresult
end function

function FN_VNewVectorArray(count) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
type(C_PTR) :: swig_result
integer(C_INT), intent(in) :: count
type(C_PTR) :: fresult 
integer(C_INT) :: farg1 

farg1 = count
fresult = swigc_FN_VNewVectorArray(farg1)
swig_result = fresult
end function

function FN_VCloneEmptyVectorArray(count, w) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
type(C_PTR) :: swig_result
integer(C_INT), intent(in) :: count
type(N_Vector), target, intent(inout) :: w
type(C_PTR) :: fresult 
integer(C_INT) :: farg1 
type(C_PTR) :: farg2 

farg1 = count
farg2 = c_loc(w)
fresult = swigc_FN_VCloneEmptyVectorArray(farg1, farg2)
swig_result = fresult
end function

function FN_VCloneVectorArray(count, w) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
type(C_PTR) :: swig_result
integer(C_INT), intent(in) :: count
type(N_Vector), target, intent(inout) :: w
type(C_PTR) :: fresult 
integer(C_INT) :: farg1 
type(C_PTR) :: farg2 

farg1 = count
farg2 = c_loc(w)
fresult = swigc_FN_VCloneVectorArray(farg1, farg2)
swig_result = fresult
end function

subroutine FN_VDestroyVectorArray(vs, count)
use, intrinsic :: ISO_C_BINDING
type(C_PTR) :: vs
integer(C_INT), intent(in) :: count
type(C_PTR) :: farg1 
integer(C_INT) :: farg2 

farg1 = vs
farg2 = count
call swigc_FN_VDestroyVectorArray(farg1, farg2)
end subroutine

function FN_VGetVecAtIndexVectorArray(vs, index) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
type(N_Vector), pointer :: swig_result
type(C_PTR) :: vs
integer(C_INT), intent(in) :: index
type(C_PTR) :: fresult 
type(C_PTR) :: farg1 
integer(C_INT) :: farg2 

farg1 = vs
farg2 = index
fresult = swigc_FN_VGetVecAtIndexVectorArray(farg1, farg2)
call c_f_pointer(fresult, swig_result)
end function

subroutine FN_VSetVecAtIndexVectorArray(vs, index, w)
use, intrinsic :: ISO_C_BINDING
type(C_PTR) :: vs
integer(C_INT), intent(in) :: index
type(N_Vector), target, intent(inout) :: w
type(C_PTR) :: farg1 
integer(C_INT) :: farg2 
type(C_PTR) :: farg3 

farg1 = vs
farg2 = index
farg3 = c_loc(w)
call swigc_FN_VSetVecAtIndexVectorArray(farg1, farg2, farg3)
end subroutine

subroutine FN_VPrint(v)
use, intrinsic :: ISO_C_BINDING
type(N_Vector), target, intent(inout) :: v
type(C_PTR) :: farg1 

farg1 = c_loc(v)
call swigc_FN_VPrint(farg1)
end subroutine

subroutine FN_VPrintFile(v, outfile)
use, intrinsic :: ISO_C_BINDING
type(N_Vector), target, intent(inout) :: v
type(C_PTR) :: outfile
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = c_loc(v)
farg2 = outfile
call swigc_FN_VPrintFile(farg1, farg2)
end subroutine


end module
