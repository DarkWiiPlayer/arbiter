arbiter = require 'arbiter'

describe "Content arbiter", ->
	it "parses headers correctly", ->
		accepted = arbiter.new('text/html')[1]
		assert.same {q: 1, s: 3, type: 'text/html', pattern: '^text/html$'}, accepted

	it "orders types alphabetically", ->
		-- To make the ordering of headers with equal Q-value more deterministic
		accepted = arbiter.new 'c/*, b/*, a/*'
		assert.same {'a/*', 'b/*', 'c/*'}, [v.type for v in *accepted]

	it "respects Q-values", ->
		accepted = arbiter.new 'text/html, application/xhtml+xml, application/xml;q=0.9, image/webp, */*;q=0.8'
		assert.same({
			'application/xhtml+xml'
			'image/webp'
			'text/html'
			'application/xml'
			'*/*'
		}, [v.type for v in *accepted])

	it "returns valid patterns", ->
		accepted = arbiter.new '*/*, application/*, text/html, hack/%s+$'
		assert.same({
			'^hack/%%s%+%$$'
			'^text/html$'
			'^application/.+'
			'.+/.+'
		}, [v.pattern for v in *accepted])

	describe "picker", ->
		before_each ->
			export picker = arbiter.new('text/*')
		it "picks the preferred type from a sequence of strings", ->
			assert.same "text/html", picker\pick { "application/js", "text/html", "image/png" }
		it "collects loose string parameters into a table", ->
			assert.same "text/html", picker\pick "application/js", "text/html", "image/png"
		it "picks the preferred option from a map of types", ->
			available = {
				['application/js']: "BAR"
				['text/html']: "FOO"
				['image/png']: "BAZ"
			}
			assert.same {"text/html", "FOO"}, { picker\pick(available) }
		it "fails when it cannot negotiate a type", ->
			assert.errors ->
				assert picker\pick 'application/js', 'image/png'
