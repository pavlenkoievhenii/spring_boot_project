package com.wepay.business.repo;

import com.wepay.business.model.Seller;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SellerRepository extends JpaRepository<Seller, Long> {
  Seller findByEmail(String email);
}
