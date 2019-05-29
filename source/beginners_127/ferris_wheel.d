module beginners_127.ferris_wheel;

import std.stdio, std.algorithm;

void main()
{
    int age, cost;
    readf("%d %d\n", &age, &cost);
    writeln(age >= 13 ? cost : age <= 5 ? 0 : cost / 2);
}
