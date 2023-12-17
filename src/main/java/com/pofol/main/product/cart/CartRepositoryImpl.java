package com.pofol.main.product.cart;

import com.pofol.main.orders.order.domain.ProductOrderCheckout;
import com.pofol.main.product.domain.OptionProductDto;
import com.pofol.main.product.domain.ProductDto;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class CartRepositoryImpl implements CartRepository {

    private final String namespace = "ecoeats.cartMapper.";
    private final SqlSession sqlSession;

    @Override // 장바구니 상품 주문쪽으로 넘기기
    public ProductOrderCheckout selectProductOrderCheckout(SelectedItemsDto selectedItemsDto) throws Exception{
        return sqlSession.selectOne(namespace + "selectProductOrderCheckout", selectedItemsDto);
    }

    @Override // 장바구니에 상품 데이터 저장
    public int insertCartProduct(CartDto cartDto) throws Exception {
        return sqlSession.insert(namespace + "insertCartProduct", cartDto);
    }

    @Override // 이미 담긴 상품 담을 시 수량 증가
    public int updateCartProduct(CartDto cartDto) throws Exception {
        return sqlSession.update(namespace + "updateCartProduct", cartDto);
    }

    @Override
    public int deleteCartProduct(CartDto cartDto) throws Exception {
        return sqlSession.delete(namespace + "deleteCartProduct", cartDto);
    }

    @Override // 장바구니에 담긴 상품 리스트 정렬
    public List<CartDto> selectAllCartProduct(String mem_id) throws Exception {
        return sqlSession.selectList(namespace + "selectAllCartProduct", mem_id);
    }







    

    @Override
    public ProductDto selectProduct(Long prod_id) throws Exception {
        return sqlSession.selectOne(namespace+"selectProduct",prod_id);
    }

    @Override
    public OptionProductDto selectOptionProduct(String opt_prod_id) throws Exception {
        return sqlSession.selectOne(namespace+"selectOptionProduct",opt_prod_id);
    }
}
