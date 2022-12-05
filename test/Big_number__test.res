open Test
open Big_number
open Assert

test("Equals", () => {
    let a = 4
    let b = 4
    assert_int(~left=a, ~right=b, ~operator="test", ~message="Testing the configuration")
})

test("Creates a new BigNumber", () => {
    let big_num_int = big_number_int(5)
    assert_bool(
        ~left=is_big_number_int(big_num_int), 
        ~right=true, 
        ~operator="is_big_number", 
        ~message="Testing BigNumber.isBigNumber with int value"
    )

    let big_num_float = big_number_float(69.69)
    assert_bool(
        ~left=is_big_number_float(big_num_float),
        ~right=true,
        ~operator="is_big_number", 
        ~message="Testing BigNumber.isBigNumber with float value"
    )
})

test("Casts BigNumber to int", () => {
    let big_num = big_number_int(7)
    assert_int(
        ~left=to_int(big_num),
        ~right=7,
        ~operator="to_int",
        ~message="Testing BigNumber.toNumber with int value"
    )
})

test("Casts BigNumber to float", () => {
    let big_num = big_number_float(7.8)
    assert_float(
        ~left=to_float(big_num),
        ~right=7.8,
        ~operator="to_float",
        ~message="Testing BigNumber.toNumber with float value"
    )
})

test("Test isEqualTo with int", () => {
    let big_num = big_number_int(8)
    // when equal
    assert_bool(
        ~left=big_num->is_equal_to_int(8, ~base=None, ()),
        ~right=true,
        ~operator="is_equal_to_int",
        ~message="Passing test with a = b"
    )
    // when not equal
    assert_bool(
        ~left=big_num->is_equal_to_int(66, ~base=None, ()),
        ~right=false,
        ~operator="is_equal_to_int",
        ~message="Passing test with a != b"
    )
    todo("Test the base parameter")
})

test("Test eq (shortcut for isEqualTo) with int", () => {
    let big_num = big_number_int(8)
    // when equal
    assert_bool(
        ~left=big_num->eq_int(8, ~base=None, ()),
        ~right=true,
        ~operator="eq_int true",
        ~message="Passing test with a = b"
    )
    // when not equal
    assert_bool(
        ~left=big_num->eq_int(66, ~base=None, ()),
        ~right=false,
        ~operator="eq_int false",
        ~message="Passing test with a != b"
    )
    todo("Test the base parameter")
})

test("Test isEqualTo with float", () => {
    let big_num = big_number_float(8.1)
    // when equal
    assert_bool(
        ~left=big_num->is_equal_to_float(8.1, ~base=None, ()),
        ~right=true,
        ~operator="is_equal_to_float",
        ~message="Passing test with a = b"
    )
    // when not equal
    assert_bool(
        ~left=big_num->is_equal_to_float(6.6, ~base=None, ()),
        ~right=false,
        ~operator="is_equal_to_float",
        ~message="Passing test with a != b"
    )
    todo("Test the base parameter")
})

test("Test eq (shortcut for isEqualTo) with float", () => {
    let big_num = big_number_float(8.1)
    // when equal
    assert_bool(
        ~left=big_num->eq_float(8.1, ~base=None, ()),
        ~right=true,
        ~operator="eq_float true",
        ~message="Passing test with a = b"
    )
    // when not equal
    assert_bool(
        ~left=big_num->eq_float(6.6, ~base=None, ()),
        ~right=false,
        ~operator="eq_float false",
        ~message="Passing test with a != b"
    )
    todo("Test the base parameter")
})

test("Test isGreaterThan with int", () => {
    let big_num = big_number_int(11)
    // when greater than
    assert_bool(
        ~left=big_num->is_greater_than_int(8, ~base=None, ()),
        ~right=true,
        ~operator="is_greater_than_int",
        ~message="Passing test with a > b"
    )
    // when not greater than
    assert_bool(
        ~left=big_num->is_greater_than_int(66, ~base=None, ()),
        ~right=false,
        ~operator="is_greater_than_int",
        ~message="Passing test with a < b"
    )
    todo("Test the base parameter")
})

