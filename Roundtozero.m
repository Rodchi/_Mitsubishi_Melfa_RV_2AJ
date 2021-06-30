function x0 = Roundtozero(x)

    if abs(x) < 0.0001
        x0 = 0;
    else
        x0 = x;
    end

end