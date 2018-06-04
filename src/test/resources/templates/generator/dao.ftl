package ${basePackage}.${daoPackage};

import ${basePackage}.entity.${doNameUpperCamel};
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
/**
* ${tableComment}DAO
* @author ${author}
* @date ${date}
*/
@Repository
public interface ${doNameUpperCamel}Dao extends JpaRepository<${doNameUpperCamel},Long>{

}