test("Test gt (shortcut for isGreaterThan) with int", () => {
    let big_num = big_number_int(11)
    // when greater than
    assert_bool(
        ~left=big_num->gt_int(8, ~base=None, ()),
        ~right=true,
        ~operator="gt_int true",
        ~message="Passing test with a > b"
    )
    // when not greater than
    assert_bool(
        ~left=big_num->gt_int(66, ~base=None, ()),
        ~right=false,
        ~operator="gt_int false",
        ~message="Passing test with a < b"
    )
    todo("Test the base parameter")
})

test("Test isGreaterThan with float", () => {
    let big_num = big_number_float(8.1)
    // when greater than
    assert_bool(
        ~left=big_num->is_greater_than_float(7.9, ~base=None, ()),
        ~right=true,
        ~operator="is_greater_than_float",
        ~message="Passing test with a > b"
    )
    // when not greater than
    assert_bool(
        ~left=big_num->is_greater_than_float(61.6, ~base=None, ()),
        ~right=false,
        ~operator="is_greater_than_float",
        ~message="Passing test with a < b"
    )
    todo("Test the base parameter")
})

test("Test gt_float (shortcut for isGreaterThan) with float", () => {
    let big_num = big_number_float(8.1)
    // when greater than
    assert_bool(
        ~left=big_num->gt_float(7.9, ~base=None, ()),
        ~right=true,
        ~operator="gt_float true",
        ~message="Passing test with a > b"
    )
    // when not greater than
    assert_bool(
        ~left=big_num->gt_float(61.6, ~base=None, ()),
        ~right=false,
        ~operator="gt_float false",
        ~message="Passing test with a < b"
    )
    todo("Test the base parameter")
})

test("Test isGreaterThanOrEqualTo with int", () => {
    // when greater than
    let big_num = big_number_int(14)
    assert_bool(
        ~left=big_num->is_greater_than_or_equal_to_int(8, ~base=None, ()),
        ~right=true,
        ~operator="is_greater_than_or_equal_to_int",
        ~message="Passing test with a > b"
    )
    // when equal to
    let big_num = big_number_int(15)
    assert_bool(
        ~left=big_num->is_greater_than_or_equal_to_int(15, ~base=None, ()),
        ~right=true,
        ~operator="is_greater_than_or_equal_to_int",
        ~message="Passing test with a = b"
    )
    // when greater than and not equal
    assert_bool(
        ~left=big_num->is_greater_than_or_equal_to_int(66, ~base=None, ()),
        ~right=false,
        ~operator="is_greater_than_or_equal_to_int",
        ~message="Passing test with a < b"
    )
    todo("Test the base parameter")
})

test("Test gte (shortcut for isGreaterThanOrEqualTo) with int", () => {
    // when greater than
    let big_num = big_number_int(14)
    assert_bool(
        ~left=big_num->gte_int(8, ~base=None, ()),
        ~right=true,
        ~operator="gte_int greater true",
        ~message="Passing test with a > b"
    )
    // when equal to
    let big_num = big_number_int(15)
    assert_bool(
        ~left=big_num->gte_int(15, ~base=None, ()),
        ~right=true,
        ~operator="gte_int equal true",
        ~message="Passing test with a = b"
    )
    // when greater than and not equal
    assert_bool(
        ~left=big_num->gte_int(66, ~base=None, ()),
        ~right=false,
        ~operator="gte_int false",
        ~message="Passing test with a < b"
    )
    todo("Test the base parameter")
})

test("Test isGreaterThanOrEqualTo with float", () => {
    // when greater than
    let big_num = big_number_float(14.6)
    assert_bool(
        ~left=big_num->is_greater_than_or_equal_to_float(8.7, ~base=None, ()),
        ~right=true,
        ~operator="is_greater_than_or_equal_to_int",
        ~message="Passing test with a > b"
    )
    // when equal to
    let big_num = big_number_float(15.5)
    assert_bool(
        ~left=big_num->is_greater_than_or_equal_to_float(15.5, ~base=None, ()),
        ~right=true,
        ~operator="is_greater_than_or_equal_to_int",
        ~message="Passing test with a = b"
    )
    // when greater than and not equal
    assert_bool(
        ~left=big_num->is_greater_than_or_equal_to_float(66.6, ~base=None, ()),
        ~right=false,
        ~operator="is_greater_than_or_equal_to_int",
        ~message="Passing test with a < b"
    )
    todo("Test the base parameter")
})

