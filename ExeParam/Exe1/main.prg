*- Crear el objeto
obj = CREATEOBJECT("Empty")
ADDPROPERTY(obj, "FirstName", "Irwin")
ADDPROPERTY(obj, "LastName", "Rodríguez")
ADDPROPERTY(obj, "Email", "rodriguez.irwin@gmail.com")
ADDPROPERTY(obj, "Edad", 33)

DO "exe2.exe" WITH obj
quit