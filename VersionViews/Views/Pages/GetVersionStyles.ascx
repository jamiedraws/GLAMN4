<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<% Html.RenderSnippet("STYLE-BLOCK-HEAD"); %>
<%-- // BEGIN SNIPPET @STYLE-BLOCK-HEAD

<style>
/* Secret Extensions Salon Edition | Cascading Stylesheet | Master Version

	@Layout

 * --------------------------------------------------------------------- */
	/* Canvas | @Layout */
	/* set the min-width of the page */
	.dtm__in .l-outer,
	.dtm__in .l-header,
	.dtm__in .l-footer {
		min-width: 1px;
		max-width: 100%;
	}

	/* set the max-width of the page */
	.dtm__in--dv .l-header__in,
	.dtm--subpage .dtm__in--dv #content_top > .l-outer__section,
	.\@b .dtm__in--dv .l-outer__in,
	.dtm__in--dv .l-section__in,
	.dtm__in--dv .l-footer__in {
		max-width: 1300px;
	}

	.dtm__in .l-header__in,
	.dtm__in .l-outer__in,
	.dtm__in .l-footer__in,
	.dtm__in #header {
		width: auto;
		margin: auto;
	}

	.dtm__in--dv .l-footer {
		min-height: 220px;
	}

	.dtm__in--dv .l-section__in {
		margin: auto;
	}

	.dtm__in--mv #form.c-brand--form {
		padding: 0;
		border-style: none;
	}

	.dtm .logo {
		display: inline-block;
	}

	/* set the padding of the page */
	.dtm__in--dv .l-outer__in {
		padding: 0.1em;
	}

	/* set the border style of header / midline sections */
	.dtm__in--dv .l-header,
	.dtm__in--dv .o-box--banner {
		border: none;
	}

	/* sets the border width of the header section */
	.dtm__in--dv .l-header {
		border-width: 0 0 3px;
	}

	/* set the border width of the midline section */
	.dtm__in--dv .o-box--banner {
		border-width: 3px 0;
	}

	/* set minimum width for the social media icons */
	.l-header__soc {
		min-width: 120px;
	}

	@media all and ( min-width: 769px ) {
		.l-header__soc__in {
			float: right;
		}
	}

	/* Set the color of the mobile order now button */
	.dtm .c-brand .order-button {
		background: #f042a1; color: white; text-transform: uppercase;
		border: none; border-radius: 0; box-shadow: 0 2px 5px rgba(0,0,0,0.35);
		font: 25px/1 'Futura Book', sans-serif;
		position: relative;
	}

		.will-animate-image {
			position: relative;
		}

		.dtm .order-button:before,
		.will-animate-image:before {
			display: block;
		    content: '';
		    position: absolute;
		    width: 100%; height: 100%;
		    left: -1rem; top: 0; right: -1rem; bottom: 0;
		    margin: auto;  padding: 0.5rem;
		    border: 2px solid transparent;
			transition: all 200ms ease-out;
		}

		.will-animate-thumb {
			display: inline-block;
			border: 2px solid transparent;
			transition: all 200ms ease-out;
		}

		.will-animate-thumb:hover {
			border-color: #632cab;
			cursor: pointer;
		}

		.dtm .order-button:hover:before {
			border-color: #f042a1;
		}

		.dtm .order-button.is-active {
			background: #E91E63;
		}

		.dtm .order-button.is-active:hover:before {
			border-color: #E91E63;
		}

		.will-animate-image:hover:before {
			border-color: #632cab;
		}

	.dtm--sitemap .article--content ul {
		margin-left: 2rem;
	}



	/*	Font Size
		@Desc: Set the font size for headings, paragraphs, etc.
	 * --------------------------------------------------------------------- */
	h1, .h1 {
		font-size: 50px;
	}

	h2, .h2 {
		font-size: 40px;
	}

	h3, .h3 {
		font-size: 35px;
	}

	h4, .h4 {
		font-size: 30px;
	}

	h5, .h5 {
		font-size: 23px; line-height: 1.5;
	}

	h6, .h6  {
		font-size: 21px;
	}

	body, .p, .h7  {
		font-size: 18px;
	}

	.content__title, .article--content > h2 {
		font-size: 3rem;
	}

	.content__headline {
		font-size: 2.5rem;
		line-height: 1.5;
	}

	.article--content .offer__title {
		line-height: 1.25;
	}

	@media all and ( min-width: 321px ) and ( max-width: 530px ) {
		.article--content .offer__title__text {
			font-size: 6vw;
		}
	}

	@media all and ( max-width: 320px ) {
		.article--content .offer__title__text {
			font-size: 2.15rem;
		}
	}

	.article--content,
	.article--content p {
		font-size: 1.65rem;
    	line-height: 1.875;
	}

	@media all and ( max-width: 530px ) {
		.article--content,
		.article--content p {
			font-size: 1.5rem;
		}

		.content__headline {
			font-size: 2rem;
		}
	}

	.blockquote {
		line-height: 1.45;
	}

	.offer--banner .offer__title {
		line-height: 1.25;
	}

	.offer--banner .offer__desc {
		line-height: 2;
	}

	.linethrough-text {
		text-decoration: line-through;
	}

	@media all and ( min-width: 1161px ) and ( max-width: 1260px ) {
		.desc__title {
			font-size: 3vw;
		}
	}

	@media all and ( max-width: 840px ) {
		.desc__title {
			font-size: 4.5vw;
		}
	}

	@media all and ( max-width: 700px ) {
		.desc__content .h6,
		.desc__content .h5,
		.desc__content .fb__list li {
			font-size: 1em;
		}

		.midline__title {
			font-size: 5vw;
		}

		.list--logos li {
			width: 25%;
		}
	}

	@media all and ( max-width: 500px ) {
		.ig__title {
			font-size: 7.5vw;
		}
	}

	@media all and ( max-width: 440px ) {
		.desc__title {
			text-align: center;
			font-size: 8vw;
		}

			.desc__title .highlight-container {
				margin-bottom: 1rem;
			}
	}

	@media all and ( max-width: 600px ) {
		.offer--banner .offer__title {
			font-size: 4vw;
		}

		.offer--banner .highlight-container {
			font-size: 3.75vw;
		}
	}

	@media all and ( min-width: 531px ) and ( max-width: 768px ) {
		.option .option__desc {
			font-size: 2vw;
		}

		.dtm .option .order-button {
			font-size: 3vw;
		}
	}

	@media all and ( max-width: 530px ) {
		.option .option__item {
			width: 50%;
			padding: 0 0.5rem 3rem;
		}

		.option .option__desc {
			font-size: 3.25vw;
		}

		.dtm .option .order-button {
			font-size: 4vw;
		}
	}

	@media all and ( max-width: 470px ) {
		.offer .offer__option .offer__option__desc {
			font-size: 3vw;
		}
	}

	@media all and ( max-width: 400px ) {
		.offer__title {
			font-size: 5.5vw;
		}
	}


	/*	@Font Family
		@Desc: Set the font families
	 * --------------------------------------------------------------------- */
	body {
		font-family: Helvetica, sans-serif;
	}

	.sans-primary-book, .nav-header, .l-nav--mobile .flat-button {
		font-family: 'Futura Book', sans-serif;
	}

	.sans-primary-light {
		font-family: 'Futura Light', sans-serif;
	}

	.sans-primary-bold, .highlight-container, .nav__cart, .article--content > h2 {
		font-family: 'Futura Bold', sans-serif;
	}

	.sans-secondary-book, .article--content p {
		font-family: 'Gotham Book', sans-serif;
	}


	/*	@IG Section
	 * --------------------------------------------------------------------- */
	@media all and ( min-width: 991px ) {
		.ig--list {
			white-space: nowrap;
			overflow-x: scroll;
		}
	}

	@media all and ( max-width: 990px ) {
		.ig--list {
			display: table;
			text-align: center;
		}

		.ig--list li {
			width: 33%;
			padding: 0;
		}
	}


	/*	@Lists
	 * --------------------------------------------------------------------- */
	.fb__list li:before {
		display: block;
		content: '';
		position: absolute;
		top: 5px;
		left: -1em;
		width: 8px; height: 8px;
		border-radius: 100%;
		background: #632cab;
	}

	.fb__list li {
		list-style: none;
		position: relative;
		font-size: 26px;
		padding-bottom: 0.5em;
	}

		.fb__list li:last-child {
			padding: 0;
		}


	.list--logos li {
		padding: 8px;
	}

	.list--videos li {
		padding: 2rem;
		margin-bottom: 1rem;
	}

	.list--videos .content__headline {
		margin-bottom: 1rem;
	}

	.list--images li {
		padding: 2rem;
	}

		@media all and ( max-width: 800px ) {
			.dtm .list--images li {
				width: 50%;
			}
		}


	/*	@Sections
	 * --------------------------------------------------------------------- */
	.midline__title {
		min-width: 190px;
	}

	@media all and ( max-width: 1160px ) {
		.dtm .desc__content {
			display: block;
			width: 100%;
		}
	}

	.article--content p {
		margin-bottom: 1.5rem;
	}

		.article--content p:last-child {
			margin-bottom: 0;
		}

		#content .subpage-text-nav {
			display: block;
		}


	/*	@Stars
	 * --------------------------------------------------------------------- */
	.list--stars {
		color: #f042a1;
		font-size: 30px;
	}

		.list--stars .list__star {
			display: inline-block;
			vertical-align: middle;
			padding: 0;
		}


	/*	@Offer
	 * --------------------------------------------------------------------- */
	.offer--banner .offer__shot {
		width: 400px;
	}

	.offer__title--divider {
		position: relative;
	}

	.offer__title--divider:before,
	.offer__title--hover .offer__title--divider:after,
	.offer__title--load .offer__title--divider:after {
		display: block; content: '';
		width: 100%; height: 2px; background: #cdcbcb;
		position: absolute; top: 0; bottom: 0; margin: auto;
	}

	.offer__title--hover .offer__title--divider:after,
	.offer__title--load .offer__title--divider:after {
		background: #642daa;
	    transform: scaleX(0);
	    transform-origin: left;
	}

	.offer__title--hover .offer__title--divider:after,
	.offer__title--load .offer__title--divider:after,
	.offer__title--hover .offer__title__text,
	.offer__title--load .offer__title__text {
		transition: all 300ms ease-out;
	}

	.offer__title--hover:hover .offer__title--divider:after {
		transform: scaleX(1);
	}

	.offer__title--hover:hover .offer__title__text {
		color: #642daa;
	}

	.offer__title--loading .offer__title--divider:after {
		animation: loadingDivider 4s cubic-bezier(1, 0, 0, 1) infinite;
	}

	.offer__title--loading .offer__title__text {
		/* animation: loadingText 4s cubic-bezier(1, 0, 0, 1) infinite; */
	}

	@keyframes loadingText {
		0% {
			color: #642daa;
		}
		100% {
			color: #f042a1;
		}
	}

	@keyframes loadingDivider {
		0% {
			transform: scaleX(0);
			transform-origin: left;
			background: #642daa;
		}
		50% {
			transform: scaleX(1);
			transform-origin: left;
		}
		51% {
			transform: scaleX(1);
			transform-origin: right;
		}
		100% {
			transform: scaleX(0);
			transform-origin: right;
			background: #f042a1;
		}
	}

	.offer__title__text {
		background: white;
		display: inline-block;
		position: relative;
		z-index: 2;
	}

	@media all and ( max-width: 768px ) {
		.option .option__item {
			padding: 1rem 0.25rem;
		}
	}