test("Test gte (shortcut for isGreaterThanOrEqualTo) with float", () => {
    // when greater than
    let big_num = big_number_float(14.6)
    assert_bool(
        ~left=big_num->gte_float(8.7, ~base=None, ()),
        ~right=true,
        ~operator="gte_float greater true",
        ~message="Passing test with a > b"
    )
    // when equal to
    let big_num = big_number_float(15.5)
    assert_bool(
        ~left=big_num->gte_float(15.5, ~base=None, ()),
        ~right=true,
        ~operator="gte_float equal true",
        ~message="Passing test with a = b"
    )
    // when greater than and not equal
    assert_bool(
        ~left=big_num->gte_float(66.6, ~base=None, ()),
        ~right=false,
        ~operator="gte_float false",
        ~message="Passing test with a < b"
    )
    todo("Test the base parameter")
})

test("Test isLessThan with int", () => {
    let big_num = big_number_int(11)
    // when less than
    assert_bool(
        ~left=big_num->is_less_than_int(55, ~base=None, ()),
        ~right=true,
        ~operator="is_less_than_int true",
        ~message="Passing test with a < b"
    )
    // when not greater than
    assert_bool(
        ~left=big_num->is_less_than_int(6, ~base=None, ()),
        ~right=false,
        ~operator="is_less_than_int false",
        ~message="Passing test with a < b"
    )
    todo("Test the base parameter")
})

test("Test lt (shortcut for isLessThan) with int", () => {
    let big_num = big_number_int(11)
    // when less than
    assert_bool(
        ~left=big_num->lt_int(55, ~base=None, ()),
        ~right=true,
        ~operator="lt_int true",
        ~message="Passing test with a < b"
    )
    // when not greater than
    assert_bool(
        ~left=big_num->lt_int(6, ~base=None, ()),
        ~right=false,
        ~operator="lt_int false",
        ~message="Passing test with a < b"
    )
    todo("Test the base parameter")
})

test("Test isLessThan with float", () => {
    let big_num = big_number_float(6.1)
    // when less than
    assert_bool(
        ~left=big_num->is_less_than_float(9.9, ~base=None, ()),
        ~right=true,
        ~operator="is_less_than_float",
        ~message="Passing test with a < b"
    )
    // when not greater than
    assert_bool(
        ~left=big_num->is_less_than_float(5.6, ~base=None, ()),
        ~right=false,
        ~operator="is_less_than_float",
        ~message="Passing test with a < b"
    )
    todo("Test the base parameter")
})

test("Test lt (shortcut for isLessThan) with float", () => {
    let big_num = big_number_float(6.1)
    // when less than
    assert_bool(
        ~left=big_num->lt_float(9.9, ~base=None, ()),
        ~right=true,
        ~operator="lt_float true",
        ~message="Passing test with a < b"
    )
    // when not greater than
    assert_bool(
        ~left=big_num->lt_float(5.6, ~base=None, ()),
        ~right=false,
        ~operator="lt_float false",
        ~message="Passing test with a < b"
    )
    todo("Test the base parameter")
})

test("Test isLessThanOrEqualTo with int", () => {
    // when greater than
    let big_num = big_number_int(14)
    assert_bool(
        ~left=big_num->is_less_than_or_equal_to_int(22, ~base=None, ()),
        ~right=true,
        ~operator="is_less_than_or_equal_to_int less true",
        ~message="Passing test with a < b"
    )
    // when equal to
    let big_num = big_number_int(15)
    assert_bool(
        ~left=big_num->is_less_than_or_equal_to_int(15, ~base=None, ()),
        ~right=true,
        ~operator="is_less_than_or_equal_to_int equal true",
        ~message="Passing test with a = b"
    )
    // when less than and not equal
    assert_bool(
        ~left=big_num->is_less_than_or_equal_to_int(6, ~base=None, ()),
        ~right=false,
        ~operator="is_less_than_or_equal_to_int",
        ~message="Passing test with a > b"
    )
    todo("Test the base parameter")
})

