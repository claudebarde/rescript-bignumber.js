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

test("Test minus with int", () => {
    // positive int
    assert_int(
        ~left=big_number_int(6)->minus_int(4, ~base=None, ())->to_int,
        ~right=2,
        ~operator="minus int",
        ~message="Passing test with big_num minus positive int"
    )
    // negative int
    assert_int(
        ~left=big_number_int(6)->minus_int(8, ~base=None, ())->to_int,
        ~right=-2,
        ~operator="minus int",
        ~message="Passing test with big_num minus negative int"
    )
})

test("Test minus with float", () => {
    // positive float
    assert_float(
        ~left=big_number_float(6.2)->minus_float(4.1, ~base=None, ())->to_float,
        ~right=2.1,
        ~operator="minus float",
        ~message="Passing test with big_num minus positive float"
    )
    // negative float
    assert_float(
        ~left=big_number_float(6.2)->minus_float(8.1, ~base=None, ())->to_float,
        ~right=-1.9,
        ~operator="minus float",
        ~message="Passing test with big_num minus negative float"
    )
})

test("Test minus with big_int", () => {
    // positive big_int
    assert_int(
        ~left=big_number_int(6)->minus_big_int(big_number_int(4), ~base=None, ())->to_int,
        ~right=2,
        ~operator="minus big_int",
        ~message="Passing test with big_num minus positive big_int"
    )
    // negative int
    assert_int(
        ~left=big_number_int(6)->minus_big_int(big_number_int(8), ~base=None, ())->to_int,
        ~right=-2,
        ~operator="minus big_int",
        ~message="Passing test with big_num minus negative big_int"
    )
})

test("Test minus with big_float", () => {
    // positive big_float
    assert_float(
        ~left=big_number_float(6.2)->minus_big_float(big_number_float(4.1), ~base=None, ())->to_float,
        ~right=2.1,
        ~operator="minus big_float",
        ~message="Passing test with big_num minus positive big_float"
    )
    // negative int
    assert_float(
        ~left=big_number_float(6.2)->minus_big_float(big_number_float(8.1), ~base=None, ())->to_float,
        ~right=-1.9,
        ~operator="minus big_float",
        ~message="Passing test with big_num minus negative big_float"
    )
})

test("Test modulo with int", () => {
    assert_int(
        ~left=big_number_int(6)->modulo_int(4, ~base=None, ())->to_int,
        ~right=2,
        ~operator="modulo int",
        ~message="Passing test with big_num modulo positive int"
    )
})

test("Test modulo with float", () => {
    assert_float(
        ~left=big_number_float(6.2)->modulo_float(4.1, ~base=None, ())->to_float,
        ~right=2.1,
        ~operator="modulo float",
        ~message="Passing test with big_num modulo positive float"
    )
})

test("Test minus with big_int", () => {
    assert_int(
        ~left=big_number_int(6)->modulo_big_int(big_number_int(4), ~base=None, ())->to_int,
        ~right=2,
        ~operator="modulo big_int",
        ~message="Passing test with big_num modulo positive big_int"
    )
})

test("Test minus with big_float", () => {
    assert_float(
        ~left=big_number_float(6.2)->modulo_big_float(big_number_float(4.1), ~base=None, ())->to_float,
        ~right=2.1,
        ~operator="modulo big_float",
        ~message="Passing test with big_num modulo positive big_float"
    )
})

test("Test multipliedBy with int", () => {
    assert_int(
        ~left=big_number_int(6)->multiplied_by_int(4, ~base=None, ())->to_int,
        ~right=24,
        ~operator="multipliedBy int",
        ~message="Passing test with big_num multipliedBy positive int"
    )
})

test("Test multipliedBy with float", () => {
    assert_float(
        ~left=big_number_float(6.2)->multiplied_by_float(4.3, ~base=None, ())->to_float,
        ~right=26.66,
        ~operator="multipliedBy float",
        ~message="Passing test with big_num multipliedBy positive float"
    )
})

test("Test multipliedBy with big_int", () => {
    assert_int(
        ~left=big_number_int(6)->multiplied_by_big_int(big_number_int(4), ~base=None, ())->to_int,
        ~right=24,
        ~operator="multipliedBy big_int",
        ~message="Passing test with big_num multipliedBy positive big_int"
    )
})

test("Test multipliedBy with big_float", () => {
    assert_float(
        ~left=big_number_float(6.2)->multiplied_by_big_float(big_number_float(4.3), ~base=None, ())->to_float,
        ~right=26.66,
        ~operator="multipliedBy big_float",
        ~message="Passing test with big_num multipliedBy positive big_float"
    )
})

test("Test times with int", () => {
    assert_int(
        ~left=big_number_int(6)->times_int(4, ~base=None, ())->to_int,
        ~right=24,
        ~operator="times int",
        ~message="Passing test with big_num times positive int"
    )
})

test("Test times with float", () => {
    assert_float(
        ~left=big_number_float(6.2)->times_float(4.3, ~base=None, ())->to_float,
        ~right=26.66,
        ~operator="times float",
        ~message="Passing test with big_num times positive float"
    )
})

test("Test times with big_int", () => {
    assert_int(
        ~left=big_number_int(6)->times_big_int(big_number_int(4), ~base=None, ())->to_int,
        ~right=24,
        ~operator="times big_int",
        ~message="Passing test with big_num times positive big_int"
    )
})

test("Test times with big_float", () => {
    assert_float(
        ~left=big_number_float(6.2)->times_big_float(big_number_float(4.3), ~base=None, ())->to_float,
        ~right=26.66,
        ~operator="times big_float",
        ~message="Passing test with big_num times positive big_float"
    )
})

///

test("Test plus with int", () => {
    assert_int(
        ~left=big_number_int(6)->plus_int(4, ~base=None, ())->to_int,
        ~right=10,
        ~operator="plus int",
        ~message="Passing test with big_num plus positive int"
    )
})

test("Test plus with float", () => {
    assert_float(
        ~left=big_number_float(6.2)->plus_float(4.3, ~base=None, ())->to_float,
        ~right=10.5,
        ~operator="plus float",
        ~message="Passing test with big_num plus positive float"
    )
})

test("Test timpluses with big_int", () => {
    assert_int(
        ~left=big_number_int(6)->plus_big_int(big_number_int(4), ~base=None, ())->to_int,
        ~right=10,
        ~operator="plus big_int",
        ~message="Passing test with big_num plus positive big_int"
    )
})

test("Test plus with big_float", () => {
    assert_float(
        ~left=big_number_float(6.2)->plus_big_float(big_number_float(4.3), ~base=None, ())->to_float,
        ~right=10.5,
        ~operator="plus big_float",
        ~message="Passing test with big_num plus positive big_float"
    )
})