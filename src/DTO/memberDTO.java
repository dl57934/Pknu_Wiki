package DTO;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class memberDTO {
    String id ;
    String pw;
    String name;
    String schoolNumber;
    public memberDTO(String id, String pw, String name, String schoolNumber){
        setId(id);
        setName(name);
        setPw(pw);
        setShoolNumber(schoolNumber);
    }
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        this.pw = pw;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getShoolNumber() {
        return schoolNumber;
    }

    public void setShoolNumber(String schoolNumber) {
        this.schoolNumber = schoolNumber;
    }
}
