/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Trong Huy
 */
public class User {

    private String id;
    private String userName;
    private String password;
    private String address;
    private String email;
    private String fullName;
    private String gender;
    private String phone;
    private String deliveryAddress;
    private String avatar;
    private int isAdmin;
    private int status;

    public User() {
    }

    public User(String id, String userName, String password, String address, String email, String fullName, String gender, String phone, String deliveryAddress) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.address = address;
        this.email = email;
        this.fullName = fullName;
        this.gender = gender;
        this.phone = phone;
        this.deliveryAddress = deliveryAddress;
    }
    
    public User(String id, String userName, String password, String address, String email, String fullName, String gender, String phone, String deliveryAddress, int isAdmin) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.address = address;
        this.email = email;
        this.fullName = fullName;
        this.gender = gender;
        this.phone = phone;
        this.deliveryAddress = deliveryAddress;
        this.isAdmin = isAdmin;
    }

    public User(String id, String userName, String password, String address, String email, String fullName, String gender, String phone, String deliveryAddress, String avatar) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.address = address;
        this.email = email;
        this.fullName = fullName;
        this.gender = gender;
        this.phone = phone;
        this.deliveryAddress = deliveryAddress;
        this.avatar = avatar;
    }

    public User(String id, String userName, String password, String address, String email, String fullName, String gender, String phone, String deliveryAddress, String avatar, int isAdmin) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.address = address;
        this.email = email;
        this.fullName = fullName;
        this.gender = gender;
        this.phone = phone;
        this.deliveryAddress = deliveryAddress;
        this.avatar = avatar;
        this.isAdmin = isAdmin;
    }
    
    public User(String id, String userName, String password, String address, String email, String fullName, String gender, String phone, String deliveryAddress, int status, String avatar) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.address = address;
        this.email = email;
        this.fullName = fullName;
        this.gender = gender;
        this.phone = phone;
        this.deliveryAddress = deliveryAddress;
        this.status = status;
        this.avatar = avatar;
    }

    public String getId() {
        return id;
    }

    public int getStatus() {
        return status;
    }

    public String getUserName() {
        return userName;
    }

    public String getPassword() {
        return password;
    }

    public String getAddress() {
        return address;
    }

    public String getEmail() {
        return email;
    }

    public String getFullName() {
        return fullName;
    }

    public String getGender() {
        return gender;
    }

    public String getPhone() {
        return phone;
    }

    public String getDeliveryAddress() {
        return deliveryAddress;
    }

    public String getAvatar() {
        return avatar;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setDeliveryAddress(String deliveryAddress) {
        this.deliveryAddress = deliveryAddress;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", userName=" + userName + ", password=" + password + ", address=" + address + ", email=" + email + ", fullName=" + fullName + ", gender=" + gender + ", phone=" + phone + ", deliveryAddress=" + deliveryAddress + ", avatar=" + avatar + ", isAdmin=" + isAdmin + '}';
    }

}
