/// @func	be_less_than_or_equal(_term);
/// @param	{int}	_term	the integer term to compare the data to.
function be_less_than_or_equal(_term) {
	// error checking and syntax enforcement.
	check_if_inside_describe(true);
	check_if_inside_it(true);
	check_if_is_chain_start(false);
	check_if_after_positivator();
	check_if_both_terms_are_numeric();
	
	// add data to the chain and stack.
	str += " be less than or equal to " + string(_term);
	prev = CHAIN_FUNC.COMPARE;
	
	if(data <= _term && !is_not) {
		array_push(res, true);
	} else if(data > _term && is_not) {
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