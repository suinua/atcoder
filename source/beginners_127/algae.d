module beginners_127.algae;

import std.stdio;

void main()
{
    int x, d, r;
    readf("%d %d %d\n", &x, &d, &r);
    f(x, d, r);
}

private int f(int x, int d, int r,int i = 0)
{
    i++;
    if (i <= 10)
    {
        writeln(x * r - d);
        return f(x, d, x * r - d,i);
    }

    return 0;
}
