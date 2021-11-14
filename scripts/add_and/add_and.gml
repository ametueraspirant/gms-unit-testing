/// @func add_and();
function add_and() {
	// error checking and syntax enforcement.
	check_if_inside_describe(true);
	check_if_inside_it(true);
	check_if_is_chain_start(false);
	check_if_after_compare();
	
	// add data to the string and the chain to note a logical conjugation.
	str += ", and";
	array_push(res, "and");
	prev = CHAIN_FUNC.LOGIC;
	
	return self;
}