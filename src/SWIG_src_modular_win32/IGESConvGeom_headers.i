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

// Headers necessary to define wrapped classes.

#include<IGESConvGeom_GeomBuilder.hxx>
#include<IGESConvGeom.hxx>

// Additional headers necessary for compilation.

#include<IGESConvGeom.hxx>
#include<IGESConvGeom_GeomBuilder.hxx>

// Needed headers necessary for compilation.

#include<IGESConvGeom.hxx>
#include<Handle_IGESGeom_SplineCurve.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<Handle_IGESGeom_SplineSurface.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<gp_XY.hxx>
#include<gp_XYZ.hxx>
#include<Handle_IGESGeom_CopiousData.hxx>
#include<Handle_TColgp_HArray1OfXY.hxx>
#include<Handle_TColgp_HArray1OfXYZ.hxx>
#include<gp_Trsf.hxx>
#include<gp_Ax3.hxx>
#include<gp_Ax2.hxx>
#include<gp_Ax1.hxx>
#include<Handle_IGESGeom_TransformationMatrix.hxx>
%}
