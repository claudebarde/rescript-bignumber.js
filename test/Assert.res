let assert_bool: (~left: bool, ~right: bool, ~operator: string, ~message: string) => unit =
    (~left, ~right, ~operator, ~message) => {
        Test.assertion(
            (a, b) => a === b,
            left,
            right,
            ~operator=operator,
            ~message=message
        )
    }

let assert_int: (~left: int, ~right: int, ~operator: string, ~message: string) => unit =
    (~left, ~right, ~operator, ~message) => {
        Test.assertion(
            (a, b) => a === b,
            left,
            right,
            ~operator=operator,
            ~message=message
        )
    }

let assert_float: (~left: float, ~right: float, ~operator: string, ~message: string) => unit =
    (~left, ~right, ~operator, ~message) => {
        Test.assertion(
            (a, b) => a === b,
            left,
            right,
            ~operator=operator,
            ~message=message
        )
    }