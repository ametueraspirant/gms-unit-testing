/// @func	be(term);
///	@param	{any}	_term	the variable term to compare data to.
function be(_term){
	// error checking and syntax enforcement.
	check_if_inside_describe(true);
	check_if_inside_it(true);
	check_if_is_chain_start(false);
	check_if_after_positivator();
	
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