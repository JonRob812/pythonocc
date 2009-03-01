/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%{
#include <MMgt_StackManager.hxx>
#include <MMgt_TShared.hxx>
#include <Handle_MMgt_TShared.hxx>
#include <Interface_Array1OfFileParameter.hxx>
#include <Interface_Array1OfHAsciiString.hxx>
#include <Interface_BitMap.hxx>
#include <Interface_Category.hxx>
#include <Interface_Check.hxx>
#include <Interface_CheckFailure.hxx>
#include <Interface_CheckIterator.hxx>
#include <Interface_CheckStatus.hxx>
#include <Interface_CheckTool.hxx>
#include <Interface_CopyControl.hxx>
#include <Interface_CopyMap.hxx>
#include <Interface_CopyTool.hxx>
#include <Interface_DataMapIteratorOfDataMapOfIntegerTransient.hxx>
#include <Interface_DataMapIteratorOfDataMapOfTransientInteger.hxx>
#include <Interface_DataMapNodeOfDataMapOfIntegerTransient.hxx>
#include <Interface_DataMapNodeOfDataMapOfTransientInteger.hxx>
#include <Interface_DataMapOfIntegerTransient.hxx>
#include <Interface_DataMapOfTransientInteger.hxx>
#include <Interface_DataState.hxx>
#include <Interface_EntityCluster.hxx>
#include <Interface_EntityIterator.hxx>
#include <Interface_EntityList.hxx>
#include <Interface_FileParameter.hxx>
#include <Interface_FileReaderData.hxx>
#include <Interface_FileReaderTool.hxx>
#include <Interface_FloatWriter.hxx>
#include <Interface_GeneralLib.hxx>
#include <Interface_GeneralModule.hxx>
#include <Interface_GlobalNodeOfGeneralLib.hxx>
#include <Interface_GlobalNodeOfReaderLib.hxx>
#include <Interface_Graph.hxx>
#include <Interface_GraphContent.hxx>
#include <Interface_GTool.hxx>
#include <Interface_HArray1OfHAsciiString.hxx>
#include <Interface_HGraph.hxx>
#include <Interface_HSequenceOfCheck.hxx>
#include <Interface_IndexedMapNodeOfIndexedMapOfAsciiString.hxx>
#include <Interface_IndexedMapOfAsciiString.hxx>
#include <Interface_InterfaceError.hxx>
#include <Interface_InterfaceMismatch.hxx>
#include <Interface_InterfaceModel.hxx>
#include <Interface_IntList.hxx>
#include <Interface_IntVal.hxx>
#include <Interface_LineBuffer.hxx>
#include <Interface_Macros.hxx>
#include <Interface_MapAsciiStringHasher.hxx>
#include <Interface_MSG.hxx>
#include <Interface_NodeOfGeneralLib.hxx>
#include <Interface_NodeOfReaderLib.hxx>
#include <Interface_ParamList.hxx>
#include <Interface_ParamSet.hxx>
#include <Interface_ParamType.hxx>
#include <Interface_Protocol.hxx>
#include <Interface_ReaderLib.hxx>
#include <Interface_ReaderModule.hxx>
#include <Interface_ReportEntity.hxx>
#include <Interface_SequenceNodeOfSequenceOfCheck.hxx>
#include <Interface_SequenceOfCheck.hxx>
#include <Interface_ShareFlags.hxx>
#include <Interface_ShareTool.hxx>
#include <Interface_SignLabel.hxx>
#include <Interface_SignType.hxx>
#include <Interface_STAT.hxx>
#include <Interface_Static.hxx>
#include <Interface_Statics.hxx>
#include <Interface_StaticSatisfies.hxx>
#include <Interface_Translates.hxx>
#include <Interface_TypedValue.hxx>
#include <Interface_UndefinedContent.hxx>
#include <Interface_ValueInterpret.hxx>
#include <Interface_ValueSatisfies.hxx>
#include <Interface_VectorOfFileParameter.hxx>
#include <Interface_Version.hxx>
#include <Handle_Interface_Check.hxx>
#include <Handle_Interface_CheckFailure.hxx>
#include <Handle_Interface_CopyControl.hxx>
#include <Handle_Interface_CopyMap.hxx>
#include <Handle_Interface_DataMapNodeOfDataMapOfIntegerTransient.hxx>
#include <Handle_Interface_DataMapNodeOfDataMapOfTransientInteger.hxx>
#include <Handle_Interface_EntityCluster.hxx>
#include <Handle_Interface_FileReaderData.hxx>
#include <Handle_Interface_GeneralModule.hxx>
#include <Handle_Interface_GlobalNodeOfGeneralLib.hxx>
#include <Handle_Interface_GlobalNodeOfReaderLib.hxx>
#include <Handle_Interface_GTool.hxx>
#include <Handle_Interface_HArray1OfHAsciiString.hxx>
#include <Handle_Interface_HGraph.hxx>
#include <Handle_Interface_HSequenceOfCheck.hxx>
#include <Handle_Interface_IndexedMapNodeOfIndexedMapOfAsciiString.hxx>
#include <Handle_Interface_InterfaceError.hxx>
#include <Handle_Interface_InterfaceMismatch.hxx>
#include <Handle_Interface_InterfaceModel.hxx>
#include <Handle_Interface_IntVal.hxx>
#include <Handle_Interface_NodeOfGeneralLib.hxx>
#include <Handle_Interface_NodeOfReaderLib.hxx>
#include <Handle_Interface_ParamList.hxx>
#include <Handle_Interface_ParamSet.hxx>
#include <Handle_Interface_Protocol.hxx>
#include <Handle_Interface_ReaderModule.hxx>
#include <Handle_Interface_ReportEntity.hxx>
#include <Handle_Interface_SequenceNodeOfSequenceOfCheck.hxx>
#include <Handle_Interface_SignLabel.hxx>
#include <Handle_Interface_SignType.hxx>
#include <Handle_Interface_Static.hxx>
#include <Handle_Interface_TypedValue.hxx>
#include <Handle_Interface_UndefinedContent.hxx>
#include <Handle_TCollection_AVLBaseNode.hxx>
#include <Handle_TCollection_HAsciiString.hxx>
#include <Handle_TCollection_HExtendedString.hxx>
#include <Handle_TCollection_MapNode.hxx>
#include <Handle_TCollection_SeqNode.hxx>
#include <Standard_AbortiveTransaction.hxx>
#include <Standard_Address.hxx>
#include <Standard_AncestorIterator.hxx>
#include <Standard_Boolean.hxx>
#include <Standard_Byte.hxx>
#include <Standard_Character.hxx>
#include <Standard_ConstructionError.hxx>
#include <Standard_CString.hxx>
#include <Standard_ctype.hxx>
#include <Standard_DefineHandle.hxx>
#include <Standard_DimensionError.hxx>
#include <Standard_DimensionMismatch.hxx>
#include <Standard_DivideByZero.hxx>
#include <Standard_DomainError.hxx>
#include <Standard_ErrorHandler.hxx>
#include <Standard_ErrorHandlerCallback.hxx>
#include <Standard_ExtCharacter.hxx>
#include <Standard_ExtString.hxx>
#include <Standard_Failure.hxx>
#include <Standard_GUID.hxx>
#include <Standard_HandlerStatus.hxx>
#include <Standard_ImmutableObject.hxx>
#include <Standard_Integer.hxx>
#include <Standard_InternalType.hxx>
#include <Standard_IStream.hxx>
#include <Standard_JmpBuf.hxx>
#include <Standard_KindOfType.hxx>
#include <Standard_LicenseError.hxx>
#include <Standard_LicenseNotFound.hxx>
#include <Standard_Macro.hxx>
#include <Standard_math.hxx>
#include <Standard_MMgrOpt.hxx>
#include <Standard_MMgrRaw.hxx>
#include <Standard_MMgrRoot.hxx>
#include <Standard_MultiplyDefined.hxx>
#include <Standard_Mutex.hxx>
#include <Standard_NegativeValue.hxx>
#include <Standard_NoMoreObject.hxx>
#include <Standard_NoSuchObject.hxx>
#include <Standard_NotImplemented.hxx>
#include <Standard_NullObject.hxx>
#include <Standard_NullValue.hxx>
#include <Standard_NumericError.hxx>
#include <Standard_OId.hxx>
#include <Standard_OStream.hxx>
#include <Standard_OutOfMemory.hxx>
#include <Standard_OutOfRange.hxx>
#include <Standard_Overflow.hxx>
#include <Standard_PCharacter.hxx>
#include <Standard_PErrorHandler.hxx>
#include <Standard_Persistent.hxx>
#include <Standard_Persistent_proto.hxx>
#include <Standard_PExtCharacter.hxx>
#include <Standard_PrimitiveTypes.hxx>
#include <Standard_ProgramError.hxx>
#include <Standard_RangeError.hxx>
#include <Standard_Real.hxx>
#include <Standard_ShortReal.hxx>
#include <Standard_Size.hxx>
#include <Standard_SStream.hxx>
#include <Standard_Static.hxx>
#include <Standard_Storable.hxx>
#include <Standard_Stream.hxx>
#include <Standard_String.hxx>
#include <Standard_ThreadId.hxx>
#include <Standard_TooManyUsers.hxx>
#include <Standard_Transient.hxx>
#include <Standard_Type.hxx>
#include <Standard_TypeDef.hxx>
#include <Standard_TypeMismatch.hxx>
#include <Standard_Underflow.hxx>
#include <Standard_UUID.hxx>
#include <Standard_Version.hxx>
#include <Standard_WayOfLife.hxx>
#include <Handle_Standard_AbortiveTransaction.hxx>
#include <Handle_Standard_ConstructionError.hxx>
#include <Handle_Standard_DimensionError.hxx>
#include <Handle_Standard_DimensionMismatch.hxx>
#include <Handle_Standard_DivideByZero.hxx>
#include <Handle_Standard_DomainError.hxx>
#include <Handle_Standard_Failure.hxx>
#include <Handle_Standard_ImmutableObject.hxx>
#include <Handle_Standard_LicenseError.hxx>
#include <Handle_Standard_LicenseNotFound.hxx>
#include <Handle_Standard_MultiplyDefined.hxx>
#include <Handle_Standard_NegativeValue.hxx>
#include <Handle_Standard_NoMoreObject.hxx>
#include <Handle_Standard_NoSuchObject.hxx>
#include <Handle_Standard_NotImplemented.hxx>
#include <Handle_Standard_NullObject.hxx>
#include <Handle_Standard_NullValue.hxx>
#include <Handle_Standard_NumericError.hxx>
#include <Handle_Standard_OutOfMemory.hxx>
#include <Handle_Standard_OutOfRange.hxx>
#include <Handle_Standard_Overflow.hxx>
#include <Handle_Standard_Persistent.hxx>
#include <Handle_Standard_ProgramError.hxx>
#include <Handle_Standard_RangeError.hxx>
#include <Handle_Standard_TooManyUsers.hxx>
#include <Handle_Standard_Transient.hxx>
#include <Handle_Standard_Type.hxx>
#include <Handle_Standard_TypeMismatch.hxx>
#include <Handle_Standard_Underflow.hxx>
%};

%import MMgt.i
%import Interface.i
%import TCollection.i
%import Standard.i
