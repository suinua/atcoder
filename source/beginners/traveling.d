module beginners.traveling;

import std.stdio, std.array, std.conv, std.math;

void main()
{
    bool isAnswerd;
    int totalIndex = readln.split[0].to!int;
    int[][] plans;

    foreach (index; 0 .. totalIndex)
    {
        int t, x, y;

        readf("%d %d %d\n", &t, &x, &y);
        plans ~= [t, x, y];
    }

    foreach (index; 0 .. totalIndex)
    {
        if (totalIndex == 1)
        {
            if (plans[0][0] < (plans[0][1] + plans[0][2])) {
                isAnswerd = true;
                writeln("No");
                break;
            }
            else if (plans[0][0] % (plans[0][1] + plans[0][2]) != 0)
            {
                isAnswerd = true;
                writeln("No");
                break;
            }
            else
            {
                isAnswerd = true;
                writeln("Yes");
                break;
            }
        }
        else if (index != 0)
            if (f(plans[index - 1], plans[index]))
            {
                isAnswerd = true;
                writeln("No");
                break;
            }
    }
    if (!isAnswerd)
        writeln("Yes");
}

bool f(int[] plan1, int[] plan2)
{
    int timeLag = abs(plan1[0] - plan2[0]);
    int distance = abs(plan1[1] - plan2[1]) + abs(plan1[2] - plan2[2]);

    if (timeLag < distance || (timeLag + distance) % 2)//95 0
        return true;
    return false;
}