/* --------------------------------------------------------------------- *

	@Model

 * --------------------------------------------------------------------- */
	 /*	@Nav
	  * --------------------------------------------------------------------- */
	.nav-header {
		list-style: none;
	}

	.nav-header li {
		display: inline-block;
		vertical-align: middle;
		padding: 0; margin-left: -4px;
	}

		.nav-header li:after {
			display: inline-block; content: '/';
		}

		.nav-header li:last-child:after {
			display: none;
		}

	.nav-header a {
		display: inline-block;
		padding: 10px;
		text-decoration: none;
		text-transform: uppercase;
		font-size: 12px;
	}

	.nav-header a:hover {
		text-decoration: underline;
	}

		.nav-header a:before,
		.new-btns .bounce--up:before {
			background: #ff88e4;
		}

	.l-header .nav-header a {
		padding: 20px 25px;
	}

	.dtm .l-header.fix-to-top {
		position: fixed; z-index: 100; top: 0;
	}

	.l-header.fix-to-top .logo-wrap {
		padding: 3px 0;
	}

	.l-header.fix-to-top .logo img {
		transform: scale(0.75);
		image-rendering: -moz-crisp-edges;
		image-rendering: -o-crisp-edges;
		image-rendering: -webkit-optimize-contrast;
		image-rendering: crisp-edges;
		-ms-interpolation-mode: nearest-neighbor;
	}

	.l-header .will-show-on-swap {
		display: none; width: 45px;
	}

		.l-header .will-show-on-swap a {
			padding: 5px;
		}

		.l-header .will-show-on-swap:after {
			display: none;
		}

	.fix-to-top .will-show-on-swap {
		display: inline-block;
	}

	@keyframes logoSlideUp {
		from {
			transform: translateY(130%);
		}
		to {
			transform: translateY(0);
		}
	}

	.fix-to-top .logo-will-animate {
		transform: translateY(130%);
		animation: logoSlideUp 150ms ease-out forwards;
	}

	.l-nav--mobile .flat-button {
		border-radius: 0;
		width: 100%;
		background: rgba(0,0,0,0.8);
		padding: 2rem;
	}

	.l-nav--mobile .flat-button:hover {
		background: #f042a1;
	}

	.l-nav--mobile {
		z-index: 3;
	}

	.ajax-modal-is-open .l-nav--mobile {
    	z-index: 0;
	}

	@media all and ( min-width: 769px ) {
		.dtm .l-nav--mobile {
			display: none;
		}
	}




	/*	Hamburger | @Model
	* --------------------------------------------------------------------- */
   .icon-hamburger {
	   display: block;
	   width: 30px;
	   height: 25px;
	   pointer-events: visible;
	   top: 0; bottom: 0;
	   left: 15px;
	   margin: auto;
	   z-index: 100;
	   -webkit-transform: rotate(0deg);
	   -moz-transform: rotate(0deg);
	   -o-transform: rotate(0deg);
	   transform: rotate(0deg);
	   -webkit-transition: .5s ease-in-out;
	   -moz-transition: .5s ease-in-out;
	   -o-transition: .5s ease-in-out;
	   transition: .5s ease-in-out;
	   cursor: pointer;
   }

	   .icon-hamburger > span {
		   display: block;
		   position: absolute;
		   height: 5px;
		   width: 100%;
		   background: #642daa;
		   border-radius: 9px;
		   opacity: 1;
		   left: 0;
		   -webkit-transform: rotate(0deg);
		   -moz-transform: rotate(0deg);
		   -o-transform: rotate(0deg);
		   transform: rotate(0deg);
		   -webkit-transition: .25s ease-in-out;
		   -moz-transition: .25s ease-in-out;
		   -o-transition: .25s ease-in-out;
		   transition: .25s ease-in-out;
	   }

	   .icon-hamburger span:nth-child(1) {
		   top: 0;
	   }

	   .icon-hamburger span:nth-child(2) {
		   top: 0; bottom: 0; margin: auto;
	   }

	   .icon-hamburger span:nth-child(3) {
		   bottom: 0;
	   }

		   /*	Hamburger | @Rules | @Model
		   * --------------------------------------------------------------------- */
		   @media all and ( min-width: 769px ) {
	   			.l-header__in .col--mobile-nav {
	   				display: none;
	   			}
			}

		   @media all and ( max-width: 768px ) {
			   #nav:checked ~ .l-header .icon-hamburger span:nth-child(1),
			   .icon-hamburger-open span:nth-child(1) {
				   top: 40%;
				   background: #f042a1;
				   -webkit-transform: rotate(135deg);
				   -moz-transform: rotate(135deg);
				   -o-transform: rotate(135deg);
				   transform: rotate(135deg);
			   }

			   #nav:checked ~ .l-header .icon-hamburger span:nth-child(2),
			   .icon-hamburger-open span:nth-child(2) {
				   opacity: 0;
				   left: -60px;
			   }

			   #nav:checked ~ .l-header .icon-hamburger span:nth-child(3),
			   .icon-hamburger-open span:nth-child(3) {
				   top: 40%;
				   background: #f042a1;
				   -webkit-transform: rotate(-135deg);
				   -moz-transform: rotate(-135deg);
				   -o-transform: rotate(-135deg);
				   transform: rotate(-135deg);
			   }

			   #nav:checked ~ .l-nav {
				   opacity: 1;
				   height: 100vh;
				   transform: translateY(0);
				   background: white;
			   }

			   #nav:checked ~ .l-nav .nav-header {
				   background: black;
			   }

			   #nav:checked ~ .l-nav .nav-header,
			   #nav:checked ~ .l-nav .nav-header li:not(.will-show-on-swap),
			   #nav:checked ~ .l-nav a {
				   display: block;
				   margin-left: 0;
			   }

			   #nav:checked ~ .l-nav a {
				   transition: all 250ms ease-out;
			   }

			   #nav:checked ~ .l-nav .nav-header a:hover {
				   background: #222;
			   }

			   #nav:checked ~ .l-nav li:after {
				   display: block;
				   content: '';
				   border-bottom: 1px solid rgba(255,255,255,0.25);
			   }

			   #nav:checked ~ .l-header--banner {
				   position: absolute;
				   z-index: 200;
				   top: 26em;
				   border-width: 5px 0 0;
			   }

			   #nav:checked ~ .l-outer,
			   #nav:checked ~ .l-footer {
				   display: none;
			   }

			   .dtm .dtm__in .l-nav {
				   position: absolute;
				   z-index: 100; top: 0;
				   height: 0;

				   transition: all 250ms ease-in-out;
				   transform: translateY(100vh);
				   opacity: 0;
			   }
		   }

		   .icon-hamburger-open {
			   border: none;
			   background: none;
		   }

		   .o-pos .icon-hamburger-open {
			   position: absolute;
			   top: 0; right: 0; left: auto; bottom: 0;
		   }

		   .icon-hamburger-open:hover span {
			   background: #0086d3;
		   }


	/*	Ajax | @Model
  	 * --------------------------------------------------------------------- */
  	.l-outer {
  		position: relative;
  	}

	.is-ajax {
		padding: 10rem;
	}

	@media all and ( min-width: 1200px ) {
		.dtm .option__img {
			width: 600px;
		}
	}

	@media all and ( max-width: 1200px ) {
		.is-ajax {
			padding: 1rem 1rem 10rem;
		}

		.dtm .option__img {
			width: 50%;
		}
	}

  	@keyframes ajaxSlideUp {
  		from {
  			transform: translateY(100vh);
  		}
  		to {
  			transform: translateY(0);
  		}
  	}

  	@keyframes ajaxSlideDown {
  		from {
  			transform: translateY(0);
  		}
  		to {
  			transform: translateY(100vh);
  		}
  	}

  	@keyframes ajaxOpenVertical {
  		from {
  			transform: scaleY(0);
  		}
  		to {
  			transform: scaleY(1);
  		}
  	}

  	@keyframes ajaxOpenHorizontal {
  		from {
  			background: white;
  			transform: scaleX(0);
  		}
  		to {
  			background: white;
  			transform: scaleX(1);
  		}
  	}

  	@keyframes ajaxFadeIn {
  		from {
  			opacity: 0;
  			transform: translateY(10vh);
  		}
  		to {
  			opacity: 1;
  			transform: translateY(0);
  		}
  	}

  	@keyframes ajaxCloseHorizontal {
  		from {
  			transform: scaleX(0);
  		}
  		to {
  			transform: scaleX(1);
  		}
  	}

  	@keyframes ajaxCloseVertical {
  		from {
  			transform: scaleY(1);
  		}
  		to {
  			transform: scaleY(0);
  		}
  	}

  	.set-ajax-video:before,
  	.set-ajax-video:after {
  		display: block;
  		content: '';
  	}

  	.set-ajax,
  	.set-ajax-video,
  	.set-ajax-video:before,
  	.set-ajax-video:after {
  		position: absolute;
  	    top: 0;
  	    width: 100%;
  	    height: 100%;
  		opacity: 0;
  		transition: all 250ms linear;
		z-index: -1;
  	}

  	.set-ajax {
  		background: white;
  	}

  	.set-ajax-video:before {
  		background: rgba(53, 0, 97, 0.79);
  	}

  	.set-ajax.ajax-is-open {
  		z-index: 1;
  		opacity: 1;
  		animation: ajaxSlideUp 250ms linear forwards;
  	}

  	.set-ajax.ajax-is-closed {
  		z-index: 1;
  		animation: ajaxSlideDown 250ms linear forwards;
  	}

  	.ajax-animation-end main > div:not(.set-ajax) {
  		display: none;
  	}

  	.ajax-animation-end .set-ajax {
  		position: relative;
  	}

  	.set-ajax-video.ajax-is-open {
  		position: fixed;
  	}

  	.set-ajax-video.ajax-is-open,
  	.set-ajax-video.ajax-is-open:before,
  	.set-ajax-video.ajax-is-open:after {
  		z-index: 2;
  		opacity: 1;
  	}

  	.set-ajax-video.ajax-is-open:before {
  		/*animation: ajaxOpenVertical 450ms cubic-bezier(1, 0, 0, 1) forwards;*/
  	}

  	.set-ajax-video.ajax-is-open {
  		animation: ajaxOpenHorizontal 450ms ease forwards;
  	}

  	.set-ajax-video.ajax-is-closed:before,
  	.set-ajax-video.ajax-is-closed {
  		transform: scaleX(0);
  		transition: none;
  		background: transparent;
  		opacity: 1;
  		z-index: 99;
  		/* animation: ajaxCloseHorizontal 450ms cubic-bezier(1, 0, 0, 1) forwards 0.5s; */
  	}

  	.set-ajax-video.ajax-is-closed {
  		transform: scaleY(1);
  		animation: ajaxCloseVertical 450ms cubic-bezier(1, 0, 0, 1) forwards 1s;
  	}

  	.set-ajax-video.ajax-is-closed:before {
  		transform-origin: left;
  	}

  	.set-ajax-video.ajax-is-closed:after {
  		transform-origin: right;
  	}

  	.fade-ajax {
  		opacity: 0;
  		position: relative;
  		background: white;
  		z-index: 10;
  		transform: translateY(10vh);
  		animation: ajaxFadeIn 1.5s ease-in-out forwards;
  	}

  	.ajax-dtm-youtube {
  		transition: opacity 250ms ease-in-out;
  		opacity: 0;
  	}

  	.ajax-dtm-youtube--fade {
  		opacity: 1;
  	}


