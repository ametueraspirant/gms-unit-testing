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
		init: false,
		current: -1,
		stack: []
	}
}

/// @func	describe_set(string);
/// @param	{string}	_string		string input to set.
function describe_set(_string) {
	global.__stack.describe_state.goal = _string;
	global.__stack.describe_state.init = true;
}

/// @func describe_reset();
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

/// @func	it_set(string);
/// @param	{string}	_string		string input to set.
function it_set(_string) {
	array_push(global.__stack.it_state.stack, _string);
	global.__stack.it_state.current++;
}

/// @func	it_reset();
function it_reset() {
	global.__stack.it_state.init = false;
	global.__stack.expect_state = {
		init: false,
		current: -1,
		stack: []
	}
}

enum CHAIN_FUNC {
	LOGIC,
	COMPARE,
	CONJUNCT,
	POSITIVATOR
}