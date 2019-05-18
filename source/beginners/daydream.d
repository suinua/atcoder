module beginners.daydream;

import std.stdio,std.array;

void main(){
    immutable string[] unneccesaryWords = ["\n","eraser","erase","dreamer","dream"];

    string v = readln();

    foreach(string word; unneccesaryWords)
        v = v.replace(word,"");

    write(["YES","NO"][v ? 1 : 0]);
}
