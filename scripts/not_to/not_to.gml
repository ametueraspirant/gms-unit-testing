/// @func	not_to();
function not_to(){
	if(global.__stack.describe_state.init == false)show_error("not currently in a describe function. please make sure to create a describe function first.", true);
	if(global.__stack.it_state.init == false)show_error("not currently in an it function. please make sure to nest your expects within an it function.", true);
	if(!variable_struct_exists(self, prev))show_error("the 'not_to' function is designed to be chained. please make sure this function is not first in a function chain.", true);
	if(prev != CHAIN_FUNC.LOGIC)show_error("the 'not_to' function needs to be placed after an 'expect' 'and' 'or' or 'xor' function.", true);
	
	// add data to the string and the chain to note a negative conjunction.
	str += " not to";
	is_not = true;
	prev = CHAIN_FUNC.POSITIVATOR;
	
	return self;
}