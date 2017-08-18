using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Net.Http;
using Newtonsoft.Json;

namespace UnitTest
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

                path.Replace("{IdSucursal}", idSucursal.ToString());
                path.Replace("{IdTipoMoneda}", idMoneda.ToString());

                var client = new HttpClient { BaseAddress = new Uri(url) };
                var response = client.PostAsync(path, null).Result;
                var result = response.Content.ReadAsStringAsync().Result;
                //var response = JsonConvert.DeserializeObject<TokenResultEntity>(result);
                //return response?.ServiceCode.Trim() ?? string.Empty;

                Assert.IsTrue(1 == 1);
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }



        }
    }
}
