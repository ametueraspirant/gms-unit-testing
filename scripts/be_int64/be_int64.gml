/// @func	be_int64();
function be_int64(){
	// error checking and syntax enforcement.
	check_if_inside_describe(true);
	check_if_inside_it(true);
	check_if_is_chain_start(false);
	check_if_after_positivator();
	
	// add data to the chain and stack.
	str += " be an int64";
	prev = CHAIN_FUNC.COMPARE;
	
	if(is_int64(data) && !is_not) {
		array_push(res, true);
	} else if(!is_int64(data) && is_not) {
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