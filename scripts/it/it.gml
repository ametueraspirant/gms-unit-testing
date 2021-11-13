/// @func	it(string, function);
/// @param	{string}	_string		string input.
/// @param	{function}	_func		function input.
function it(_string, _func){
	// check if describe state is initiated, which implies this function is within a describe() function.
	if(global.__stack.describe_state.init == false)show_error("not currently in a describe function. please make sure to create a describe function first.", true);
	
	it_set(_string);					// save the it state to the stack.
	
	_func();							// run the internal function.
	
	// xor
	
	// and
	
	// or
	
	it_reset();							// reset the it stack.
}