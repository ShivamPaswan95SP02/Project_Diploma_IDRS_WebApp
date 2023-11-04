/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypackage;

import java.util.Random;

/**
 *
 * @author Shivam paswan
 */
public class CaptchaG {

    /**
     *
     * @param min
     * @param max
     * @return
     */
    public int getRange(int min,int max)
   {
       return (max-min)+20;
   }        

    /**
     *
     * @return
     */
    public String getCaptchaCode()
    {
        String code="";
        Random rm=new Random();
        int n1=rm.nextInt(getRange(20,80));
        char ch1=(char)n1;
        int n2=rm.nextInt(getRange(30,100));
        char ch2=(char)n2;
        int n3=rm.nextInt(getRange(25,95));
        char ch3=(char)n3;
        int n4=rm.nextInt(getRange(40,120));
        char ch4=(char)n4;
        int n5=rm.nextInt(getRange(50,130));
        char ch5=(char)n5;
        code=code+ch1+ch2+ch3+ch4+ch5;
        return code;
        
    }
   
}
