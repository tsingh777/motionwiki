## Page scroller directive

define ['require', 'jquery'], (require, $)->

	angular.module('mw_directives').directive 'mwPageScroller', [ ->
		templateUrl: '/includes/templates/directives/pageScroller.html'
		restrict: 'A'
		link: (scope, element, attrs)->
			$("#ButtonForMap").click -> #lets assume you gave the button for the map the div id= ButtonForMap
				if $(this).val() is "OFF"
					$(this).val "ON"
					#$("#MOVEIT").css "margin-left": 0
					$("#MAP").slideUp "slow",->
					#$("#MAP").remove() 
					
				else
					if $("#MAP").length
						$("#MAP").remove()  
					#$("#MOVEIT").css "margin-left": 185
					$mapSource = $("<script>")
					$mapSource.attr "src", "/includes/js/miniPageNav.js"
					$("body").append $mapSource
					$(this).val "OFF"
			
			$ ->
				popoverHtml = """
					<div class="btn-group">
						<button class="btn btn-primary">15s</button>
						<button class="btn btn-primary">30s</button>
						<button class="btn btn-primary">45s</button>
					</div>
				"""

				$('#timeButton').popover
					trigger: 'click'
					html: true
					placement: 'bottom',
					content: popoverHtml
				

			
	]
