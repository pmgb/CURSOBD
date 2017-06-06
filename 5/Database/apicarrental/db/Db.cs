using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace apicarrental
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
            if (conexion != null)
            {
                if (conexion.State != ConnectionState.Closed)
                {
                    Console.WriteLine("Nombre de la base de datos " + conexion.Database.ToString());
                    conexion.Close();
                    Console.WriteLine("Conexión cerrada con éxito");
                }
                conexion.Dispose();
                conexion = null;
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

        public static void DameListaMarcasCoches()
         
        {
            List<MarcasNCoches> resutados = new list<MarcasNCoches>();

            string consultaSQL = "Select * from V_N_COCHES_POR_MARCA;";
            SqlCommand comando = new SqlCommand(consultaSQL, conexion);
            SqlDataReader reader = comando.ExecuteReader();

            //usuarios = new Usuario[reader.RecordsAffected];
            // int numeroDeUsuarios = 0;
            while (reader.Read())
            {
                resultados.Add(new MarcasNCoches()
                {
                    marca = reader["Marca"].ToString(),
                    nCoches = (int)reader["nCoches"]
                });
            }

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

        public static List<Coches> DameListaCochesConProcedimientoAlmacenado()
        {
            // CREO EL OBJETO EN EL QUE SE DEVOLVERÁN LOS RESULTADOS_pm
            List<Coches> resultados = new List<Coches>();
            //PREPARO LA LLAMADA AL PROCEDIMIENTO ALMACENADO
            string procedimientoAEjecutar = "dbo.GET_COCHE_POR_MARCA";
            //PREPARAMOS EL COMANDO PARA EJECUTAR EL PROCEDIMIENTO ALMACENADO
            SqlCommand comando = new SqlCommand(procedimientoAEjecutar, conexion);
            //HAY QUE MODIFICAR COMANDO PARA EJECUTAR PROCEDIMIENTO ALMACENADO
            comando.CommandType = CommandType.StoredProcedure;
            //EJECUTO EL COMANDO
            SqlDataReader reader = comando.ExecuteReader();
            // RECORRO EL RESULTADO Y LO PASO A LA VARIABLE A DEVOLVER
            while (reader.Read())
            {
                //CREO COCHE
                coches coches = new Coches();
                coches.id = (long)reader["id"];
                coches.matricula = reader["matricula"].ToString();
                coches.color = reader["color"].ToString();
                coches.cilindrada = (decimal)reader["cilindrada"];
                coches.id = (short)reader["nPlazas"];
                coches.fechaMatriculacion = (DateTime)reader["FechaMatriculacion"];
                coches.marca = new Marca();
                coches.marca.id = (long)reader["idMarca"];



                //AÑADO EL COCHE A LA LISTA DE RESULTADOS
                resultados.Add(coches);



                coches.idTipoCombustible = (long)reader["idTipoCombustible"];
            

            }
            return resultados;
        }

        public static List<Coches> GET_COCHE_POR_MARCA_PLAZAS_2(string marca, short nPlazas)
        {
            // CREO EL OBJETO EN EL QUE SE DEVOLVERÁN LOS RESULTADOS
            List<Coche> resultados = new List<Coche>();

            // PREPARO LA LLAMADA AL PROCEDIMIENTO ALMACENADO
            string procedimientoAEjecutar = "dbo.GET_COCHE_POR_MARCA_MATRICULA_PLAZAS_2";

            // PREPARAMOS EL COMANDO PARA EJECUTAR EL PROCEDIMIENTO ALMACENADO
            SqlCommand comando = new SqlCommand(procedimientoAEjecutar, conexion);
            comando.CommandType = CommandType.StoredProcedure;
            // PREPARO LOS PARAMETROS Y LES PASO LOS VALORES
            SqlParameter parametroMarca = new SqlParameter();
            parametroMarca.ParameterName = "marca";
            parametroMarca.SqlDbType = SqlDbType.NVarChar;
            parametroMarca.SqlValue = marca;
            comando.Parameters.Add(parametroMarca);

            SqlParameter parametroNPlazas = new SqlParameter();
            parametroNPlazas.ParameterName = "nPlazas";
            parametroNPlazas.SqlDbType = SqlDbType.SmallInt;
            parametroNPlazas.SqlValue = nPlazas;
            comando.Parameters.Add(parametroNPlazas);

            // EJECUTO EL COMANDO
            SqlDataReader reader = comando.ExecuteReader();
            // RECORRO EL RESULTADO Y LO PASO A LA VARIABLE A DEVOLVER
                while (reader.Read())
                {
                    // CREO EL COCHE
                    Coche coche = new Coche();
                    coche.matricula = reader["matricula"].ToString();
                    coche.nPlazas = (short)reader["nPlazas"];
                    coche.marca = new Marca();
                    coche.marca.denominacion = reader["Marca"].ToString();
                    // AÑADO EL COCHE A LA LISTA DE RESULTADOS
                    resultados.Add(coche);
                }

                return resultados;
            }





        public static List<Coches> parametros()
{
    // CREO EL OBJETO EN EL QUE SE DEVOLVERÁN LOS RESULTADOS_pm
    List<Coches> resultados = new List<Coches>();
    //PREPARO LA LLAMADA AL PROCEDIMIENTO ALMACENADO
    string procedimientoAEjecutar = "dbo.GET_COCHE_POR_MARCA";
    //PREPARAMOS EL COMANDO PARA EJECUTAR EL PROCEDIMIENTO ALMACENADO
    SqlCommand comando = new SqlCommand(procedimientoAEjecutar, conexion);
    //HAY QUE MODIFICAR COMANDO PARA EJECUTAR PROCEDIMIENTO ALMACENADO
    comando.CommandType = CommandType.StoredProcedure;
    //EJECUTO EL COMANDO
    SqlDataReader reader = comando.ExecuteReader();
    // RECORRO EL RESULTADO Y LO PASO A LA VARIABLE A DEVOLVER
    while (reader.Read())
    {
        //CREO COCHE
        coches coches = new Coches();
        coches.id = (long)reader["id"];
        coches.matricula = reader["matricula"].ToString();
        coches.color = reader["color"].ToString();
        coches.cilindrada = (decimal)reader["cilindrada"];
        coches.id = (short)reader["nPlazas"];
        coches.fechaMatriculacion = (DateTime)reader["FechaMatriculacion"];
        coches.marca = new Marca();
        coches.marca.id = (long)reader["idMarca"];



        //AÑADO EL COCHE A LA LISTA DE RESULTADOS
        resultados.Add(coches);



        coches.idTipoCombustible = (long)reader["idTipoCombustible"];


    }
    return resultados;
}
        public static List<Coches> GET_COCHE_POR_MARCA_MATRICULA_PLAZAS()
        {
            // CREO EL OBJETO EN EL QUE SE DEVOLVERÁN LOS RESULTADOS
            List<Coche> resultados = new List<Coche>();

            // PREPARO LA LLAMADA AL PROCEDIMIENTO ALMACENADO
            string procedimientoAEjecutar = "dbo.GET_COCHE_POR_MARCA_MATRICULA_PLAZAS";

            // PREPARAMOS EL COMANDO PARA EJECUTAR EL PROCEDIMIENTO ALMACENADO
            SqlCommand comando = new SqlCommand(procedimientoAEjecutar, conexion);
            comando.CommandType = CommandType.StoredProcedure;
            // EJECUTO EL COMANDO
            SqlDataReader reader = comando.ExecuteReader();
            // RECORRO EL RESULTADO Y LO PASO A LA VARIABLE A DEVOLVER
            while (reader.Read())
            {
                // CREO EL COCHE
                Coche coche = new Coche();
                coche.matricula = reader["matricula"].ToString();
                coche.nPlazas = (short)reader["nPlazas"];
                coche.marca = new Marca();
                coche.marca.denominacion = reader["Marca"].ToString();
                // AÑADO EL COCHE A LA LISTA DE RESULTADOS
                resultados.Add(coche);
            }

            return resultados;
        }



        public static List<Coches> GET_COCHE_POR_MARCA_MATRICULA_PLAZAS_2(string marca, short nPlazas)
            {
                // CREO EL OBJETO EN EL QUE SE DEVOLVERÁN LOS RESULTADOS_pm
                List<Coches> resultados = new List<Coches>();
                //PREPARO LA LLAMADA AL PROCEDIMIENTO ALMACENADO
                string procedimientoAEjecutar = "dbo.GET_COCHE_EJERCICIO";
                //PREPARAMOS EL COMANDO PARA EJECUTAR EL PROCEDIMIENTO ALMACENADO
                SqlCommand comando = new SqlCommand(procedimientoAEjecutar, conexion);
                //HAY QUE MODIFICAR COMANDO PARA EJECUTAR PROCEDIMIENTO ALMACENADO
                comando.CommandType = CommandType.StoredProcedure;
                //EJECUTO EL COMANDO
                SqlDataReader reader = comando.ExecuteReader();
                // RECORRO EL RESULTADO Y LO PASO A LA VARIABLE A DEVOLVER
                while (reader.Read())
                {
                    //CREO COCHE
                    coches coches = new Coches();
                    coches.id = (long)reader["id"];
                    coches.matricula = reader["matricula"].ToString();
                    coches.color = reader["color"].ToString();
                    coches.cilindrada = (decimal)reader["cilindrada"];
                    coches.id = (short)reader["nPlazas"];
                    coches.fechaMatriculacion = (DateTime)reader["FechaMatriculacion"];
                    coches.marca = new Marca();
                    coches.marca.id = (long)reader["idMarca"];



                    //AÑADO EL COCHE A LA LISTA DE RESULTADOS
                    resultados.Add(coches);
                }
            }

        public void InsertarUsuario(Usuario usuario)
        {
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
                                                consultaSQL += "," + (usuario.status ? "1" : "0");
                                                consultaSQL += "," + (usuario.deleted ? "1" : "0");
                                                consultaSQL += "," + (usuario.isAdmin ? "1" : "0");
                                                consultaSQL += ");";

            SqlCommand comando = new SqlCommand(consultaSQL, conexion);
            comando.ExecuteNonQuery();
        }

        public void eliminarUsuario(int hiddenId)
        {
            string consultaSQL = @"DELETE FROM Users WHERE hiddenId="+hiddenId+";";
            SqlCommand comando = new SqlCommand(consultaSQL, conexion);
            if (comando.ExecuteNonQuery() > 0){
                Console.WriteLine("Fila borrada");
            }else
            {
                Console.WriteLine("Error al borrar");
            }
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

        public void actualizarUsuarios(Usuario usuario)
        {
            string consultaSQL = @"UPDATE dbo.Users SET ";
                                                consultaSQL += "password ='" + usuario.password + "'";
                                                consultaSQL += ",firstName ='" + usuario.firstName + "'";
                                                consultaSQL += ",lastName ='" + usuario.lastName + "'";
                                                consultaSQL += ",photoUrl ='" + usuario.photoUrl + "'";
                                                consultaSQL += ",searchPreferences ='" + usuario.searchPreferences + "'";
                                                consultaSQL += ",status =" + (usuario.status ? "1" : "0");
                                                consultaSQL += ",deleted =" + (usuario.deleted ? "1" : "0");
                                                consultaSQL += ",isAdmin =" + (usuario.isAdmin ? "1" : "0");
                                                consultaSQL += " WHERE email ='" + usuario.email + "'";

            SqlCommand comando = new SqlCommand(consultaSQL, conexion);
            if (comando.ExecuteNonQuery() > 0)
            {
                Console.WriteLine("Fila actualizada");
            }
            else
            {
                Console.WriteLine("Error al actualizar");
            }
        }
    }
}
