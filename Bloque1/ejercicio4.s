.data 0
x: .float 4.5
y: .float 8.7
out: .float 0.0
.text 256
lf f1,x
lf f2,y
divf f3,f2,f1
sf out,f3
trap #0