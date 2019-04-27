module beginners.shift_only;

import std.stdio, std.array, std.conv, std.algorithm;

void main()
{
    int length = readln.split[0].to!int;
    int[] v = readln.split.map!(a => a.to!int).array[0..length];
    writef("%s",p(v,0)[0]);
}

int[] p(int[] l,int count)
{
    foreach (n; l)
    {
        if (n % 2 != 0)
            return [count];
    }

    ++count;
    return p(l[] /= 2,count);
}