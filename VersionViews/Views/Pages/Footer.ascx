<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

	<footer class="l-footer o-box--none block u-pad @print-only-hide">

		<div class="l-footer__in fn--center u-mar--center">
			<% Html.RenderSnippet("FOOTER-BACKEND"); %>
			<%--
			<a href="index[#ext#]" class="animate logo">
				<img class="animate center-margin responsive-img" src="/images/logos/logo-white.png?appV=[#DtmContext.ApplicationVersion#]" alt="[#Settings.Label.ProductName#]">
			</a>
			<div class="u-mar--vert @x2-mar">
				<%= Html.Partial("GetSocial") %>
			</div>
			--%>
		</div>

		<nav class="nav-header l-footer__in @mv-u-pad--reset fn--center u-mar--center">

			<% Html.RenderSnippet("FOOTER-FRONTEND"); %>
			<%--
			<ul class="@back-only-hide">
				<!-- // Shop -->
				<li>
					<a href="#order" title="[#Settings.Label.ProductName#] | Shop">Shop</a>
				</li>

				<!-- // The Brand -->
				<li>
					<a href="Brand[#ext#]" title="[#Settings.Label.ProductName#] | The Brand">The Brand</a>
				</li>

				<!-- // How To Videos -->
				<li>
					<a href="Videos[#ext#]" title="[#Settings.Label.ProductName#] | How To Videos">How To Videos</a>
				</li>

				<!-- // Press -->
				<li>
					<a href="Press[#ext#]" title="[#Settings.Label.ProductName#] | Press">Press</a>
				</li>

				<!-- // Customer Service -->
				<li>
					<a href="Customer-Service[#ext#]" title="[#Settings.Label.ProductName#] | Customer Service">Customer Service</a>
				</li>

				<!-- // Return Policy -->
				<li>
					<a href="/StaticContent.txt?filename=ReturnPolicy&amp;isSelfContained=true" title="[#Settings.Label.ProductName#] | Return Policy" class="has-fancybox fancybox.ajax">Return Policy</a>
				</li>

				<!-- // Privacy Policy -->
				<li>
					<a href="Privacy-Policy[#ext#]" title="[#Settings.Label.ProductName#] | Privacy Policy">Privacy Policy</a>
				</li>

				<!-- // Security Policy -->
				<li>
					<a href="/StaticContent.txt?filename=SecurityPolicy&amp;isSelfContained=true" title="[#Settings.Label.ProductName#] | Security Policy" class="has-fancybox fancybox.ajax">Security Policy</a>
				</li>

				<!-- // Sitemap -->
			  	<li>
			    	<a href="Sitemap[#ext#]" title="[#Settings.Label.ProductName#] | Site Map">Site Map</a>
			  	</li>

			</ul>

			<p class="u-pad--vert">&copy;[#Partial.Year#] Number 4 Hair.</p>
			--%>
		</nav>

	</footer>




	<%-- // @JS-FOOTER --%>
	<% switch ( DtmContext.Page.IsStartPageType ) { %>

		<% case false: %>


			<% break; %>
		<% default: %>

			<% Html.RenderPartial("Scripts"); %>
			<%-- Html.RenderSnippet("ORDERFORMSCRIPT"); --%>

			<script type="text/javascript">
				var $body = $('body');
				var oav = 1;
				var av = oav;
				var $nav = $('.l-nav');

			    $(document).ready(function () {
			        $('#AcceptOfferButton').bind("click", validateFormOverride);
                    $('#ShippingIsDifferentThanBilling').bind("click", toggleShipping);
                    $("input:radio[name='mainOffer']").bind("change", updateTcTxt);
					registerEvent("CartChange", updateTcTxt);
                    toggleShipping();
                    updateTcTxt();
                });

                function validateFormOverride(e)
                {
                    if (!$("#tc").is(":checked") && $("[data-group-name='mainOffer']").hasClass("is-active"))
                    {
                        _dtm.alert("Please accept terms and conditions.", $('.vse--tc'));
                        return false;
                    } else
                    {
                        return validateForm(e);
                    }
                }

                function updateTcTxt()
                {
                    var threePay = "By checking this box and clicking PROCESS ORDER, I consent to enrollment in the 90-Day Auto Delivery Program. I am electronically signing my order and authorizing you to charge my account $29.99 in 30 days and recurring charges every 30 days until I cancel.";
                    var onePay = "By checking this box and clicking PROCESS ORDER, I consent to enrollment in the 90-Day Auto Delivery Program. I am electronically signing my order and authorizing you to charge my account $79.00 in 90 days and recurring charges every 90 days until I cancel.";
                    if ($("[data-group-name='mainOffer']").hasClass("is-active"))
                    {
                        $("#tcCt").slideDown();
                        if ($("input:radio[name='mainOffer']:checked").val() == "N3PAY") {
                            $("#tcTxt").html(threePay);
                        } else {
                            $("#tcTxt").html(onePay);
                        }
                    } else
                    {
                        $("#tcCt").slideUp();
                    }


                }

				function updateScrollOffset (eflex) {
					var self = typeof eflex.self !== 'undefined' ? eflex.self : eflex;
					self.offset = self.target.get(0).offsetTop + $nav.outerHeight(true);
					self.anchor = $('.set-inertial');
				}

				// event role: when jQuery Eflex Scroll initializes, set anchor point to the inertial container
				$('a[href^="#"]').on('eflex/scroll/onInit', updateScrollOffset);
				$('a[href^="#"]').on('eflex/scroll/onBefore', updateScrollOffset);

				$('html').on('dtm/fwjs', function () {
					_dtm.expressCheckout();

					// when client-side validation triggers an error, scroll to error feedback
					_dtm.callbackAlert = function () {
						$('.vse').eflex({
							type : 'scroll',
							trigger : true,
							onBefore : updateScrollOffset
						});
					};

					// enable header to be fixed while scrolling
					_dtm.swap($('.will-swap-on-scroll'), $('#header'), 'fix-to-top', $('.set-inertial'), function ($anchor) {
						if ( $anchor.get(0).scrollTop > $('#header').outerHeight(true) ) {
							return true;
						} else {
							return false;
						}
					});
				});

				$('html').on('dtm/youtube', function (youtube) {
					_dtm.makeYouTubeResponsive({
						scaleByElement : $('.list--videos li'),
						onAfter : function (self) {
							self.scale.closest('li').addClass('do-video-animate');
							$('.offer__title--load').removeClass('offer__title--loading')
								.find('.offer__title__text').text('Done.');

							setTimeout(function () {
								$('.offer__title--load').addClass('animate-and-fade-out');
							}, 3000);
						}
					});
				});

				$('html').on('dtm/vimeo', function (vimeo) {
					_dtm.makeVimeoResponsive({
						scaleByElement : $('.list--videos li'),
						onAfter : function (self) {
							self.scale.closest('li').addClass('do-video-animate');
						}
					});
				});

				// event role: when clicked, load ajax modal with YouTube player
				$body.on('click', '[data-ajax-video]', function () {
					var $this = $(this);
					var code = $this.data('ajax-code');
					$.post('/StaticContent.txt?filename=Dynamic-Links&isSelfContained=true', { code : code }, function (response) {
						// retrieve the contents within the partial
						var $partial = $($(response).get(2));
						// check if the content contains the ajax keyword
						if ( $partial.hasClass('is-ajax') ) {
							var $modal = $('.set-ajax-video');

							if ( $modal.length === 0 ) {
								$modal = $('<section/>', {
									class : 'set-ajax-video'
								}).appendTo($body);
							}

							if ( $modal.length > 0 ) {
                                $modal.addClass('ajax-is-open');
                                $($modal).fadeIn();
                                $body.addClass('ajax-modal-is-open');

							}

                            $(window).one('ajax/video', function () {
                                $($this).closest('.product').parent().addClass('inlightboxmode');
                                $($this).closest('.inlightboxmode').find("a").attr("data-ajax-close-video", "");
                                $($this).closest('.inlightboxmode').find("a").appendTo($($partial).find(".showbox-inner"));
                                $partial.appendTo($modal);
                                $partial.addClass('fade-ajax set-inertial');
                            });

						}
                    });
				});

				// event role: when CSS animation ends, change ajax modal
				$('body').on('animationend', '.set-ajax-video', function () {
					if ( av === 1 ) {
						$(window).trigger('ajax/video');
					} else {
						av += 1;
					}

					if ( $(this).hasClass('ajax-is-closed') && av === 3 ) {
                        var $modal = $(this);
                        var phClass = 'inlightboxmode';
                        var prod = $($modal).find(".showbox-inner");
                        $(prod).find("a").removeAttr("data-ajax-close-video", "");
                        $($(prod).find("a")).appendTo($('.inlightboxmode'));
                        $('.' + phClass).removeClass(phClass);
                        $(this).removeClass('ajax-is-closed ajax-is-open').find('.is-ajax').remove();
                        av = oav;
					}
					$('[data-code]').removeAttr('style');
				});

				$body.on('click', '[data-ajax-close-video]', function () {
					var $this = $(this);
                    var $modal = $('.set-ajax-video');
                    if ($modal.hasClass('ajax-is-open')) {
						$modal.addClass('ajax-is-closed');
						$('.ajax-modal-is-open').removeClass('ajax-modal-is-open');
                        av += 1;
					}
					if ( !$this.hasClass('nav__item') ) {
						$(this).closest('.row-to-center').css('pointer-events', 'none');
					}
				});

				$body.on('animationend', '.list--videos li', function () {
					$(this).addClass('undo-animation-fill-mode');
				});

				$(window).load(function () {
					var v = 0;

					// photo animation
					$('.will-bounce').each(function (i, fx) {
						var p = 0;

						if ( $('.set-inertial').height() >= $(fx).offset().top ) {
							$(fx).addClass('do-bounce');
						} else {
							_dtm.animateToTargetOnScroll({
								target : $(fx),
								anchor : $('.set-inertial'),
								distance : 2,
								callbackInRange : function (self) {
									if ( p === 0 ) {
										$(fx).addClass('do-bounce');
										p = 1;
									}
								}
							});
						}
					});

					_dtm.showOrderFormOnMobile({
						$form : $('#order'),
						$nav : $('.l-nav--mobile'),
						$anchor : $('.set-inertial'),
						$removeEventsFrom : $('a[rel=#formWrap]')
					});

					$("input[name='OrderType']").on("click", ToggleText);
					ToggleText();

					function ToggleText() {
					    if ($("input:radio[id='otCARD']").is(":checked")) {
					        $("#process-order-text").show();
					    }
					    else {
					        $("#process-order-text").hide();
					    }
					}
				});

				var swapHeaders = function () {
					var $header = $('#header');
					var $nav = $('#nav');
					var $navSection = $('#nav ~ .l-nav');
					var $navContainer = $('.l-nav .l-header__in');
					var $window = $(window);

					var get = {
						setToggleByClick : function ($this) {
							if ( $this.prop('checked') ) {
								$header.appendTo($navContainer);
							} else {
								$header.insertBefore($navSection);
							}
						},

						setToggleByResize : function () {
							if ( $window.width() > 768 && $nav.prop('checked') ) {
								$header.insertBefore($navSection);
							} else if ( $(window).width() < 768 && $nav.prop('checked') ) {
								$header.appendTo($navContainer);
							}
						}
					};

					$window.resize(get.setToggleByResize);
					$nav.on('click', function () {
						get.setToggleByClick($(this));
					});

					return get;
				}

				var getHeader = swapHeaders();

				// when #order link is clicked from the header nav
				$body.on('click', '.l-header__in a[href="#order"], .l-header__in [data-ajax-close-video]', function () {
					$('#nav').prop('checked', false);
					getHeader.setToggleByClick($('#nav'));
				});
			</script>

			<% break; %>

	<% } %>



	<%= Model.FrameworkVersion %>

	<div class="l-controls">
		<% Html.RenderSiteControls(SiteControlLocation.ContentTop); %>
		<% Html.RenderSiteControls(SiteControlLocation.ContentBottom); %>
		<% Html.RenderSiteControls(SiteControlLocation.PageBottom); %>
	</div>
