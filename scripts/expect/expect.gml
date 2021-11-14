/// @func	expect(data);
/// @param	{any}	_data	the data input to expect things from.
function expect(_data){
	// error checking and syntax enforcement.
	check_if_inside_describe(true);
	check_if_inside_it(true);
	check_if_is_chain_start(true);
	
	// push some data to the global stage.
	array_push(global.__stack.expect_state.stack, { str: "", res: [] });
	global.__stack.expect_state.current++;
	
	// create state data used by subsequent functions.
	expect_pos = global.__stack.expect_state.current;
	data = _data;
	str = "expect " + string(_data);
	res = [];
	prev = CHAIN_FUNC.LOGIC;
	
	return self;
}