package ${basePackage}.${controllerPackage};

import ${basePackage}.entity.${doNameUpperCamel};
import com.company.project.core.ApiResponse;
/**
* ${tableComment}Controller
* @author ${author}
* @date ${date}
*/
public interface ${doNameUpperCamel}Controller {
    /**
    * 添加${doNameUpperCamel}
    * @param ${doNameUpperCamel ? uncap_first}
    * @return
    */
    ApiResponse add(${doNameUpperCamel} ${doNameUpperCamel ? uncap_first});

    /**
    *  根据id删除${doNameUpperCamel}
    * @param id
    * @return
    */
    ApiResponse delete(long id);

    /**
    * 修改${doNameUpperCamel}
    * @param ${doNameUpperCamel ? uncap_first}
    * @return
    */
    ApiResponse update(${doNameUpperCamel} ${doNameUpperCamel ? uncap_first});

    /**
    * 根据id获取${doNameUpperCamel}信息
    * @param id
    * @return
    */
    ApiResponse detail(long id);

    /**
    * 分页
    * @param pageSize 第几页
    * @param pageNum 显示多少
    * @return
    */
    ApiResponse listPage(int pageSize,int pageNum);
}
