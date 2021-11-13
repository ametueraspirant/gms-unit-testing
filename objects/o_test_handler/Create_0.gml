describe("an example function to test the system.", function() {
	it("should be able to run specs and tell whether or not they succeeded.", function() {
		expect(true).to().be(true).add_and(false).to_not().be(true);
		expect("string").not_to().contain("fe").add_or().to().begin_with("q");
	});
});