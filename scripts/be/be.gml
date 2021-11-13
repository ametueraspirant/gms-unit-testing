/// @func	be(term);
///	@param	{any}	_term	the variable term to compare data to.
function be(_term){
	if(global.__stack.describe_state.init == false)show_error("not currently in a describe function. please make sure to create a describe function first.", true);
	if(global.__stack.it_state.init == false)show_error("not currently in an it function. please make sure to nest your expects within an it function.", true);
	if(!variable_struct_exists(self, prev))show_error("the 'be' function is designed to be chained. please make sure this function is not first in a function chain.", true);
	if(prev != CHAIN_FUNC.POSITIVATOR)show_error("the 'be' function needs to be placed after a 'to' or a 'not_to' function.", true);
	
	// add data to the chain and stack.
	str += " be " + _term;
	prev = CHAIN_FUNC.COMPARE;
	
	if(data == _term && !is_not) {
		array_push(res, true);
	} else if(data != _term && is_not) {
		array_push(res, true);
	} else {
		array_push(res, false);
	}
	
	// reset is_not for good measure.
	is_not = undefined;
	
	// push up to global.
	global.__stack.expect_state.stack[expect_pos].str = str;
	global.__stack.expect_state.stack[expect_pos].res = res;
	
	return self;
}