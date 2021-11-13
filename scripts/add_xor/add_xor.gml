/// @func	add_xor();
function add_xor(){
	if(global.__stack.describe_state.init == false)show_error("not currently in a describe function. please make sure to create a describe function first.", true);
	if(global.__stack.it_state.init == false)show_error("not currently in an it function. please make sure to nest your expects within an it function.", true);
	if(!variable_struct_exists(self, prev))show_error("the 'add_and' function is designed to be chained. please make sure this function is not first in a function chain.", true);
	if(prev != CHAIN_FUNC.COMPARE)show_error("the 'add_xor' function needs to be placed after a comparitor function such as 'be' function.", true);
	
	str += ", xor";
	array_push(res, "xor");
	prev = CHAIN_FUNC.CONJUNCT;
	
	return self;
}