/* --------------------------------------------------------------------- *

	@State

 * --------------------------------------------------------------------- */
 	/*	Inertial Momentum Scrolling | @Animation
  	* --------------------------------------------------------------------- */
	.set-inertial {
		position: absolute;
		top: 0;
		left: 0;
		width: 100vw;
		height: 100vh;
		overflow-y: scroll;
		-webkit-overflow-scrolling: touch;
		-ms-overflow-style: -ms-autohiding-scrollbar;
	}

	.ajax-modal-is-open > .set-inertial {
		overflow-y: hidden;
	}


	/*	Da Bounce | @Animation
	* --------------------------------------------------------------------- */
	.will-bounce {
		opacity: 0;
	}

	.do-bounce {
		transform: scale(1);
		animation: daBounce .7s 1 cubic-bezier(.175, .885, .32, 1.275) forwards;
	}

	@keyframes daBounce {
		from {
			transform: scale(.5);
			opacity: .1;
		}
		to {
			transform: scale(1);
			opacity: 1;
		}
	}


	/*	Videos | @Animation
	* --------------------------------------------------------------------- */
	.list--videos li {
		opacity: 0;
	}

		.list--videos li:nth-child(odd) {
			transform: translateX(-7%);
		}

		.list--videos li:nth-child(even) {
			transform: translateX(7%);
		}

	.list--videos .do-video-animate:nth-child(odd) {
		animation: pullVideoFromLeft 500ms ease-out forwards 2s;
	}

	.list--videos .do-video-animate:nth-child(even) {
		animation: pullVideoFromRight 500ms ease-out forwards 2s;
	}

	@keyframes pullVideoFromLeft {
		from {
			opacity: 0;
			transform: translateX(-7%);
		}
		to {
			opacity: 1;
			transform: translateX(0);
		}
	}

	@keyframes pullVideoFromRight {
		from {
			opacity: 0;
			transform: translateX(7%);
		}
		to {
			opacity: 1;
			transform: translateX(0);
		}
	}


