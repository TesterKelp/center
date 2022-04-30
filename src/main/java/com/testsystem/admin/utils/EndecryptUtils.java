package com.testsystem.admin.utils;

import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.Md5Hash;

import com.google.common.base.Preconditions;
import com.google.common.base.Strings;

public class EndecryptUtils {
    /**
     * ���������md5����,���������ĺ�salt������User������
     * @param username �û���
     * @param password ����
     * @return ���ĺ�salt
     */
    public static String md5Password(String username,String password){
        Preconditions.checkArgument(!Strings.isNullOrEmpty(username),"username����Ϊ��");
        Preconditions.checkArgument(!Strings.isNullOrEmpty(password),"password����Ϊ��");
        SecureRandomNumberGenerator secureRandomNumberGenerator=new SecureRandomNumberGenerator();
        String salt= secureRandomNumberGenerator.nextBytes().toHex();
        //���username,���ε���������м���
        System.out.println("user="+username+", password="+password+", salt="+salt);
//        String password_cipherText= new Md5Hash(password,username+salt,2).toBase64();
        String password_cipherText= new Md5Hash(password,password,2).toBase64();
        System.out.println("endecpassword="+password_cipherText);
//        user.setPassword(password_cipherText);
//        user.setSalt(salt);
//        user.setUsername(username);
  return  password_cipherText ;
    } 
	
}
