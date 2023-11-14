{
n = 3;
m = 20001;
forstep(a=1, m, 1,
    an = a^n;
    c = a; cn = c^n;
    forstep(b=a+1, m, 1,
        anbn = an + b^n + 1;
        while(anbn > cn,
            c += 1;
            cn = c^n;
        );
        if(anbn == cn && ispower(cn, n),
            print(Str(a, "^3+", b, "^3=", c, "^3-1 | ", an, "+", b^n, "=", cn, "-1"));
            write("D:\\results.csv", Str(a, ",", b, ",", c, ",", an, ",", b^n, ",", cn));
        );
    );
);
}
