package com.wepay.business.resource;

import ch.qos.logback.core.net.ObjectWriter;
import com.wepay.business.model.Good;
import com.wepay.business.repo.GoodRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = {"http://localhost:9000"} )
@RestController
@RequestMapping("/api")
public class GoodResource {
    @Autowired
    GoodRepository repository;

    @GetMapping("/getGood")
    public List<Good> getAllGoods() {
        return repository.findAll();
    }

    @GetMapping(path = "/goodDetail/{id}")
    public Optional<Good> getGood(@PathVariable Long id) {
        return repository.findById(id);
    }

    @PostMapping(path = "/update/{id}", consumes = "application/json", produces = "application/json")
    public Good updateGood(@PathVariable Long id, @RequestBody Good good) {
        Optional<Good> oldGood = repository.findById(id);
        if(!oldGood.isPresent()) {
            //return ResponseEntity.notFound().build();
            return good;
        } else {
            repository.save(good);
            return good;
        }
    }

    @PostMapping(path = "/deleteGood/{id}")
    public void deleteGood(@PathVariable Long id) {
        repository.deleteById(id);
    }
}
