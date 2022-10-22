// See https://aka.ms/new-console-template for more information 642 28
Console.WriteLine("Введите число");
var number = int.Parse(Console.ReadLine());

var k = 2;
var a = number;
var prev = 0;
var isFinish = false;
var count = 0;
var isDone = true;
while (!isFinish)
{
    if (a % k == 0)
    {
        a = a / k;
        if (k == nextSimple(prev))
        {
            count++;
            prev = k;
        }
        else if (prev == 0)
        {
            prev = k;
            count++;
        }
        else
        {
            isFinish = true;
            isDone = false;
        }
    }
    else if (a == 1)
    {
        isFinish = true;
    }
    else
    {
        k++;
    }
}
if(count!=3)
{
    isDone = false;
}
if (isDone)
{
    Console.WriteLine("Да, число можно представить в виде произведения трех последовательных простых чисел");
}
else
{
    Console.WriteLine("Нет, число нельзя представить в виде произведения трех последовательных простых чисел");
}

Console.ReadLine();

static int nextSimple(int N)
{
    var isFind = false;
    while (!isFind)
    {
        if (isSimple(++N))
        {
            isFind = true;
        }
    }
    return N;
}


static bool isSimple(int N)
{
    bool tf = false;
    if (N == 2 || N == 3 || N == 5)
    {
        tf = true;
    }
    else
    {
        for (int i = 2; i < (int)(N / 2); i++)
        {
            if (N % i == 0)
            {
                tf = false;
                break;
            }
            else
            {
                tf = true;
            }
        }
    }
    return tf;
}
