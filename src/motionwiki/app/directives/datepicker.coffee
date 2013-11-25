## Play controls directive

define ['require', 'jquery', '../bootstrap-datepicker'], (require, $)->

    angular.module('mw_directives').directive 'mwDatepicker', [ ->
        templateUrl: '/includes/templates/directives/datepicker.html'
        restrict: 'A'
        link: (scope, element, attrs)->
            console.log "datepicker"
            ##$datepickerSource = $("<script>")
            ##$datepickerSource.attr "src", "/includes/js/bootstrap_datepicker.js"
            ##$(".mw_wrap").append $datepickerSource

            ##$('.datepickerButton').datepicker()

            $('#datepicker1 button').datepicker().on "changeDate", (ev)->
            	alert ev.date
            $('#datepicker2 button').datepicker().on "changeDate", (ev)->
            	alert ev.date
        
    ]
