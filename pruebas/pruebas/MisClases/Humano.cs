using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pruebas
{
    public class Humano
    {
        // DEFINO LAS PROPIEDADES
        private int altura; // valor en cms
        private double peso; // valor en kg
        private string nombre;
        private char genero;
        private bool vivo;

        public void setAltura(int altura)
        {
            this.altura = altura;
        }
        public int getAltura()
        {
            return this.altura;
        }

        public void setPeso(double peso)
        {
            this.peso = peso;
        }
        public double getPeso()
        {
            return this.peso;
        }

        public void setNombre(string nombre)
        {
            this.nombre = nombre;
        }
        public string getNombre()
        {
            return this.nombre;
        }
        
        public void setGenero(char genero)
        {
            this.genero = genero;
        }
        public char getGenero()
        {
            return this.genero;
        }

        public void setVivo(bool vivo)
        {
            this.vivo = vivo;
        }
        public bool getVivo()
        {
            return this.vivo;
        }
       
    }
}
