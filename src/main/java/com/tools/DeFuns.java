package com.tools;

import java.io.UnsupportedEncodingException;

public class DeFuns {
	public static String convertoUtf8(String s) {
		if (s == null)return null;
		try {
			s = new String(s.getBytes("iso-8859-1") ,"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s; 
	}

}
