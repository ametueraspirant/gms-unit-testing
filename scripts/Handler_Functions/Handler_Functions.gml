// strings to encase the test results to make it look prettier and more official.
global.__before_string_formatting = "";
global.__after_string_formatting = "";

global.__test_result_string = "";

global.__stack = {
	describe_state: {
		goal: "",
		init: false
	},
	it_state: {
		init: false,
		current: -1,
		stack: []
	},
	expect_state: {
		current: -1,
		stack: []
	}
}

#region // main function handlers
function describe_set(_string) {
	global.__stack.describe_state.goal = _string;
	global.__stack.describe_state.init = true;
}

function describe_reset() {
	global.__stack = {
		describe_state: {
			goal: "",
			init: false
		},
		it_state: {
			init: false,
			current: -1,
			stack: []
		},
		expect_state: {
			init: false,
			current: -1,
			stack: []
		}
	}
}

function it_set(_string) {
	array_push(global.__stack.it_state.stack, _string);
	global.__stack.it_state.current++;
}

function it_reset() {
	global.__stack.it_state.init = false;
	global.__stack.expect_state = {
		init: false,
		current: -1,
		stack: []
	}
}
#endregion

#region // placement checks
function check_if_inside_describe(that_a_good_thing) {
	if(that_a_good_thing) {
		if(!global.__stack.describe_state.init == true)show_error("a function expected within 'describe' event was not in 'describe' event.", true);
	} else {
		if(global.__stack.describe_state.init == true)show_error("a function not expected within 'describe' event was in 'describe' event.", true);
	}
}

function check_if_inside_it(that_a_good_thing) {
	if(that_a_good_thing) {
		if(!global.__stack.it_state.init)show_error("a function expected within 'it' event was not in 'it' event.", true);
	} else {
		if(global.__stack.describe_state.init)show_error("a function not expected within 'it' event was in 'it' event.", true);
	}
}

function check_if_is_chain_start(that_a_good_thing) {
	if(that_a_good_thing) {
		if(variable_struct_exists(self, prev))show_error("an 'expect' function was placed not at the start of a chain.", true);
	} else {
		if(!variable_struct_exists(self, prev))show_error("a function other than 'expect' was placed at the start of a chain.", true);
	}
}

function check_if_after_logic() {
	if(prev != CHAIN_FUNC.LOGIC)show_error("a function expected to be placed after a logical function was not, examples: expect, and, or, and xor.", true);
}

function check_if_after_compare() {
	if(prev != CHAIN_FUNC.COMPARE)show_error("a function expected to be placed after a comparitor function was not, examples: be, be_equal, be_array, be_greater_than.", true);
}

function check_if_after_positivator() {
	if(prev != CHAIN_FUNC.POSITIVATOR)show_error("a function expected to be placed after a positivator function was not, examples: to, not_to.", true);
}

function check_if_both_terms_are_numeric() {
	if(!is_numeric(data) || !is_numeric(_term))show_error("one or both of the two terms compared are not numeric. Please make sure to only compare equality between numbers.", true);
}
#endregion

enum CHAIN_FUNC {
	LOGIC,
	COMPARE,
	POSITIVATOR
}