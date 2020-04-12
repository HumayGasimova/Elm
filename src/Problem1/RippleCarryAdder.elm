module Problem1.RippleCarryAdder exposing (andGate, orGate, inverter)

import Bitwise


andGate a b =
    Bitwise.and a b

orGate a b =
    Bitwise.or a b

inverter a =
    case a of
        0 ->
            1

        1 ->
            0

        _ ->
            -1