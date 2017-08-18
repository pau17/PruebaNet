using System;
using System.Collections.Generic;
using System.Text;

namespace UnitTestProject
{
    public class OrdenesPago
    {
        public int iCodigoOrdenPago { get; set; }
        public int iCodigoSucursal { get; set; }
        public string xNombreSucursal { get; set; }
        public decimal fMonto { get; set; }
        public int iCodigoTipoMoneda { get; set; }
        public string xMonedaDescripcion { get; set; }
        public int iCodigoEstado { get; set; }
        public string xDescripcionEstado { get; set; }
        public string dFechaPago { get; set; }
    }
}
