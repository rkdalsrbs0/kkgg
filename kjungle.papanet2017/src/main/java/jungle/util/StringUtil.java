package jungle.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.StringTokenizer;

public class StringUtil {
	public static String nullConvert(String src) {

		if (src == null || src.equals("null") || "".equals(src) || " ".equals(src)) {
			return "";
		} else {
			return src.trim();
		}
	}

	public static String convert2CamelCase(String underScore) {

		// '_' 가 나타나지 않으면 이미 camel case 로 가정함.
		// 단 첫째문자가 대문자이면 camel case 변환 (전체를 소문자로) 처리가
		// 필요하다고 가정함. --> 아래 로직을 수행하면 바뀜
		if (underScore.indexOf('_') < 0 && Character.isLowerCase(underScore.charAt(0))) {
			return underScore;
		}
		StringBuilder result = new StringBuilder();
		boolean nextUpper = false;
		int len = underScore.length();

		for (int i = 0; i < len; i++) {
			char currentChar = underScore.charAt(i);
			if (currentChar == '_') {
				nextUpper = true;
			} else {
				if (nextUpper) {
					result.append(Character.toUpperCase(currentChar));
					nextUpper = false;
				} else {
					result.append(Character.toLowerCase(currentChar));
				}
			}
		}
		return result.toString();
	}

	public static String getDate() {
		return toDateFormat(Calendar.getInstance().getTime(), "yyyyMMdd");
	}

	public static String toDateFormat(Date date, String sFormat) {
		String sResult = "";

		try {
			SimpleDateFormat sdf = new SimpleDateFormat(sFormat, Locale.KOREAN);
			sResult = sdf.format(date);
		} catch (Exception ex) {
			return sResult;
		}
		return sResult;
	}
	
	public static String[] split(Object str, String delimiter) {
		if (str == null) {
			return null;
		}
		if (delimiter == null) {
			try{
				throw new NullPointerException("delimiter cannot be null");
			} catch(Exception e) {
				System.out.println("Null Pointer 에러 발생!");
			}
		}

		StringTokenizer st = new StringTokenizer(str.toString(), delimiter);
		String[] strarr = new String[st.countTokens()];

		for (int i = 0; i < strarr.length; i++) {
			strarr[i] = st.nextToken();
		 }

		return strarr;
	}
	public static String join(String[] strarr, String delimiter) {
		if (strarr == null) {
			return null;
		}
		if (delimiter == null) {
			try{
				throw new NullPointerException("delimiter cannot be null");
			} catch(Exception e) {
				System.out.println("Null Pointer 에러 발생!");
			}
		}

		String str = "";

		for (int i = 0; i < strarr.length; i++) {
			str += strarr[i];
			if (i < (strarr.length - 1)) {
				str += delimiter;
			}
		 }

		return str;
	}
	
	public static String isNullToString(Object object) {
		String string = "";

		if (object != null) {
			string = object.toString();
		}

		return string;
	}
}
