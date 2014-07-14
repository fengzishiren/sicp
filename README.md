标准过程

R5RS Scheme的标准过程

功能    过程

Construction	vector, make-vector, make-string, list

相等判断	eq?, eqv?, equal?, string=?, string-ci=?, char=?, char-ci=?

类型转换	vector->list, list->vector, number->string, string->number, symbol->string, string->symbol, char->integer, integer->char, string->list, list->string

字符串操作	string?, make-string, string, string-length, string-ref, string-set!, string=?, string-ci=?, string<? string-ci<?, string<=? string-ci<=?, string>? string-ci>?, string>=? string-ci>=?, substring, string-append, string->list, list->string, string-copy, string-fill!

字符操作	char?, char=?, char-ci=?, char<? char-ci<?, char<=? char-ci<=?, char>? char-ci>?, char>=? char-ci>=?, char-alphabetic?, char-numeric?, char-whitespace?, char-upper-case?, char-lower-case?, char->integer, integer->char, char-upcase, char-downcase

数组（vector）操作	make-vector, vector, vector?, vector-length, vector-ref, vector-set!, vector->list, list->vector, vector-fill!

符号操作	symbol->string, string->symbol, symbol?

有序对与列表	pair?, cons, car, cdr, set-car!, set-cdr!, null?, list?, list, length, append, reverse, list-tail, list-ref, memq. memv. member, assq, assv, assoc, list->vector, vector->list, list->string, string->list

类型判断	boolean?, pair?, symbol?, number?, char?, string?, vector?, port?, procedure?

Continuations	call-with-current-continuation (call/cc), values, call-with-values, dynamic-wind

环境操作	eval, scheme-report-environment, null-environment, interaction-environment (optional)

输入输出	display, newline, read, write, read-char, write-char, peek-char, char-ready?, eof-object? open-input-file, open-output-file, close-input-port, close-output-port, input-port?, output-port?, current-input-port, current-output-port, call-with-input-file, call-with-output-file, with-input-from-file(optional), with-output-to-file(optional)

系统操作	load (optional), transcript-on (optional), transcript-off (optional)

函数式方法	procedure?, apply, map, for-each

布尔操作	boolean? not



R5RS Scheme的标准数学运算过程

功能	过程
基本算术运算	+, -, *, /, abs, quotient, remainder, modulo, gcd, lcm, expt, sqrt 

分数运算	numerator, denominator, rational?, rationalize

近似值	floor, ceiling, truncate, round

精确性	inexact->exact, exact->inexact, exact?, inexact?

不等判断	<, <=, >, >=

其他判断	zero?, negative?, positive? odd? even?

最大与最小值	max, min

三角函数	sin, cos, tan, asin, acos, atan

幂与对数	exp, log

复数运算	make-rectangular, make-polar, real-part, imag-part, magnitude, angle, complex?

输入与输出	number->string, string->number 

类型判断	integer?, rational?, real?, complex?, number?

