<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="HR_APP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"> </script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="Recursos/CSS/Estilos.css" rel="stylesheet" />
    <title>Inicio</title>
</head>
<body>
    <form id="formulario_index" class="form-control" runat="server">

        <div>
            <asp:Label ID="lblBienvenida" runat="server" Text="" CssClass="h3"></asp:Label>
        </div>
        <asp:Label ID="lblerror" runat="server" Text=""></asp:Label>
        <div>
            <asp:Label ID="lblTitulo" runat="server" Text="" CssClass="h3"></asp:Label>
        </div>

        <div class="container">
            <div class="row">
                <h2 class="text-center">Formulario de Registro Empleado</h2>
                <div class="col">
                    <fieldset>
                        <legend>Datos Personales </legend>
                        <asp:Table ID="Tabla1" runat="server">
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Label ID="lblnombre" runat="server" Text="Nombre:"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="tbnombre" runat="server" placeholder="Esteban"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Label ID="lblapellido" runat="server" Text="Apellido:"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="tbapellido" runat="server" placeholder="Perez"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Label ID="lbldireccion" runat="server" Text="Direccion:"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="tbdireccion" runat="server" placeholder="Calle Caoba"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Label ID="lblsueldo" runat="server" Text="Sueldo:"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="tbsueldo" runat="server" placeholder="30000"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Label ID="lblpuesto" runat="server" Text="Puesto:"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="tbpuesto" runat="server" placeholder="Programador"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Label ID="lblestado" runat="server" Text="Estado:"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="tbestado" runat="server" placeholder="Activo"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Label ID="lbltelefono" runat="server" Text="Telefono:"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="tbtelefono" runat="server" placeholder="8096872712"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Label ID="lblemail" runat="server" Text="Email:"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="tbemail" runat="server" placeholder="esteban21@gmail.com"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Label ID="lblsexo" runat="server" Text="Sexo:"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="tbsexo" runat="server" placeholder="M"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Label ID="lblsangre" runat="server" Text="Tipo de Sangre:"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="tbsangre" runat="server" placeholder="A+"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </fieldset>
                    <br />

                    <div>
                        <asp:Button ID="BtnRegistrar" runat="server" CssClass="btn btn-dark btn-primary" Text="Registrar" OnClick="BtnReBtnRegistrar_Click" />
                                <asp:Button ID="calcularnomina" runat="server" CssClass="btn btn-dark btn-primary" Text="Nomina"  />                   

                    </div>
                </div>
            </div>

        </div>
        <br />
        
        <div>
            <asp:TableCell ID="Table1" runat="server"></asp:TableCell>
        </div>

        <div class="col">
            <asp:GridView runat="server" ID="gvEmpleados" CssClass="table"></asp:GridView>
        </div>
        <br />
        <div>
            <asp:Button ID="BtnCerrar" runat="server" Text="Cerrar sesion" CssClass="btn btn-dark" OnClick="BtnCerrar_Click" />
        </div>
    </form>

</body>
</html>
