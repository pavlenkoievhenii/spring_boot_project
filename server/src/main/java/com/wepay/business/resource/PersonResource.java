package com.wepay.business.resource;

import com.wepay.business.model.Seller;
import com.wepay.business.repo.SellerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PersonResource {
  @Autowired
  private SellerRepository sellerRepository;

  @PostMapping("/auth/seller")
  public ResponseEntity<String> getUser(@RequestBody Seller seller) {
    Seller actualSeller = sellerRepository.findByEmail(seller.getEmail());
    if (actualSeller == null) {
      return new ResponseEntity<>("账号不存在", HttpStatus.BAD_REQUEST);
    }
    if (!actualSeller.getSellerPassword().equals(seller.getSellerPassword())) {
      return new ResponseEntity<>("密码错误", HttpStatus.BAD_REQUEST);
    }
    return new ResponseEntity<>(HttpStatus.OK);
  }
}
