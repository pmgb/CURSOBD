using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ApiCarRental.Controllers
{
    public class TiposCombustibleController : ApiController
    {
        // GET: api/TipoCombustible
        public RespuestaAPI Get()
        {
            RespuestaAPI resultado = new RespuestaAPI();
            List<TipoCombustible> listaTiposCombustible = new List<TipoCombustible>();
            try
            {
                Db.Conectar();

                if (Db.EstaLaConexionAbierta())
                {
                    listaTiposCombustible = Db.GetTipoCombustible();
                    //    listaMarcas = Db.GetMarcas();
                }
                resultado.error = "";
                Db.Desconectar();
            }
            catch
            {
                resultado.error = "Se produjo un error";
            }

            resultado.totalElementos = listaTiposCombustible.Count;
            resultado.dataTipoCombustible = listaTiposCombustible;
            return resultado;
        }

        





                
        //public IEnumerable<string> Get()
        //{
        //    return new string[] { "value1", "value2" };
        //}

        // GET: api/TipoCombustible/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/TipoCombustible
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/TipoCombustible/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/TipoCombustible/5
        public void Delete(int id)
        {
        }
    }
}
