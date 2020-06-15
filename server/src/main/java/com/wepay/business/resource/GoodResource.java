package com.wepay.business.resource;

import com.wepay.business.model.Good;
import com.wepay.business.repo.GoodRepository;
import com.wepay.business.resource.storage.StorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;
import java.util.Optional;

@CrossOrigin
@RestController
@RequestMapping("/api")
public class GoodResource {
  @Autowired
  private GoodRepository repository;

  private final StorageService storageService;

  public GoodResource(StorageService storageService) {
    this.storageService = storageService;
  }

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
    if (oldGood.isPresent()) {
      repository.save(good);
    }
    return good;
  }

  @PostMapping(path = "/deleteGood/{id}")
  public void deleteGood(@PathVariable Long id) {
    repository.deleteById(id);
  }

  @PostMapping(path = "/img")
  public String uploadImg(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes) {
    String fileName = storageService.store(file);
    redirectAttributes.addFlashAttribute("message", "You successfully uploaded" + file.getOriginalFilename() + "!");
    return fileName;
  }

  @PostMapping(path = "/upload")
  public Good upload(@RequestBody Good good) {
    return repository.save(good);
  }
}
