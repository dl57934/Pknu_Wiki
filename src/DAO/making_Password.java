package DAO;

import sun.misc.BASE64Encoder;
import java.security.MessageDigest;
import java.security.SecureRandom;

public class making_Password {
    public static String getPassword(String password, String salt){
        String encriptPassword ="";
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            digest.reset();
            digest.update(salt.getBytes());
            byte[] input = digest.digest(password.getBytes("UTF-8"));
            for(int i = 0; i< 1000; i++){
                digest.reset();
                input = digest.digest(input);
            }
            BASE64Encoder encoder = new BASE64Encoder();
            encriptPassword = encoder.encode(input);
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return encriptPassword;
    }
    public static String getSalt(){
        String value = "";
        try{
            SecureRandom secureRandom = SecureRandom.getInstance("SHA1PRNG");
            byte[] salt = new byte[16];
            secureRandom.nextBytes(salt);
            value = salt.toString();
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return value;
    }
}
