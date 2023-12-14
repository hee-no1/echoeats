package com.pofol.main.product.service;

import com.pofol.main.product.domain.ProductDto;
import com.pofol.main.product.domain.ProductImageDto;
import com.pofol.main.product.repository.ProductRepository;
import com.pofol.util.AwsS3ImgUploaderService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Slf4j
@RequiredArgsConstructor
@Service
public class ProductServiceImpl implements ProductService {

    private final ProductRepository productRepository;

    private final AwsS3ImgUploaderService awsS3ImgUploaderService;

    @Override
    public void productEnroll(ProductDto productDto) {
        try {
            productRepository.insert(productDto);
            MultipartFile productImage = productDto.getProd_img();
            String imgUrl = awsS3ImgUploaderService.uploadImageToS3(
                    productDto.getProd_img(), "product");
            ProductImageDto productImageDto = new ProductImageDto();
            productImageDto.setProd_id(productDto.getProd_id());
            productImageDto.setOri_file_name(productImage.getOriginalFilename());
            productImageDto.setSer_file_name(String.valueOf(productDto.getProd_img()));
            productImageDto.setUpld_path(imgUrl);
            productImageDto.setRg_num(productDto.getRg_num());
            productImageEnroll(productImageDto);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public int productCount() {
        try {
            return productRepository.count();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void productImageEnroll(ProductImageDto productImageDto) throws Exception {
        productRepository.insertImage(productImageDto);
    }

}
