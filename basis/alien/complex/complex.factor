! Copyright (C) 2009 Slava Pestov.
! See http://factorcode.org/license.txt for BSD license.
USING: alien.c-types alien.complex.functor accessors
sequences kernel ;
IN: alien.complex

<<
{ "float" "double" } [ dup "complex-" prepend define-complex-type ] each
>>

<<
! This overrides the fact that small structures are never returned
! in registers on Linux running on 32-bit x86.
\ complex-float lookup-c-type t >>return-in-registers? drop
>>
