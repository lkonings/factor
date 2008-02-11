USING: cpu.ppc.architecture cpu.ppc.intrinsics cpu.architecture
namespaces alien.c-types kernel system combinators ;

{
    { [ macosx? ] [
        4 "longlong" c-type set-c-type-align
        4 "ulonglong" c-type set-c-type-align
    ] }
    { [ linux? ] [
        t "longlong" c-type set-c-type-stack-align?
        t "ulonglong" c-type set-c-type-stack-align?
    ] }
} cond

T{ ppc-backend } compiler-backend set-global

macosx? [
    4 "double" c-type set-c-type-align
] when
