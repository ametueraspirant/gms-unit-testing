/// @func	describe(string, function);
/// @param	{string}	_string		string input.
/// @param	{function}	_func		function input.
function describe(_string, _func){
	check_if_inside_describe(false);
	
	describe_set(_string);			// save the describe string to the stack.
	
	_func();						// run the internal function.
	
	// print out results
	
	describe_reset();				// resolve the test.
}