insert = require 'insert-style'

el = null

describe 'Style', ->

	describe '#addRule()', ->
		it 'should set color to red after element is created', ->
			el = $('<div class="test-element">text</div>').appendTo('body')
			insert('.test-element', 'color: rgb(255, 0, 0);')
			expect(el.css('color')).to.be.equal('rgb(255, 0, 0)')
			el.remove()

		it 'should set color to red before element is created', ->
			insert('.test-element', 'color: rgb(255, 0, 0);')
			el = $('<div class="test-element">text</div>').appendTo('body')
			expect(el.css('color')).to.be.equal('rgb(255, 0, 0)')
			el.remove()