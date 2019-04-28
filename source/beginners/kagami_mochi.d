module beginners.kagami_mochi;

import std.stdio, std.array, std.conv, std.algorithm;

void main()
{
    int l = readln.split[0].to!int;
    int[] ms;
    foreach (i; 0 .. l)
    {
        int v = readln.split[0].to!int;
        if (ms.count(v) == 0)
            ms ~= v;
    }
    writeln(ms.length);
}
