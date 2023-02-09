package com.jr.logindemo.model;

public class LoginModel {

    private String username;

    private String password;

    private String role;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public LoginModel(String username, String password, String role) {
        this.username = username;
        this.password = password;
        this.role = role;
    }
    public LoginModel(){}

    @Override
    public String toString() {
        return "LoginModel{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", role='" + role + '\'' +
                '}';
    }

    public int loggingIn(){
        if(username.equals("admin") && password.equals("admin")){
            return 1;
        }
        else if(username.equals("user") && password.equals("user")){
            return 2;
        }
        else{
            return 0;
        }
    }
}