/* --------------------------------------------------------------------- *

	@Theme

 * --------------------------------------------------------------------- */
 	/*	@Color
	 * --------------------------------------------------------------------- */
	.color-primary {
 		color: #632cab;
 	}

	.color-secondary {
		color: #f042a1;
	}

	.color-price {
		color: #ff0000;
	}

	.color-light {
		color: #888888;
	}

	.color-dark {
		color: #383632;
	}


	/*	@Borders
	 * --------------------------------------------------------------------- */
	.primary-border {
		border: 1px solid #009499;
	}

	.hr, .dtm .c-brand .hr {
		background: rgba(0,0,0,0.2);
		margin: 0.25em 0;
	}

	@media all and (min-width: 769px) {
		.midline__border {
			border-right: 2px solid #a6a6a6;
		}
	}

	@media all and (max-width: 768px) {
		.midline__border {
			border-bottom: 2px solid #a6a6a6;
		}
	}


	/*	@Background
	 * --------------------------------------------------------------------- */
	.bg-banner {
		background: #fffdfe;
		background: -moz-linear-gradient(top, #fffdfe 1%, #ffd3e8 100%);
		background: -webkit-linear-gradient(top, #fffdfe 1%,#ffd3e8 100%);
		background: linear-gradient(to bottom, #fffdfe 1%,#ffd3e8 100%);
	}

	.bg-primary {
		background: #343434; color: white;
	}

		.bg-primary .hr {
			background: white; height: 2px;
		}

	.highlight-container {
		background: #632cab; color: white;
	}

		.dtm .highlight-container {
			border-radius: 0; border: none;
		}

	.primary-container {
		background: #ce3454; color: white;
	}

	.secondary-container {
		background: #d275cd; color: white;
	}

	/* set the desktop color of the screen background */
	.dtm__in {
		background: white;
	}

	/* set the color of the page background */
	.l-outer__in {
		background: white;
	}

	/* set the desktop color of the header, midline & footer */
	.dtm__in--dv .l-header {
		background: white; color: #0a0912;
	}

	.dtm .l-nav {
		background: #050608;
		color: white;
	}

	.dtm__in .l-footer,
	.dtm__in .o-box--banner {
		background: black; color: rgba(255,255,255,0.8);
	}

	/* set the desktop color of the header & midline border color */
	.dtm__in--dv .l-header, .dtm__in--dv .o-box--banner {
		border-color: transparent;
	}

	/* set the color of the form headline (defaults to #333) */
	.c-brand--form .c-brand--form__legend {
		background: #212121; text-transform: uppercase;
	}

	/* set the color of the order review table (defaults to red) */
	.c-brand--table th,
	.c-brand--table__th {
		background: #ea6ba7;
	}

		@media all and (max-width: 47.5em), (max-device-width: 64em) and (min-device-width: 48em) {
			.dtm__in--mv .c-brand--table tbody td:first-of-type {
				background: #ea6ba7;
			}
		}


	/*	@Graphics
	 * --------------------------------------------------------------------- */
	 @media all and ( max-width: 480px ) {
		 .dtm .logo {
		 	max-width: 70%;
		 }
	 }

	 @media all and ( min-width: 1161px ) {
		 .gfx-girl {
	 		background: url(/images/graphics/_bg-girl.png?appV=[#DtmContext.ApplicationVersion#]) no-repeat left top;
	 		min-height: 498px;
	 	}
	 }

	.gfx-pattern {
		background: url(/images/graphics/_bg-pattern.jpg?appV=[#DtmContext.ApplicationVersion#]) repeat fixed;
	}

	@media all and ( min-width: 769px ) {
		.dtm .dtm__in .gfx-banner--mobile {
			display: none;
		}
	}

	@media all and ( max-width: 768px ) {
		.dtm .dtm__in .gfx-banner--desktop {
			display: none;
		}
	}

		@media all and ( min-width: 993px ) {
			.gfx-girl .burst--save {
				position: absolute;
				left: 0;
				top: 0;
			}
		}

	.gfx-burst--save,
	.gfx-burst--mbg {
		width: 130px; height: 125px;
	}

		@media all and ( min-width: 769px ) {
			.dtm .dtm__in .banner__gfx {
				display: none;
			}
		}

		@media all and ( max-width: 768px ) {
			.dtm .dtm__in .banner__bg {
				display: none;
			}

			.offer__shot {
				position: relative;
			}

			.banner__gfx {
				position: absolute;
				right: 0; left: 0;
				margin: auto;
				top: -50px;
			}

			.banner__gfx img {
				max-width: 100px;
			}
		}

		.girl__inline {
			border: solid #ccc;
		    border-width: 2px 0;
		    position: relative;
		    margin-top: 2rem;
		}

		.gfx-girl .girl__inline .burst--save {
			position: absolute;
			right: 0;
			top: 0;
			bottom: 0;
			margin: auto;
			max-width: 35%;
		}

		@media all and ( min-width: 661px ) {
			.gfx-girl .girl__inline .burst--save {
				left: 350px;
			}
		}

		.gfx-burst--save {
			background: url(/images/graphics/save-burst.png?appV=[#DtmContext.ApplicationVersion#]) no-repeat;
			background-size: cover;
		}

			@media all and (min-width: 993px) {
				.\@md-only-show {
					display: none;
				}
			}

		.gfx-burst--mbg {
			background: url(/images/graphics/mbg-burst.png?appV=[#DtmContext.ApplicationVersion#]) no-repeat;
			background-size: cover;
		}


  	.dtm .c-brand--form__label, .dtm .c-brand--form__cc--label {
		min-width: 123px;
	}

	@media all and ( max-width: 400px ) {
		.dtm .c-brand--form__label {
			text-align: left;
		}
	}

	@media all and ( min-width: 769px ) {
      .dtm .fade-ajax {
      	display: table;
      }

      .dtm .fade-ajax > div {
      	display: table-cell;
        vertical-align: middle;
      }

      .dtm .fade-ajax > .row-to-center > .col {
        max-width: 1100px;
        margin: auto;
        display: block;
      }
    }
</style>

// END SNIPPET @STYLE-BLOCK-HEAD --%>
