//
//  main.m
//  LearnBlock
//
//  Created by xyqm on 16/12/1.
//  Copyright © 2016年 栾高垒. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 总结:
 
 1.如何定义block
 int (^reduceInt)(int, int);
 void (^reduceInt)();
 
 2.如何利用block封装代码
 ^{
    NSLog(@"Hello, World!");
 };
 
 ^(){
    NSLog(@"Hello, World!");
 };
 
 ^(int a, int b){
    return a + b;
 };
 
 3.block访问外面变量
  * block内部可以访问外面的变量
  * 默认情况下,block内部不能修改外面的局部变量
  * 给外面的局部变量加上__block关键字,就可以在block内部修改其的值
 
 4.利用typedef定义block类型
 typedef int (^MyBlock)(int, int);//MyBlock是block的类型,就可以使用MyBlock这种类型来定义block变量
 例:
    MyBlock block;
    MyBlock b1, b2;
    类似: 
        int a;
        int b;
        int a, b;
 
    b1 = ^(int a, int b){
        return a + b;
    };
 
    MyBlock b3 = ^(int a, int b){
        return a + b;
    };
 */



typedef int (^MyBlock)(int, int);//MyBlock是block的类型

//没有返回值/形参的block
void test(){
    //block用来保存一段代码
    //block的标识: ^
    /*
     block很函数很像:
     1.可以保存代码
     2.有返回值
     3.有形参
     4.调用方式一样
     */
    //返回值类型 + () + "^" + block的变量名 + ()第二个小括号里面是形参 + "=" + ";"
    
    //1.定义block
    //(^myBlock)()表示block类型 ===> int
    //myBlock == > 变量名
    void (^myBlock)() = ^{
        NSLog(@"Hello, World!");
    };
    
    int a = 10;
    
    //2.利用block变量调用block内部的代码
    myBlock();
}

//有参数有返回值的block
void test111(){
    int (^myTwoBlock)(int, int) = ^(int a, int b){
        return a + b;
    };
    int c = myTwoBlock(1, 2);
    NSLog(@"%d", c);
}

//用block实现输出n条线
void test2(){
    void (^nLine)(int) = ^(int n){
        for (int i = 0; i < n; i++) {
            NSLog(@"============================");
        }
    };
    nLine(10);
}

//typedef 定义block
void test3(){
//    int (^sumInt)(int, int) = ^(int a, int b){
//        return a + b;
//    };
//    sumInt(1, 2);
//    
//    
//    int (^reduceInt)(int, int);
//    reduceInt = ^(int a , int b){
//        return a - b;
//    };
//    reduceInt(3, 6);
    MyBlock sumInt = ^(int a, int b){
        return a + b;
    };
    sumInt(1, 2);

    MyBlock reduceInt = ^(int a, int b){
        return a - b;
    };
    reduceInt(3, 6);

}

//block访问变量
void test4(){
    int a = 10;
    __block int b = 20;
    void(^block)();
    block = ^{
        //block内部可以访问外面的变量
        NSLog(@"%d", a);
        
        //默认情况下,block内部不能修改外面的局部变量
        //a = 20;//这样不行
        
        //给外面的局部变量加上__block关键字,就可以在block内部修改其的值
        b = 25;
    };
}

//练习
typedef int (^hahaBlock)(int, int);
void text(){
    hahaBlock myblock = ^(int a, int b){
        return a * b;
    };
    int c = myblock(3, 4);
    
    int (^addBlock)(int, int) = ^(int a, int b){
        return a + b;
    };
    int d = addBlock(10, 9);
    
    NSLog(@"%d,    %d", c, d);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        text();
    }
    return 0;
}

