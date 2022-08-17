describe("an example function to test the system.", function() {
	it("should be able to run specs and tell whether or not they succeeded.", function() {
		
		expect(true).to().be(true).add_and().not_to().be(false);
		expect("string").not_to().contain("fe").add_or().to().begin_with("q");
	});
	
	it("should be able to recognise functions as inputs and execute them if necessary.", function() {
		var testfunc = function() {
			return "test string";
		}
		
		expect(testfunc()).to().return_with("test string");
	});
	
	it("should be able to take global before and after functions and run them at start and end of functions", function() {
		
	});
	
	it("should be able to handle garbage collection of any internally created data structures.", function() {
		var test_list = ds_list_create();
		
		
	});
});