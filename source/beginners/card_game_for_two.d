module beginners.card_game_for_two;

import std.stdio, std.conv, std.array, std.algorithm;

void main()
{
    int cardL = readln.split[0].to!int;
    int[] cardVs = sort!("a > b")(readln.split.map!(v => v.to!int).array[0 .. cardL]).array;
    int[] alice;
    int[] bob;


    foreach(i; 0..cardL) {
        if ( i % 2 == 0)
            bob ~= cardVs[i]; 
        else
            alice ~= cardVs[i]; 
    }
    
    int r = sum(alice) - sum(bob);

    write(r < 0 ? r * -1 : r);
}
