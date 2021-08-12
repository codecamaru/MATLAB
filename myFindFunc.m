function t = myFindFunc(a,n)
    k = 1
    t = 0
    while k <= length(a) & t ~=1
        if a(k) == n
            t = 1
        else k = k + 1
        end
end
