package kr.co.tt.board.main.controller;

import java.util.*;

public class CalendarEx {
	public static void main(String[] args) {
		 
        Calendar cal = Calendar.getInstance();
        Calendar cal2 = Calendar.getInstance();
        Calendar cal3 = Calendar.getInstance();

     
        
        int year = cal.get(cal.YEAR); //년도
        int month = cal.get ( cal.MONTH ) + 1 ; //월
       
        cal.set(cal.YEAR, year); //입력받은 년도로 세팅
        cal.set(cal.MONTH, month); //입력받은 월로 세팅
        cal3.set(cal.YEAR, year);
        cal3.set(cal.MONTH, cal.get ( cal.MONTH ));


        System.out.println("---------["+year+"년 "+month+"월]---------");
        System.out.println("   일      월      화      수      목     금      토");
        cal.set(year,month-1,1); //입력받은 월의 1일로 세팅
                                 //month는 0이 1월이므로 -1을 해준다
         
        cal2.set(year,month-2,1);
        cal3.set(year,month,1);
        
        int end = cal.getActualMaximum(cal.DATE); //해당 월 마지막 날짜
        int nextDoW = cal3.get(cal3.DAY_OF_WEEK);
        System.out.println(nextDoW);
        int dayOfWeek = cal.get(cal.DAY_OF_WEEK); //해당 날짜의 요일(1:일요일 … 7:토요일)
     
         
 
        for(int i=1; i<=end; i++) {
            if(i==1) {
                for(int j=1; j<dayOfWeek; j++) {
                    System.out.print("    ");
                }
            }
            if(i<10) { //한자릿수일 경우 공백을 추가해서 줄맞추기
                System.out.print(" ");
            }
            System.out.print(" "+i+" ");
            if(dayOfWeek%7==0) { //한줄에 7일씩 출력
                System.out.println();
            }
            dayOfWeek++;
            if(i==end) {
            	for(; nextDoW<=7; nextDoW++) {
            		
            		System.out.print(nextDoW);
            		
            	}
            }
        }
      
         
         
    } //main
}
