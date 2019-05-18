module beginners.traveling;

import std.stdio, std.array, std.conv, std.range;

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
            if (!f(plans[index - 1], plans[index]))
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
    int time1 = plan1[0];
    int time2 = plan2[0];

    int x1 = plan1[1];
    int x2 = plan2[1];

    int y1 = plan1[2];
    int y2 = plan2[2];

    int timeLag = time1 >= time2 ? time1 - time2 : time2 - time1;
    int distanceX = x1 >= x2 ? x1 - x2 : x2 - x1;
    int distanceY = y1 >= y2 ? y1 - y2 : y2 - y1;

    int distance = distanceX + distanceY;

    if (timeLag < distance)
        return false;
    else if (timeLag % 2 == 0 && distance % 2 != 0)
        return false;
    else if (timeLag % 2 != 0 && distance % 2 == 0)
        return false;

    return true;
}