package com.pofol.main.product.category;

import lombok.Getter;
import lombok.ToString;

import java.util.Objects;

@Getter
@ToString
public class CategoryDto {

  private String cat_code;
  private String tier;
  private String cat_name;
  private String parent_code;

  public CategoryDto() {
  }

  public void setCat_code(String cat_code) {
    this.cat_code = cat_code;
  }

  public void setTier(String tier) {
    this.tier = tier;
  }

  public void setCat_name(String cat_name) {
    this.cat_name = cat_name;
  }

  public void setParent_code(String parent_code) {
    this.parent_code = parent_code;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    CategoryDto that = (CategoryDto) o;
    return Objects.equals(cat_code, that.cat_code) && Objects.equals(tier, that.tier) && Objects.equals(cat_name, that.cat_name) && Objects.equals(parent_code, that.parent_code);
  }

  @Override
  public int hashCode() {
    return Objects.hash(cat_code, tier, cat_name, parent_code);
  }
}
