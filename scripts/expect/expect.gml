/// @func	expect(data);
/// @param	{any}	_data	the data input to expect things from.
function expect(_data){
	// error checking and syntax enforcement.
	if(global.__stack.describe_state.init == false)show_error("not currently in a describe function. please make sure to create a describe function first.", true);
	if(global.__stack.it_state.init == false)show_error("not currently in an it function. please make sure to nest your expects within an it function.", true);
	if(variable_struct_exists(self, prev))show_error("expect should be the first function in the chain. Please make sure you start the chain with expect().", true);
	
	// push some data to the global stage.
	array_push(global.__stack.expect_state.stack, { str: "", res: [], it_pos: global.__stack.it_state.current });
	global.__stack.expect_state.current++;
	
	// create state data used by subsequent functions.
	expect_pos = global.__stack.expect_state.current;
	data = _data;
	str = "expect " + string(_data);
	res = [];
	prev = CHAIN_FUNC.LOGIC;
	
	return self;
}