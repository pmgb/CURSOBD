﻿using System;
using System.Collections.Generic;

namespace Database
{
    public class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Conectado a al base de datos");

            Db conectar = new Db();
            //conectar.Conectar();
            Usuario nuevoUsuario = null;
            if (conectar.EstaLaConexionAbierta())
            {
                nuevoUsuario = new Usuario()
                {
                    //hiddenId = 0,
                    //id = "23j3232",
                    email = "pedroleon@hotmail.com",
                    password = "123334",
                    firstName = "pdro",
                    lastName = "leon",
                    photoUrl = "www.pepitofilm3.com",
                    searchPreferences = "",
                    status = false,
                    deleted = false,
                    isAdmin = false
                };
                //conectar.InsertarUsuario(nuevoUsuario);
                List<Usuario> usuarios = conectar.DamelosUsuarios();
                usuarios.ForEach(usuario =>
                {
                    Console.WriteLine("Nombre: " + usuario.firstName + " " + usuario.lastName + 
                                      "   Email: "   + usuario.email + "   status: " + usuario.status +
                                      "   hiddenId: " + usuario.hiddenId
                    );
                });
                foreach (var usuario in usuarios)
                {
                    Console.WriteLine("Nombre: " + usuario.firstName + " " + usuario.lastName);
                }
            }
            //conectar.eliminarUsuario(178);
            //conectar.eliminarUsuarioPorEmail(nuevoUsuario.email);
            Usuario nuevoUsuario2 = new Usuario()
            {
                //hiddenId = 0,
                //id = "23j3232",
                email = "andres123@hotmail.com",
                password = "99999007532",
                firstName = "jose",
                lastName = "andrade",
                photoUrl = "www.informatizandoweb.com",
                searchPreferences = "",
                status = false,
                deleted = false,
                isAdmin = false
            };
            conectar.actualizarUsuarios(nuevoUsuario2);
            conectar.Desconectar();
            Console.ReadKey();

            conectar.Desconectar();
        }
    }
}