module beginners.some_sums;

import std.stdio, std.array, std.conv, std.algorithm;

void main()
{
    int ans;
    int n, a, b;
    readf("%d %d %d", &n, &a, &b);

    foreach (i; 0 .. n + 1)
    {
        int[] l = i.to!string.split("").map!(o => o.to!int).array;

        if (sum(l) >= a && sum(l) <= b)
            ans += i;
    }

    write(ans);
}
