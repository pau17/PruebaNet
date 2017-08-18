using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Net.Http;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;

namespace UnitTestProject
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestGetOrdenesPorMoneda()
        {
            try
            {
                var url = "http://localhost:52960";
                var path = "/api/OrdenesPagoApi/GetOrdenesPorMoneda?IdSucursal={IdSucursal}&IdTipoMoneda={IdTipoMoneda}";

                var idSucursal = 1;
                var idMoneda = 1;

                path = path.Replace("{IdSucursal}", idSucursal.ToString());
                path = path.Replace("{IdTipoMoneda}", idMoneda.ToString());

                var client = new HttpClient { BaseAddress = new Uri(url) };
                var response = client.PostAsync(path, null).Result;
                var result = response.Content.ReadAsStringAsync().Result;
                var ListOrders = JsonConvert.DeserializeObject<List<OrdenesPago>>(result);
                
                var lst = ListOrders.Where(x => x.iCodigoTipoMoneda != idMoneda);

                Assert.IsTrue(lst.Count() == 0);
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }



        }


        [TestMethod]
        public void TestGetSucursalesPorBanco()
        {
            try
            {
                var url = "http://localhost:52960";
                var path = "api/OrdenesPagoApi/GetSucursalesPorBanco?IdBanco={IdBanco}";

                var idBanco = 1;                

                path = path.Replace("{IdBanco}", idBanco.ToString());
                
                var client = new HttpClient { BaseAddress = new Uri(url) };
                var response = client.PostAsync(path, null).Result;
                var result = response.Content.ReadAsStringAsync().Result;
                var ListOrders = JsonConvert.DeserializeObject<List<SucursalesBanco>>(result);
                
                var lst = ListOrders.Where(x => x.iCodigoBanco != idBanco);

                Assert.IsTrue(lst.Count() == 0);
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }



        }



    }
}
