module beginners.traveling;

import std.stdio, std.array, std.conv, std.math;

void main()
{
    bool isAnswerd;
    foreach (index; 0 .. readln.split[0].to!int)
    {
        int t, x, y;
        readf("%d %d %d\n", &t, &x, &y);
        if ((x + y) > t || (x + y + t) % 2)
        {
            isAnswerd = true;
            writeln("No");
            break;
        }
    }
    if (!isAnswerd)
        writeln("Yes");
}