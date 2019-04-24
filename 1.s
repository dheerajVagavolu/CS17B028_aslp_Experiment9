.data

x: .float 5.7123
y: .float 2.22222
u: .double 4.43434343434343
v: .double 12.3456

.text
.globl main
.ent main
main:

l.s $f1, x
l.s $f0, y
sub.s $f3, $f0, $f1
mul.s $f4, $f0, $f1
add.s $f2, $f0, $f1
div.s $f5, $f0, $f1

l.d $f6, u
l.d $f8, v
add.d $f10, $f6, $f8
sub.d $f12, $f6, $f8
mul.d $f14, $f6, $f8
div.d $f16, $f6, $f8

li $v0, 10
syscall


.end main