A = [1 2 3;
    4 0 6;
    7 8 9;
    0 1 0]
display(A)

rowsWithoutZeros = .!any(A .== 0, dims = 2)

a = []
t = 1
for i in rowsWithoutZeros
    global a
    global t
    if i == 1
        a = [a; transposed(A[t, :])]
        t += 1
    else
        t += 1
    end
end

# Display the resulting matrix
display(a)