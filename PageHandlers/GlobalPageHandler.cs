using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web.Mvc;
using Dtm.Framework.ClientSites.Web;
using Dtm.Framework.Models;
using Dtm.Framework.Models.Ecommerce;
using Dtm.Framework.Services.DtmApi;


namespace GLAMN4.PageHandlers
{
    public class GlobalPageHandler : PageHandler
    {

        #region " Overrides... "

        public override void PostValidate(ModelStateDictionary modelState)
        {
            if (DtmContext.Page.IsStartPageType)
            {
                var Qty = DtmContext.ShoppingCart.Where(sc => sc.ProductCode == "N3PAY" || sc.ProductCode == "N1PAY").Sum(sc => sc.Quantity);
                var tc = Form["tc"] ?? "";
                if (string.IsNullOrEmpty(tc) && Qty > 0)
                {
                    modelState.AddModelError("Form", "Please accept terms and conditions");
                }

                var orderTotal = DtmContext.ShoppingCart.Total - DtmContext.ShoppingCart["FFF2018"].Price;
                if (PostData.Where(i => i.Key == "FFF2018").Select(j => j.Value).Sum() > 0 && orderTotal < 50M)
                {
                    OrderManager.SetProductQuantity("FFF2018", 0);
                    ModelState.AddModelError("Form", "Promo code cannot be applied to orders less than $50.");
                }
            }
        }

        public override void OnProcessPromoCode(SafeDictionary postData)
        {
            var orderTotal = DtmContext.ShoppingCart.Total - DtmContext.ShoppingCart["FFF2018"].Price;
            if (DtmContext.ShoppingCart["FFF2018"].Quantity > 0 && orderTotal < 50M)
            {
                OrderManager.SetProductQuantity("FFF2018", 0);
                ModelState.AddModelError("Form", "Promo code cannot be applied to orders less than $50.");
            }
        }

        public override void PostProcessPageActions()
        {
            //Checking for the pages code based on the main order pages array on line ten.
            if (DtmContext.Page.IsStartPageType)
            {
                Trace.WriteLine("Processing post page actions...");

                //TODO: Update any post page actions here, use the templates from bellow

                //////***************************** WORKING WITH MVC Request Form ************************
                //////***************************************************************************************

                //string cbxChecked;
                //if (((object)(Form["cbxSelectProduct"])) == null)
                //    cbxChecked = "false";
                //else
                //    cbxChecked = "true";

                //if (cbxChecked == "true")
                //{
                //        OrderManager.UpgradeProduct("SKU1", "SKU3");              
                //}

                ////**************** SHIPPING RULES FOR NON CONTIGUOUS STATES AND CANADA ******************
                ////***************************************************************************************

                ////Creating a list of Non Contiguous States. 
                //IList<string> ExtraShippingStates = StateCodes.NonContiguousStates;

                //if (Order.ShippingCountry == "CAN" || ExtraShippingStates.Any(s => s == Order.ShippingState))
                //{
                //    OrderManager.SetProductQuantity("ADDSHIP", 1);
                //}

                ////***************************** SETTING PRODUCT QUANTITY ********************************
                ////***************************************************************************************

                //OrderManager.SetProductQuantity("SKURUSH", 1);
                //OrderManager.SetProductQuantity("SKU", Order.Items["SKUITEM"].Quantity);

                ////*********************************** UPGRADING SKU ************************************
                ////***************************************************************************************

                //OrderManager.UpgradeProduct("SKU1", "SKU2");
                //OrderManager.UpgradeProduct("SKU3", "SKU4");
                //OrderManager.UpgradeProduct("SKU5", "SKU6");

                ////******************************* UPGRADING MULTIPLE SKUS *******************************
                ////***************************************************************************************

                //OrderManager.UpgradeProducts(new string[] { "SKU1", "SKU2" }, "NEWSKU3");
                //OrderManager.UpgradeProducts(new string[] { "SKU4", "SKU5" }, "NEWSKU6");

                ////*********************************** REPLACING SKUS ************************************
                ////***************************************************************************************

                //OrderManager.ReplaceProducts(new string[] { "SKU1", "SKU2" }, "SKU3", 2);
                //OrderManager.ReplaceProducts(new string[] { "SKU4", "SKU5" }, "SKU6", Order.Items["SKUITEM"].Quantity);

                ////********************************** WORKING WITH TEXTBOXES ****************************
                ////***************************************************************************************

                //System.Web.Mvc.FormCollection form = new System.Web.Mvc.FormCollection();

                ////Use the formcollection to get the  value for a checkbox or radio button.            
                //if (form["ActionCode3"].Trim().ToUpper() == "FREEGIFT")
                //    OrderManager.SetProductQuantity("SKUPROMO", 1);

                ////***************************************************************************************

            }
        }

        #endregion
    }
}
