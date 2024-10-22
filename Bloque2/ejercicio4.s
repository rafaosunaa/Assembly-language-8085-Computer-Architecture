.data 0
x: .double 4.5
y: .double 8.7
out: .double 0.0
.text 256

ld f2,x
ld f4,y
divd f6,f4,f2
sd out,f6
trap #0