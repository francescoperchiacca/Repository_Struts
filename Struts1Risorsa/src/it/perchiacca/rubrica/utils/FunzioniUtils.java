package it.perchiacca.rubrica.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class FunzioniUtils {

	public static void main(String[] args) {
		Date dataDate = convertiStringaInData("11/11/2011");
		System.out.println(dataDate);
	}
	
	public static Date convertiStringaInData(String data){
		Date dataDate = new Date(0);
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		if( !("").equals(data)){
			try {
				dataDate = format.parse(data);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		return dataDate;
	}
	
}
