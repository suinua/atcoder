module beginners.coins;

import std.stdio;

void main(string[] args)
{
    int an;

    int a, b, c;
    readf("%d %d %d\n", &a, &b, &c);

    int t;
    readf("%d\n", &t);

    foreach (_1; 0 .. a + 1)
        foreach (_2; 0 .. b + 1)
            foreach (_3; 0 .. c + 1)
                if (_1 * 500 + _2 * 100 + _3 * 50 == t)
                    ++an;
    writeln(an);
}