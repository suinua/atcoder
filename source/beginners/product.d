module beginners.product;

import std.stdio, std.array, std.conv, std.algorithm;

void main()
{
    int[] r = readln.split.map!(n => n.to!int).array;
    writeln(["Even", "Odd"][(r[0] * r[1] % 2) == 0 ? 0 : 1]);
}