test("Test lte (shortcut for isLessThanOrEqualTo) with int", () => {
    // when greater than
    let big_num = big_number_int(14)
    assert_bool(
        ~left=big_num->lte_int(22, ~base=None, ()),
        ~right=true,
        ~operator="lte_int less true",
        ~message="Passing test with a < b"
    )
    // when equal to
    let big_num = big_number_int(15)
    assert_bool(
        ~left=big_num->lte_int(15, ~base=None, ()),
        ~right=true,
        ~operator="lte_int equal true",
        ~message="Passing test with a = b"
    )
    // when less than and not equal
    assert_bool(
        ~left=big_num->lte_int(6, ~base=None, ()),
        ~right=false,
        ~operator="lte_int",
        ~message="Passing test with a > b"
    )
    todo("Test the base parameter")
})

test("Test isLessThanOrEqualTo with float", () => {
    // when less than
    let big_num = big_number_float(14.6)
    assert_bool(
        ~left=big_num->is_less_than_or_equal_to_float(22.1, ~base=None, ()),
        ~right=true,
        ~operator="is_less_than_or_equal_to_float less true",
        ~message="Passing test with a < b"
    )
    // when equal to
    let big_num = big_number_float(15.5)
    assert_bool(
        ~left=big_num->is_less_than_or_equal_to_float(15.5, ~base=None, ()),
        ~right=true,
        ~operator="is_less_than_or_equal_to_float equal true",
        ~message="Passing test with a = b"
    )
    // when less than and not equal
    assert_bool(
        ~left=big_num->is_less_than_or_equal_to_float(6.9, ~base=None, ()),
        ~right=false,
        ~operator="is_less_than_or_equal_to_float",
        ~message="Passing test with a > b"
    )
    todo("Test the base parameter")
})

test("Test lte (shortcut for isLessThanOrEqualTo) with float", () => {
    // when less than
    let big_num = big_number_float(14.4)
    assert_bool(
        ~left=big_num->lte_float(22.1, ~base=None, ()),
        ~right=true,
        ~operator="lte_float less true",
        ~message="Passing test with a < b"
    )
    // when equal to
    let big_num = big_number_float(15.5)
    assert_bool(
        ~left=big_num->lte_float(15.5, ~base=None, ()),
        ~right=true,
        ~operator="lte_float equal true",
        ~message="Passing test with a = b"
    )
    // when less than and not equal
    assert_bool(
        ~left=big_num->lte_float(6.6, ~base=None, ()),
        ~right=false,
        ~operator="lte_float",
        ~message="Passing test with a > b"
    )
    todo("Test the base parameter")
})

test("Test isNegative with int", () => {
    // when negative
    let big_num = big_number_int(-6)
    assert_bool(
        ~left=big_num->is_negative_int,
        ~right=true,
        ~operator="is_negative_int true",
        ~message="Passing test with big_num is negative"
    )
    // when positive
    let big_num = big_number_int(6)
    assert_bool(
        ~left=big_num->is_negative_int,
        ~right=false,
        ~operator="is_negative_int false",
        ~message="Passing test with big_num is not negative"
    )
})

test("Test isNegative with float", () => {
    // when negative
    let big_num = big_number_float(-6.9)
    assert_bool(
        ~left=big_num->is_negative_float,
        ~right=true,
        ~operator="is_negative_float true",
        ~message="Passing test with big_num is negative"
    )
    // when positive
    let big_num = big_number_float(6.9)
    assert_bool(
        ~left=big_num->is_negative_float,
        ~right=false,
        ~operator="is_negative_int false",
        ~message="Passing test with big_num is not negative"
    )
})

test("Test isZero with int", () => {
    // when zero
    assert_bool(
        ~left=big_number_int(0)->int_is_zero,
        ~right=true,
        ~operator="int_is_zero true",
        ~message="Passing test with big_num is zero"
    )
    // when not zero
    assert_bool(
        ~left=big_number_int(6)->int_is_zero,
        ~right=false,
        ~operator="int_is_zero false",
        ~message="Passing test with big_num is not zero"
    )
})

test("Test isZero with float", () => {
    // when zero
    assert_bool(
        ~left=big_number_float(0.0)->float_is_zero,
        ~right=true,
        ~operator="float_is_zero true",
        ~message="Passing test with big_num is zero"
    )
    // when not zero
    assert_bool(
        ~left=big_number_float(6.8)->float_is_zero,
        ~right=false,
        ~operator="float_is_zero false",
        ~message="Passing test with big_num is not zero"
    )
})