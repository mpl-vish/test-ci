package com.test;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        while(true){
            try {
                Thread.sleep(10000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println( "Hello World!" );
        }

    }
}
