using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


namespace HR_APP
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (Session["usuariologueado"] != null)
            {
                string usuariologueado = Session["usuariologueado"].ToString();
                lblBienvenida.Text = "Bienvenido/a  " + usuariologueado;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }


            LeerDatos();

        }
        SqlConnection conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);

        void limpiar()
        {
            tbnombre.Text = "";
            tbapellido.Text = "";
            tbdireccion.Text = "";
            tbsueldo.Text = "";
            tbpuesto.Text = "";
            tbestado.Text = "";
            tbtelefono.Text = "";
            tbemail.Text = "";
            tbsexo.Text = "";
            tbsangre.Text = "";
            

        }
        protected void BtnReBtnRegistrar_Click(object sender, EventArgs e)
        {
           
            conexion.Open();
            SqlCommand cmd = new SqlCommand("insert into Empleados values('" + tbnombre.Text + "','" + tbapellido.Text + "','" + tbdireccion.Text + "','" + tbsueldo.Text + "','" + tbpuesto.Text + "','" + tbestado.Text + "','" + tbtelefono.Text + "','" + tbemail.Text + "','" + tbsexo.Text + "', '" + tbsangre.Text + "')", conexion);            
            cmd.ExecuteNonQuery();
            Response.Write("Datos  añadidos correctamente");
            conexion.Close();
            limpiar();


        }

       

        void LeerDatos()
        {
            SqlCommand leerdatos = new SqlCommand("Select * from Empleados", conexion);
            SqlDataAdapter da = new SqlDataAdapter(leerdatos);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvEmpleados.DataSource = dt;
            gvEmpleados.DataBind();
        }

        protected void BtnCerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("usuariologueado");
            Response.Redirect("Login.aspx");
        }
        
        
    }
}