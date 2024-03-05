<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<% var getCustomerServiceNumber = SettingsManager.ContextSettings["CustomerService.PhoneNumber"]; %>
<% var productName = SettingsManager.ContextSettings["Label.ProductName"]; %>
<div class="c-brand--form col u-vw--40 u-pad @x2-pad" id="form">

    <% using (Html.BeginForm()) { %>

        <%= Html.Partial("ViewSwitchLink") %>
        <div class="vse"><%= Html.ValidationSummary("The following errors have occurred:") %></div>
        <div class="hide" data-vse></div>

		<%-- Html.RenderSnippet("PRODUCTSELECTION"); --%>

        <div class="offer offer--banner">
            <div class="row-to-bottom u-mar--vert @x3-mar">
                <div class="col @sm-u-vw u-mar--bottom @x2-mar">
                    <h4 class="offer__title sans-primary-bold"><%= productName %> 5-Piece Deluxe Collection a 90-Day Auto Delivery Supply.</h4>
                    <h6 class="top-margin @x2-mar highlight-container">Kit Includes: <span class="sans-primary-book">Voluming Shampoo, Hydrating Condition, Super Comb Prep &amp; Protect, Blow Dry Lotion and Reconstruction Masque.</span></h6>
                </div>
                <div class="banner__bg col @sm-u-vw u-pad--left @sm-u-pad--reset @x2-pad">
                    <div class="row-to-center center-margin">
                        <div class="col">
                            <div class="gfx-burst--save"></div>
                        </div>
                        <div class="col">
                            <div class="gfx-burst--mbg"></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row u-vw--100 u-mar--vert @x3-mar">
                <div class="col @sm-u-vw offer__shot">
                    <div class="banner__gfx col @sm-u-vw u-pad--left @sm-u-pad--reset @x2-pad">
                        <div class="row-to-center center-margin">
                            <div class="col">
                                <img src="/images/graphics/save-burst.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Save $50">
                            </div>
                            <div class="col">
                                <img src="/images/graphics/mbg-burst.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Money Back Guarantee">
                            </div>
                        </div>
                    </div>
                    <img src="/images/products/offer-kit.jpg?appV=[#DtmContext.ApplicationVersion#]" alt="Offer Kit">
                </div>
                <div class="col @sm-u-vw offer__desc sans-primary-book u-pad--left @x2-pad @sm-u-pad--reset u-mar--top @x2-mar">
                    <h5 class="color-secondary sans-primary-bold uppercase offer__title">Only Available In Salons And Now Directly Available To You!</h5>
                    <hr class="hr">
                    <em class="sans-primary-bold">Price: </em><em class="color-price">Retail Value of <span class="linethrough-text">$129.50</span></em>

                    <!-- // Option -->
                    <label class="offer__option row-to-center">
                        <div class="col left-right-padding">
                            <input type="radio" name="mainOffer" id="threePay" value="N3PAY" checked />
                        </div>
                        <div class="col">
                            <span class="p offer__option__desc">3 monthly payments of $29.99 w/<em class="color-price sans-primary-bold uppercase">free shipping*</em></span>
                        </div>
                    </label>

                    <!-- // Option -->
                    <label class="offer__option row-to-center">
                        <div class="col left-right-padding">
                            <input type="radio" name="mainOffer" id="onePay" value="N1PAY" />
                        </div>
                        <div class="col">
                            <span class="p offer__option__desc">1 payment every 3 months of $79.00 w/<em class="color-price sans-primary-bold uppercase">free shipping*</em></span>
                        </div>
                    </label>

                    <div class="u-pad--vert">
                        <p>3 months after your first order is shipped, and then every three months thereafter, you will be sent a new 5 piece 90-Day Supply of <%= productName %>. Each shipment will be charged to the card you provide today in 3 monthly payments $29.99 or 1 payment of $79.00 PLUS Free SHIPPING unless you call to cancel. There is no commitment and no minimum to buy. Please note exact shipment times may vary. To customize or cancel future shipments and charges, call customer service at <%= getCustomerServiceNumber %>.</p>
                    </div>

                    <a href="javascript:updateTcTxt()" data-group-name="mainOffer" data-code-toggle="true" class="order-button">Add To Cart</a>
                </div>
            </div>
        </div>


        <div class="offer offer--single sans-primary-book center-text">
            <h5 class="offer__title offer__title--divider uppercase color-light">
                <span class="offer__title__text u-pad--horz @x2-pad">Purchase individually</span>
            </h5>
        </div>

        <%= Html.Partial("Additionals") %>



        <%= Html.Partial("OrderFormReviewTable", Model) %>

        <%-- // Indicate Requires Field --%>
        <p data-required class="indicate u-mar--bottom fn--center"><%= LabelsManager.Labels["RequiredFieldDisclaimer"] %></p>

        <%-- // BEGIN #paymentForm --%>
        <fieldset class="steps c-brand--form__fieldset" id="paymentForm">

            <%-- // @PAYMENT HEADLINE --%>
            <div class="c-brand--form__legend u-vw--100" tabindex="0">
                <h3 class="c-brand--form__headline">
					<b class="uppercase"><%= LabelsManager.Labels["PaymentStep"] %></b>
					<%= LabelsManager.Labels["PaymentHeadline"] %>
				</h3>
            </div>

            <ul class="c-brand--form__list @mv-u-pad--vert">

                <%-- // @PAYMENT ICONS --%>
                <li class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label class="c-brand--form__cc--label o-grid__col @xs-u-vw--10 fn--right"></label>
                    <div id="cc" class="c-brand--form__field o-grid__col @xs-u-bs--reset @xs-u-vw--100"></div>
                </li>

                <%-- // @PAYMENT TYPE --%>
                <li id="CardTypeCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label for="CardType" data-required class="c-brand--form__label o-grid__col @xs-u-vw--10 fn--right">Type</label>
                    <%= Html.DropDownList("CardType", new[]
                            {
                              new SelectListItem { Text = "Visa", Value = "V"},
                              new SelectListItem { Text = "Mastercard", Value = "M"},
                              new SelectListItem { Text = "Discover", Value = "D"},
                              new SelectListItem { Text = "American Express", Value= "AX"}
						  }, new { @class = "c-brand--form__select o-box o-shadow u-vw--100 fx--animate" })
                    %>
                </li>

                <%-- // @PAYMENT NUMBER --%>
                <li id="CardNumberCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label id="CardNumberLabel" for="CardNumber" data-required class="c-brand--form__label o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["CardNumber"] %></label>
                    <input id="CardNumber" name="CardNumber" type="tel" value="<%= ViewData["CardNumber"] %>" placeholder="<%= LabelsManager.Labels["CardNumberPlaceholder"] %>" aria-labelledby="CardNumberLabel" aria-required="true" class="c-brand--form__input o-grid__col o-box o-shadow @xs-u-vw--100 fx--animate">
                </li>

                <%-- // @PAYMENT EXP. DATE --%>
                <li id="CardExpirationCt" class="o-grid--vert--center u-vw--100 c-brand--form__item">
                    <label for="CardExpirationMonth" data-required class="o-grid__col @xs-u-vw--10 fn--right c-brand--form__label"><%= LabelsManager.Labels["ExpirationDate"] %></label>
                    <div class="c-brand--form__field o-grid @xs-u-vw--100 u-bs--reset">
                        <div class="o-grid__col u-vw--50 u-pad--right">
                            <%= Html.CardExpirationMonth("CardExpirationMonth", new { @class = "c-brand--form__select o-box o-shadow u-vw--100 fx--animate aria-labelledby aria-required" }) %>
                        </div>
                        <div class="o-grid__col u-vw--50 u-pad--left">
                            <%= Html.NumericDropDown("CardExpirationYear", DateTime.Now.Year, DateTime.Now.Year + 10, ViewData["CardExpirationYear"], new { @class = "c-brand--form__select o-box o-shadow u-vw--100 fx--animate aria-labelledby aria-required" }) %>
                        </div>
                    </div>
                </li>

                <%-- // @PAYMENT CVV2 --%>
                <li id="CardCvv2Ct" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label id="CardCvv2Label" for="CardCvv2" data-required class="c-brand--form__label o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["CVV2"] %></label>
                    <div class="c-brand--form__field o-grid @xs-u-vw--100 u-bs--reset">
                        <div class="o-grid__col u-vw--50 u-bs--reset u-pad--right">
                            <input id="CardCvv2" name="CardCvv2" type="tel" value="<%= ViewData["CardCvv2"] %>" maxlength="5" placeholder="<%= LabelsManager.Labels["CVV2Placeholder"] %>" aria-labelledby="CardCvv2Label" aria-required="true" class="c-brand--form__input o-grid__col o-box o-shadow @xs-u-vw--100 fx--animate">
                        </div>
                        <div class="o-grid__col u-vw--50 u-bs--reset u-pad--left">
                            <a href="<%= LabelsManager.Labels["CVV2DisclaimerLink"] %>" title="<%= LabelsManager.Labels["CVV2DisclaimerLinkTitle"] %>" id="cvv2" class="c-brand--form__hint o-grid__col @xs-u-vw--100 u-pad u-push--left has-fancybox fancybox.ajax"><%= LabelsManager.Labels["CVV2Disclaimer"] %></a>
                        </div>
                    </div>
                </li>

            </ul>
        </fieldset>
        <%-- // END #paymentForm --%>

        <%-- // BEGIN #billingInformation --%>
        <fieldset class="steps c-brand--form__fieldset" id="billingInformation">

            <%-- // @BILLING HEADLINE --%>
            <div class="c-brand--form__legend u-vw--100" tabindex="0">
                <h3 class="c-brand--form__headline">
					<b class="uppercase"><%= LabelsManager.Labels["BillingStep"] %></b>
					<%= LabelsManager.Labels["BillingHeadline"] %>
				</h3>
            </div>

            <ul class="c-brand--form__list @mv-u-pad--vert">

                <%-- // @BILLING FULL NAME --%>
                <li id="BillingFullNameCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label id="BillingFullNameLabel" for="BillingFullName" data-required class="c-brand--form__label o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["FullNameLabel"] %></label>
                    <input id="BillingFullName" maxlength="50" name="BillingFullName" type="text" value="<%= ViewData["BillingFullName"] %>" placeholder="<%= LabelsManager.Labels["FullNamePlaceholder"] %>" aria-labelledby="BillingFullNameLabel" aria-required="true" class="c-brand--form__input o-grid__col o-box o-shadow @xs-u-vw--100 fx--animate">
               </li>

                <%-- // @BILLING STREET --%>
                <li id="BillingStreetCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label id="BillingStreetLabel" for="BillingStreet" data-required class="c-brand--form__label o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["StreetLabel"] %></label>
                    <div class=" @xs-u-bs--reset fld">
                        <input id="BillingStreet" name="BillingStreet" type="text" value="<%= ViewData["BillingStreet"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["StreetPlaceholder"] %>" aria-labelledby="BillingStreetLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                    </div>
                </li>

                <%-- // @BILLING STREET 2 --%>
                <li id="BillingStreet2Ct" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label id="BillingStreet2Label" for="BillingStreet2" class="c-brand--form__label o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["Street2Label"] %></label>
                    <input id="BillingStreet2" name="BillingStreet2" type="text" value="<%= ViewData["BillingStreet2"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["Street2Placeholder"] %>" aria-labelledby="BillingStreet2Label" aria-required="false" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                </li>

                <%-- // @BILLING CITY --%>
                <li id="BillingCityCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label id="BillingCityLabel" for="BillingCity" data-required class="c-brand--form__label o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["CityLabel"] %></label>
                    <input id="BillingCity" name="BillingCity" type="text" value="<%= ViewData["BillingCity"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["CityPlaceholder"] %>" aria-labelledby="BillingCityLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                </li>

                <%-- // @BILLING COUNTRY --%>
                <li id="BillingCountryCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label id="BillingCountryLabel" for="BillingCountry" data-required class="c-brand--form__label o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["CountryLabel"] %></label>
                    <%= Html.DropDownListFor(m => m.BillingCountry, new SelectList(Model.Countries, "CountryCode", "CountryName"), "*Choose Country", new { @class = "c-brand--form__select o-box o-shadow @xs-u-vw--100 fx--animate aria-labelledby aria-required" }) %>
                </li>

                <%-- // @BILLING STATE --%>
                <li id="BillingStateCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label id="BillingStateLabel" for="BillingState" data-required class="c-brand--form__label o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["StateLabel"] %></label>
                    <%= Html.DropDownListFor(m => m.BillingState, new SelectList(Model.States, "StateCode", "StateName"),"*Choose State", new { @class = "c-brand--form__select o-box o-shadow @xs-u-vw--100 fx--animate aria-labelledby aria-required" }) %>
                </li>

                <%-- // @BILLING ZIP --%>
                <li id="BillingZipCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label id="BillingZipLabel" for="BillingZip" data-required class="c-brand--form__label o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["ZipLabel"] %></label>
                    <input id="BillingZip" name="BillingZip" type="tel" value="<%= ViewData["BillingZip"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["ZipPlaceholder"] %>" aria-labelledby="BillingZipLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                </li>

                <%-- // @PHONE --%>
                <li id="PhoneCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label id="PhoneLabel" for="Phone" data-required class="c-brand--form__label o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["PhoneLabel"] %></label>
                    <input id="Phone" name="Phone" type="tel" value="<%= ViewData["Phone"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["PhonePlaceholder"] %>" aria-labelledby="PhoneLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                </li>

                <%-- // @EMAIL --%>
                <li id="EmailCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label id="EmailLabel" for="Email" data-required class="c-brand--form__label o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["EmailLabel"] %></label>
                    <input id="Email" name="Email" type="email" value="<%= ViewData["Email"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["EmailPlaceholder"] %>" aria-labelledby="EmailLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                </li>

                <% if ( SettingsManager.ContextSettings["OrderFormReview.ShowPrivacyPolicy", false] ) { %>
				<%-- // @PRIVACY POLICY --%>
				<li id="PrivacyCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
					<a href="<%= SettingsManager.ContextSettings["OrderFormReview.PrivacyPolicyLink"] %><%= Model.Extension %>" title="<%= LabelsManager.Labels["PrivacyPolicyText"] %>">
						<%= LabelsManager.Labels["PrivacyPolicyText"] %>
					</a>
				</li>
                <% } %>

            </ul>

        </fieldset>
        <%-- // END #billingInformation --%>


        <%-- // BEGIN #ShippingIsSame --%>
        <label id="ShippingIsSame" for="ShippingIsDifferentThanBilling" class="o-grid--vert--center u-mar--bottom">
            <div class="o-grid__col u-pad"><%= Html.CheckBoxFor(m => m.ShippingIsDifferentThanBilling) %></div>
            <p class="o-grid__col u-pad"><%= LabelsManager.Labels["IsShippingDifferentFromBillingDisclaimer"] %></p>
        </label>
        <%-- // END #ShippingIsSame --%>


        <%-- // BEGIN #shippingInformation --%>
        <fieldset class="steps c-brand--form__fieldset @mv-u-pad--top @dv-u-pad--reset" id="shippingInformation">

            <%-- // @SHIPPING HEADLINE --%>
            <div class="c-brand--form__legend u-vw--100">
                <h3 class="c-brand--form__headline">
					<b class="uppercase"><%= LabelsManager.Labels["ShippingStep"] %></b>
					<%= LabelsManager.Labels["ShippingHeadline"] %>
				</h3>
            </div>

            <ul class="c-brand--form__list @mv-u-pad--vert">

                <%-- // @SHIPPING FULL NAME --%>
               <li id="ShippingFullNameCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label id="ShippingFullNameLabel" for="ShippingFullName" data-required class="c-brand--form__label o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["FullNameLabel"] %></label>
                    <input id="ShippingFullName" maxlength="50" name="ShippingFullName" type="text" value="<%= ViewData["ShippingFullName"] %>" placeholder="<%= LabelsManager.Labels["FullNamePlaceholder"] %>" aria-labelledby="ShippingFullNameLabel" aria-required="true" class="c-brand--form__input o-grid__col o-box o-shadow @xs-u-vw--100 fx--animate">
               </li>

                <%-- // @SHIPPING STREET --%>
                <li id="ShippingStreetCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label id="ShippingStreetLabel" for="ShippingStreet" data-required class="c-brand--form__label o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["StreetLabel"] %></label>
                    <input id="ShippingStreet" name="ShippingStreet" type="text" value="<%= ViewData["ShippingStreet"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["AddressPlaceholder"] %>" aria-labelledby="ShippingStreetLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                </li>

                <%-- // @SHIPPING STREET 2 --%>
                <li id="ShippingStreetCt2" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label id="ShippingStreet2Label" for="ShippingStreet2" class="c-brand--form__label o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["Street2Label"] %></label>
                    <input id="ShippingStreet2" name="ShippingStreet2" type="text" value="<%= ViewData["ShippingStreet2"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["Street2Placeholder"] %>" aria-labelledby="ShippingStreet2Label" aria-required="false" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                </li>

                <%-- // @SHIPPING CITY --%>
                <li id="ShippingCityCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label id="ShippingCityLabel" for="ShippingCity" data-required class="c-brand--form__label o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["CityLabel"] %></label>
                    <input id="ShippingCity" name="ShippingCity" type="text" value="<%= ViewData["ShippingCity"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["CityPlaceholder"] %>" aria-labelledby="ShippingCityLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                </li>

                <%-- // @SHIPPING COUNTRY --%>
                <li id="ShippingCountryCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label for="ShippingCountry" data-required class="c-brand--form__label o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["CountryLabel"] %></label>
                    <%= Html.DropDownListFor(m => m.ShippingCountry, new SelectList(Model.Countries, "CountryCode", "CountryName"), LabelsManager.Labels["CountryPlaceholder"], new { @class = "c-brand--form__select o-grid--col o-box o-shadow @xs-u-vw--100 fx--animate aria-labelledby aria-required" })%>
                </li>

                <%-- // @SHIPPING STATE --%>
                <li id="ShippingStateCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label for="ShippingState" data-required class="c-brand--form__label o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["StateLabel"] %></label>
                    <%= Html.DropDownListFor(m => m.ShippingState, new SelectList(Model.States, "StateCode", "StateName"), LabelsManager.Labels["StatePlaceholder"], new { @class = "c-brand--form__select o-grid--col o-box o-shadow @xs-u-vw--100 fx--animate aria-labelledby aria-required" })%>
                </li>

                <%-- // @SHIPPING ZIP --%>
                <li id="ShippingZipCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label id="ShippingZipLabel" for="ShippingZip" data-required class="c-brand--form__label o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["ZipLabel"] %></label>
                    <input id="ShippingZip" name="ShippingZip" type="tel" value="<%= ViewData["ShippingZip"] %>" maxlength="10" placeholder="<%= LabelsManager.Labels["ZipPlaceholder"] %>" aria-labelledby="ShippingZipLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                </li>

            </ul>

        </fieldset>
        <%-- // END #shippingInformation --%>

        <%-- // BEGIN #calltoAction --%>
        <fieldset class="c-brand--form__fieldset c-brand--form__fieldset--borderless" id="calltoAction">

            <ul class="c-brand--form__list @mv-u-pad--vert @dv-u-pad--horz">
                <li id="tcCt" class="hide c-brand--form__item o-grid--vert--center u-vw--100 u-mar--top">
                    <div class="container">
                        <div class="vse--tc"></div>
                        <label for="tc" class="row">
                            <div class="col">
                                <input data-eflex="draw" type="checkbox" name="tc" id="tc">
                            </div>
                            <div class="col u-pad--left bold">
                                <span id="tcTxt">By checking this box and clicking PROCESS ORDER, I consent to enrollment in the 90-Day Auto Delivery Program. I am electronically signing my order and authorizing you to charge my account $29.99 in 30 days and recurring charges every 30 days until I cancel.</span>
                            </div>
                        </label>
                    </div>
                </li>
                <%-- // @PROCESS ORDER BUTTON --%>
                <li class="c-brand--form__item o-grid--vert--center u-vw--100 u-mar--top">
                    <button id="AcceptOfferButton" name="acceptOffer" type="submit" class="order-button u-mar--center">Process Order</button>
                </li>

                <%-- // @PROCESS ORDER TEXT --%>
                <li class="c-brand--form__item c-brand--form__submission o-grid--vert--center u-vw--100 fn--center" tabindex="0">
					<p><%= LabelsManager.Labels["SubmissionDisclaimer"] %></p>
                    <% Html.RenderSiteControl("InsureShipCheckbox"); %>
                </li>

                <%-- // @SSL BADGE --%>
                <li class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <img src="/shared/images/PositiveSSL_tl_trans.png?appV=<%= DtmContext.ApplicationVersion %>" alt="SSL" class="u-mar--center u-mar--horz" />
                </li>

            </ul>

        </fieldset>
        <%-- // END #calltoAction --%>

    <% } %>

</div>
