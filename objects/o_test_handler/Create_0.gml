describe("an example function to test the system.", function() {
	it("should be able to run specs and tell whether or not they succeeded.", function() {
		var testfunc = function() {
			return "test string";
		}
		
		expect(true).to().be(true).add_and().to_not().be(false);
		expect("string").not_to().contain("fe").add_or().to().begin_with("q");
		expect(testfunc()).to().return_with("test string");
	});
});