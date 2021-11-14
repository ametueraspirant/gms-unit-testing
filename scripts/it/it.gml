/// @func	it(string, function);
/// @param	{string}	_string		string input.
/// @param	{function}	_func		function input.
function it(_string, _func) {
	check_if_inside_describe(true);
	check_if_inside_it(false);
	
	it_set(_string);					// save the it state to the stack.
	
	_func();							// run the internal function.
	
	var int = 0;
	repeat(array_length(global.__stack.describe_state.stack)) {
		// xor
	
		// and
	
		// or
		
		int++;
	}
	
	it_reset();							// reset the it stack.
}