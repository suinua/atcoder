module beginners.product;

import std.stdio, std.array, std.conv;

void main()
{
    auto r = readln.split;
    writeln(["Even", "Odd"][(r[0].to!int * r[1].to!int % 2) == 0 ? 0 : 1]);
}
