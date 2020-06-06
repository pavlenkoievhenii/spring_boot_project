package com.wepay.business.model;

import javax.persistence.*;

@Entity
@Table(name = "seller")
public class Seller {
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  @Column(name = "sellerId")
  private long sellerId;
  @Column(name = "sellerName")
  private String sellerName;
  @Column(name = "sellerPassword")
  private String sellerPassword;
  @Column(name = "balance")
  private long balance;
  @Column(name = "bankCard")
  private String bankCard;
  @Column(name = "realName")
  private String realName;
  @Column(name = "phoneNumber")
  private String phoneNumber;
  @Column(name = "sellerImgUrl")
  private String sellerImgUrl;
  @Column(name = "bankName")
  private String bankName;
  @Column(name = "email")
  private String email;


  public long getSellerId() {
    return sellerId;
  }

  public void setSellerId(long sellerId) {
    this.sellerId = sellerId;
  }


  public String getSellerName() {
    return sellerName;
  }

  public void setSellerName(String sellerName) {
    this.sellerName = sellerName;
  }


  public String getSellerPassword() {
    return sellerPassword;
  }

  public void setSellerPassword(String sellerPassword) {
    this.sellerPassword = sellerPassword;
  }

  public Seller() {

  }

  public Seller(String email, String sellerPassword) {
    this.email = email;
    this.sellerPassword = sellerPassword;
  }


  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

}
