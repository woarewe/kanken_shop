// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require popper
//= require bootstrap
//= require color_panel.js.erb
//= require skel
//= require rails-ujs
//= require turbolinks
//= require_tree .

(function($) {

    skel
        .breakpoints({
            xlarge:	'(max-width: 1680px)',
            large:	'(max-width: 1280px)',
            medium:	'(max-width: 980px)',
            small:	'(max-width: 736px)',
            xsmall:	'(max-width: 480px)'
        });

    $(function() {

        var	$window = $(window),
            $body = $('body'),
            $wrapper = $('#page-wrapper'),
            $banner = $('#banner'),
            $header = $('#header');

        // Disable animations/transitions until the page has loaded.
        $body.addClass('is-loading');

        $window.on('load', function() {
            window.setTimeout(function() {
                $body.removeClass('is-loading');
            }, 100);
        });

        // Mobile?
        if (skel.vars.mobile)
            $body.addClass('is-mobile');
        else
            skel
                .on('-medium !medium', function() {
                    $body.removeClass('is-mobile');
                })
                .on('+medium', function() {
                    $body.addClass('is-mobile');
                });

        // Fix: Placeholder polyfill.
        $('form').placeholder();

        // Prioritize "important" elements on medium.
        skel.on('+medium -medium', function() {
            $.prioritize(
                '.important\\28 medium\\29',
                skel.breakpoint('medium').active
            );
        });

        // Scrolly.
        $('.scrolly')
            .scrolly({
                speed: 1500,
                offset: $header.outerHeight()
            });

        // Menu.
        $('#menu')
            .append('<a href="#menu" class="close"></a>')
            .appendTo($body)
            .panel({
                delay: 500,
                hideOnClick: true,
                hideOnSwipe: true,
                resetScroll: true,
                resetForms: true,
                side: 'right',
                target: $body,
                visibleClass: 'is-menu-visible'
            });

        // Header.
        if (skel.vars.IEVersion < 9)
            $header.removeClass('alt');

        if ($banner.length > 0
            &&	$header.hasClass('alt')) {

            $window.on('resize', function() { $window.trigger('scroll'); });

            $banner.scrollex({
                bottom:		$header.outerHeight() + 1,
                terminate:	function() { $header.removeClass('alt'); },
                enter:		function() { $header.addClass('alt'); },
                leave:		function() { $header.removeClass('alt'); }
            });

        }

    });

})(jQuery);


$(document).on('click', 'a[href^="#"]', function (event) {
    event.preventDefault();

    $('html, body').animate({
        scrollTop: $($.attr(this, 'href')).offset().top
    }, 750);
});