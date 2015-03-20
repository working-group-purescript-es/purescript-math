-- | Wraps the math functions and constants from Javascript's built-in `Math` object.
-- | See [Math Reference at MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math).
module Math where

-- | An alias to make types in this module more explicit.
type Radians = Number

-- | Returns the absolute value of the argument.
foreign import abs "var abs = Math.abs;" :: Number -> Number

-- | Returns the arccosine of the argument.
foreign import acos "var acos = Math.acos;" :: Number -> Radians

-- | Returns the arcsine of the argument.
foreign import asin "var asin = Math.asin;" :: Number -> Radians

-- | Returns the arctangent of the argument.
foreign import atan "var atan = Math.atan;" :: Number -> Radians

-- | Four-quadrant tangent inverse. Given `y` and `x`, returns the arctangent of
-- | `y / x`, where the signs of both arguments are used to determine the sign
-- | of the result.
-- | If the first argument is negative, the result will be negative.
-- | The result is the counterclockwise angle between the positive x axis and
-- | the point `(x, y)`.
foreign import atan2
  "function atan2(y){\
  \  return function (x) {\
  \    return Math.atan2(y, x);\
  \  };\
  \}" :: Number -> Number -> Radians

-- | Returns the smallest integer greater than or equal to the argument.
foreign import ceil "var ceil = Math.ceil;" :: Number -> Number

-- | Returns the cosine of the argument.
foreign import cos "var cos = Math.cos;" :: Radians -> Number

-- | Returns `e` exponentiated to the power of the argument.
foreign import exp "var exp = Math.exp;" :: Number -> Number

-- | Returns the largest integer less than or equal to the argument.
foreign import floor "var floor = Math.floor;" :: Number -> Number

-- | Returns the natural logarithm of a number.
foreign import log "var log = Math.log;" :: Number -> Number

-- | Returns the largest of two numbers.
foreign import max
  "function max(n1){\
  \  return function(n2) {\
  \    return Math.max(n1, n2);\
  \  }\
  \}" :: Number -> Number -> Number

-- | Returns the smallest of two numbers.
foreign import min
  "function min(n1){\
  \  return function(n2) {\
  \    return Math.min(n1, n2);\
  \  }\
  \}" :: Number -> Number -> Number

-- | Return  the first argument exponentiated to the power of the second argument.
foreign import pow
  "function pow(n){\
  \  return function(p) {\
  \    return Math.pow(n, p);\
  \  }\
  \}" :: Number -> Number -> Number

-- | Returns the integer nearest to the argument.
foreign import round "var round = Math.round;" :: Number -> Number

-- | Returns the sine of the argument.
foreign import sin "var sin = Math.sin;" :: Radians -> Number

-- | Returns the square root of the argument.
foreign import sqrt "var sqrt = Math.sqrt;" :: Number -> Number

-- | Returns the tangent of the argument.
foreign import tan "var tan = Math.tan;" :: Radians -> Number

-- | Euler's constant and the base of natural logarithms, approximately 2.718.
foreign import e       "var e       = Math.E;"       :: Number

-- | Natural logarithm of 2, approximately 0.693.
foreign import ln2     "var ln2     = Math.LN2;"     :: Number

-- | Natural logarithm of 10, approximately 2.303.
foreign import ln10    "var ln10    = Math.LN10;"    :: Number

-- | Base 2 logarithm of `e`, approximately 1.443.
foreign import log2e   "var log2e   = Math.LOG2E;"   :: Number

-- | Base 10 logarithm of `e`, approximately 0.434.
foreign import log10e  "var log10e  = Math.LOG10E;"  :: Number

-- | Ratio of the circumference of a circle to its diameter, approximately 3.14159.
foreign import pi      "var pi      = Math.PI;"      :: Number

-- | Square root of 1/2, approximately 0.707.
foreign import sqrt1_2 "var sqrt1_2 = Math.SQRT1_2;" :: Number

-- | Square root of 2, approximately 1.414.
foreign import sqrt2   "var sqrt2   = Math.SQRT2;"   :: Number
