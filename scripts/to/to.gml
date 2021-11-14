/// @func	to();
function to(){
	// error checking and syntax enforcement.
	check_if_inside_describe(true);
	check_if_inside_it(true);
	check_if_is_chain_start(false);
	check_if_after_logic();
	
	// add data to the string and the chain to note a positive conjunction.
	str += " to";
	is_not = false;
	prev = CHAIN_FUNC.POSITIVATOR;
	
	return self;
}