using Dtm.Framework.ClientSites.Web;
using Dtm.Framework.Models;
using System.Collections.Generic;

namespace GLAMN4
{
    public class MvcApplication : ClientSiteApplication
    {
        protected override void OnAppStart()
        {
            DtmContext.PromoCodeRules.Add(new PromoCodeRule("FFF2018", PromoCodeRuleType.AddDiscountValue, "FFF2018", -10.00M, 1));
        }
    }
}