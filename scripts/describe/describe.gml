/// @func	describe(string, function);
/// @param	{string}	_string		string input.
/// @param	{function}	_func		function input.
function describe(_string, _func){
	if(global.__stack.describe_state.init == true)show_error("something has gone horribly wrong and you've either nested describe functions or the previous test did not resolve correctly.", true);
	
	describe_set(_string);			// save the describe string to the stack.
	
	_func();						// run the internal function.
	
	// print out results
	
	describe_reset();				// resolve the test.
}