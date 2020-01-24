from input.mesh.Mesh_Manager import MeshManager
from Get_Jacobian.Assembly import Ass
import sympy as sym


M=MeshManager('input/mesh/6x6.msh',dim=2)
obj=Ass(M)
F_J=obj.F_Jacobian.copy()
internos=obj.internal_faces.copy()
# Jacobian=Assembly.Assembly(M)
# M1.mb.write_file("output/arq.vtk")
# M.imprima(M,"output/arq")s
#"Get_Jacobian/Assembly.py"
