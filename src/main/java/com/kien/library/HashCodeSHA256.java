package com.kien.library;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class HashCodeSHA256 {
	 public static String hashSHA256(String input) {
	        try {
	            MessageDigest digest = MessageDigest.getInstance("SHA-256");
	            byte[] encodedHash = digest.digest(input.getBytes(StandardCharsets.UTF_8));

	            StringBuilder hexString = new StringBuilder();
	            for (byte b : encodedHash) {
	                String hex = String.format("%02x", b);
	                hexString.append(hex);
	            }

	            return hexString.toString();
	        } catch (NoSuchAlgorithmException e) {
	            e.printStackTrace();
	            return null;
	        }
	    }
	 
	 public Boolean checkCode(String code, String hashCode) {
		 String codeHashed = hashSHA256(code);
		 return hashCode.equalsIgnoreCase(codeHashed);
	 }
}
