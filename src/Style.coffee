class Style


	sheet: null


	constructor: ->
		style = document.createElement 'style'
		style.appendChild(document.createTextNode(''))

		document.head.appendChild(style)

		@sheet = style.sheet


	addRule: (selector, rule) ->
		@sheet.addRule(selector, rule)
		return @


style = new Style

module.exports = (selector, rule) ->
	style.addRule.call(style, selector, rule)