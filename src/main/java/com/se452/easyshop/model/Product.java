package com.se452.easyshop.business;
/**
 *
 * @author Camille
 */

import java.text.NumberFormat;
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;

public class Product implements Serializable {
   
    private Long productId;    
    private String model;
    private String description;
    private double price;

    public Product() {}

    public Long getId() {
        return productId;
    }

    public void setId(Long productId) {
        this.productId = productId;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getModel() {
        return model;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
     public void setPrice(double price) {
        this.price = price;
    }

    public double getPrice() {
        return price;
    }
    public String getPriceCurrencyFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(price);
    }

    public String getImageURL() {
        String imageURL = "/EasyShop/images/" + model + ".jpg";
        return imageURL;
    }
 
}