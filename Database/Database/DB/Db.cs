using Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Database
{
    public class Db
    {
        SqlConnection conexion = null;

        public Db()
        {
            conexion = new SqlConnection();
            try
            {
                string cadenaConexion = @"Server=.\SQLEXPRESS;
                                        Database=testdb;
                                        User Id=testuser;
                                        Password = !Curso@2017; ";

                conexion.ConnectionString = cadenaConexion;
                conexion.Open();
                Console.WriteLine("Estado de la conexión: " + conexion.State.ToString());
                EstaLaConexionAbierta();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("Sql exception " + ex.ToString());
                Desconectar();
            }
            catch (Exception ex2)
            {
                Console.WriteLine("Exception " + ex2.ToString());
                Desconectar();
            }
        }


        // Prueba final 26-5-17 19:56
        //public void Conectar()
        //{
        //    conexion = new SqlConnection();
        //    try
        //    {
        //        string cadenaConexion = @"Server=.\SQLEXPRESS;
        //                                Database=testdb;
        //                                User Id=testuser;
        //                                Password = !Curso@2017; ";

        //        conexion.ConnectionString = cadenaConexion;
        //        conexion.Open();
        //        Console.WriteLine("Estado de la conexión: " + conexion.State.ToString());
        //        EstaLaConexionAbierta();
        //    }
        //    catch (SqlException ex)
        //    {
        //        Console.WriteLine("Sql exception " + ex.ToString());
        //        Desconectar();
        //    }
        //    catch (Exception ex2)
        //    {
        //        Console.WriteLine("Exception " + ex2.ToString());
        //        Desconectar();
        //    }
        //}

        public bool EstaLaConexionAbierta()
        {
            return conexion.State == ConnectionState.Open;
        }

        public void Desconectar()
        {
            if (this.conexion !=null)
            {
                if (this.conexion.State != ConnectionState.Closed)
                {
                    this.conexion.Close();
                }
            }
        }

        public List<Usuario> DamelosUsuarios()
        {
            // string[] usuarios = new string[45];
            List<Usuario> usuarios = null;
            string consultaSQL = "Select * from Users";
            SqlCommand comando = new SqlCommand(consultaSQL, conexion);
            SqlDataReader reader = comando.ExecuteReader();

            //usuarios = new Usuario[reader.RecordsAffected];
            usuarios = new List<Usuario>();
            // int numeroDeUsuarios = 0;
            while (reader.Read())
            {
                usuarios.Add(new Usuario()
                {
                    //int.TryParse(reader["hiddenId"].ToString(), out hiddenId),
                    hiddenId = int.Parse(reader["hiddenId"].ToString()),
                    id = reader["id"].ToString(),
                    email = reader["email"].ToString(),
                    password = reader["password"].ToString(),
                    firstName = reader["firstName"].ToString(),
                    lastName = reader["lastName"].ToString(),
                    photoUrl = reader["photoUrl"].ToString(),
                    searchPreferences = reader["searchPreferences"].ToString(),
                    status = bool.Parse(reader["status"].ToString()),
                    deleted = (bool)(reader["deleted"]),
                    isAdmin = Convert.ToBoolean(reader["isAdmin"])
                });

                //esto es igual
                //usuarios[numeroDeUsuarios] = new Usuario()
                //{
                //    firstName = reader["firstName"].ToString(),
                //    lastName = reader["lastName"].ToString()
                //};
                //usuarios.add(usuarios[numeroDeUsuarios]);
                //numeroDeUsuarios++;
                // Console.WriteLine("Nombre: " + reader["firstName"]);
            }
            reader.Close();
            return usuarios;
        }

        public void InsertarUsuario(Usuario usuario)
        {
            // PREPARO LA CONSULTA SQL PARA INSERTAR AL NUEVO USUARIO
            string consultaSQL = @"INSERT INTO Users (
                                                email
                                               ,password
                                               ,firstName
                                               ,lastName
                                               ,photoUrl
                                               ,searchPreferences
                                               ,status
                                               ,deleted
                                               ,isAdmin
                                               )
                                         VALUES (";
            consultaSQL += "'" + usuario.email + "'";
            consultaSQL += ",'" + usuario.password + "'";
            consultaSQL += ",'" + usuario.firstName + "'";
            consultaSQL += ",'" + usuario.lastName + "'";
            consultaSQL += ",'" + usuario.photoUrl + "'";
            consultaSQL += ",'" + usuario.searchPreferences + "'";
            

            //if (usuario.status)
            //{
            //    consultaSQL += ",1";
            //}
            //else
            //{
            //    consultaSQL += ",0";
            //}

            consultaSQL += "," + (usuario.status ? "1" : "0"); // el if de arriba el ? :
            consultaSQL += "," + (usuario.deleted ? "1" : "0");
            consultaSQL += "," + (usuario.isAdmin ? "1" : "0");
            consultaSQL += ");";

            // PREPARO UN COMANDO PARA EJECUTAR A LA BASE DE DATOS
            SqlCommand comando = new SqlCommand(consultaSQL, conexion);
            // RECOJO LOS DATOS
            comando.ExecuteNonQuery();
        }

        public void EliminarUsuario(string email)
        {
            // PREPARO LA CONSULTA SQL PARA INSERTAR AL NUEVO USUARIO
            string consultaSQL = @"DELETE FROM Users 
                                   WHERE email = '" + email + "';";

            // PREPARO UN COMANDO PARA EJECUTAR A LA BASE DE DATOS
            SqlCommand comando = new SqlCommand(consultaSQL, conexion);
            // EJECUTO EL COMANDO
            comando.ExecuteNonQuery();
        }

        public void eliminarUsuarioPorEmail(string email)
        {
            string consultaSQL = @"DELETE FROM Users WHERE email='" + email + "';";
            SqlCommand comando = new SqlCommand(consultaSQL, conexion);
            if (comando.ExecuteNonQuery() > 0)
            {
                Console.WriteLine("Fila borrada");
            }
            else
            {
                Console.WriteLine("Error al borrar");
            }
        }

        public void ActualizarUsuario(Usuario usuario)
        {
            // PREPARO LA CONSULTA SQL PARA INSERTAR AL NUEVO USUARIO
            string consultaSQL = @"UPDATE Users ";
            consultaSQL += "   SET password = '" + usuario.password + "'";
            consultaSQL += "      , firstName = '" + usuario.firstName + "'";
            consultaSQL += "      , lastName = '" + usuario.lastName + "'";
            consultaSQL += "      , photoUrl = '" + usuario.photoUrl + "'";
            consultaSQL += "      , searchPreferences = '" + usuario.searchPreferences + "'";
            consultaSQL += "      , status = " + (usuario.status ? "1" : "0");
            consultaSQL += "      , deleted = " + (usuario.deleted ? "1" : "0");
            consultaSQL += "      , isAdmin = " + (usuario.isAdmin ? "1" : "0");
            consultaSQL += " WHERE email = '" + usuario.email + "';";

            // PREPARO UN COMANDO PARA EJECUTAR A LA BASE DE DATOS
            SqlCommand comando = new SqlCommand(consultaSQL, conexion);
            // EJECUTO EL COMANDO
            comando.ExecuteNonQuery();
        }
    }
}
