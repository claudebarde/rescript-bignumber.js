type big_int
type big_float

/*
    CONSTRUCTOR
*/
@new @module external big_number_int: int => big_int = "bignumber.js"
@new @module external big_number_float: float => big_float = "bignumber.js"

// METHODS
@module("bignumber.js") external is_big_number_int: big_int => bool = "isBigNumber"
@module("bignumber.js") external is_big_number_float: big_float => bool = "isBigNumber"

/*
    INSTANCE
*/
// METHODS
@send external to_int: (big_int) => int = "toNumber"
@send external to_float: (big_float) => float = "toNumber"

@send external is_equal_to_int: (big_int, int, ~base: option<int>=?, unit) => bool = "isEqualTo"
@send external is_equal_to_float: (big_float, float, ~base: option<int>=?, unit) => bool = "isEqualTo"
@send external eq_int: (big_int, int, ~base: option<int>=?, unit) => bool = "eq"
@send external eq_float: (big_float, float, ~base: option<int>=?, unit) => bool = "eq"

@send external is_greater_than_int: (big_int, int, ~base: option<int>=?, unit) => bool = "isGreaterThan"
@send external is_greater_than_float: (big_float, float, ~base: option<int>=?, unit) => bool = "isGreaterThan"
@send external gt_int: (big_int, int, ~base: option<int>=?, unit) => bool = "gt"
@send external gt_float: (big_float, float, ~base: option<int>=?, unit) => bool = "gt"

@send external is_greater_than_or_equal_to_int: (big_int, int, ~base: option<int>=?, unit) => bool = "isGreaterThanOrEqualTo"
@send external is_greater_than_or_equal_to_float: (big_float, float, ~base: option<int>=?, unit) => bool = "isGreaterThanOrEqualTo"
@send external gte_int: (big_int, int, ~base: option<int>=?, unit) => bool = "gte"
@send external gte_float: (big_float, float, ~base: option<int>=?, unit) => bool = "gte"

@send external is_less_than_int: (big_int, int, ~base: option<int>=?, unit) => bool = "isLessThan"
@send external is_less_than_float: (big_float, float, ~base: option<int>=?, unit) => bool = "isLessThan"
@send external lt_int: (big_int, int, ~base: option<int>=?, unit) => bool = "lt"
@send external lt_float: (big_float, float, ~base: option<int>=?, unit) => bool = "lt"

@send external is_less_than_or_equal_to_int: (big_int, int, ~base: option<int>=?, unit) => bool = "isLessThanOrEqualTo"
@send external is_less_than_or_equal_to_float: (big_float, float, ~base: option<int>=?, unit) => bool = "isLessThanOrEqualTo"
@send external lte_int: (big_int, int, ~base: option<int>=?, unit) => bool = "lte"
@send external lte_float: (big_float, float, ~base: option<int>=?, unit) => bool = "lte"