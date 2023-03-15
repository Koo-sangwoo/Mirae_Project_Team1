import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.music.pro.model.product.ProductService;

public class TestCase {

	@Autowired
	ProductService service;
	SqlSessionTemplate mybatis;
	@Test
	public void test() {
		mybatis.selectList("ProductVO.productAll");
		System.out.println();
		fail("데이터 로딩 실패");
	}

}
