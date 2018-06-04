package ${basePackage}.${servicePackage};

import ${basePackage}.entity.${doNameUpperCamel};
import org.springframework.data.domain.Page;


import java.util.List;
/**
* ${tableComment}Service
* @author ${author}
* @date ${date}
*/
public interface ${doNameUpperCamel}Service{
    /**
    * 查询所有信息
    * @return List<${doNameUpperCamel}> 记录集
    */
    List<${doNameUpperCamel}> findAll();
    /**
    * 主键获取记录
    * @param id 主键
    * @return ${doNameUpperCamel} 记录
    */
     ${doNameUpperCamel} getById(long id);
    /**
    * 添加记录
    * @param ${doNameUpperCamel ? uncap_first} 添加信息
    * @return int 返回值
    */
    void insert(${doNameUpperCamel} ${doNameUpperCamel ? uncap_first});
    /**
    * 修改记录
    * @param ${doNameUpperCamel ? uncap_first} 需要修改信息
    * @return int 返回值
    */
    void update(${doNameUpperCamel} ${doNameUpperCamel ? uncap_first});
    /**
    * 删除记录
    * @param id 主键ID
    */
     void delete(long id);
    /**
    * 分页查询
    * @return Page<${doNameUpperCamel}> 分页信息
    */
     Page<${doNameUpperCamel}> findPage(int pageNum,int pageSize);
}
