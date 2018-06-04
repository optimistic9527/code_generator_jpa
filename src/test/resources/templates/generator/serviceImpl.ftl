package ${basePackage}.${servicePackage}Impl;

import ${basePackage}.${daoPackage}.${doNameUpperCamel}Dao;
import ${basePackage}.entity.${doNameUpperCamel};
import ${basePackage}.${servicePackage}.${doNameUpperCamel}Service;
import org.springframework.data.domain.Page;
import org.springframework.data.querydsl.QPageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
/**
* ${tableComment}Service
* @author ${author}
* @date ${date}
*/
@Service
public class ${doNameUpperCamel}ServiceImpl implements ${doNameUpperCamel}Service{
    @Resource
    private ${doNameUpperCamel}Dao ${doNameUpperCamel ? uncap_first}Dao;

    @Transactional(readOnly = true)
    @Override
    public List<${doNameUpperCamel}> findAll(){
        return ${doNameUpperCamel ? uncap_first}Dao.findAll();
    }

    @Transactional(readOnly = true)
    @Override
    public ${doNameUpperCamel} getById(long id){
        return ${doNameUpperCamel ? uncap_first}Dao.getOne(id);
    }



    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class, readOnly = false)
    @Override
    public void insert(${doNameUpperCamel} ${doNameUpperCamel ? uncap_first}){
        ${doNameUpperCamel ? uncap_first}Dao.save(${doNameUpperCamel ? uncap_first});
    }

    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class, readOnly = false)
    @Override
    public void update(${doNameUpperCamel} ${doNameUpperCamel ? uncap_first}){
        ${doNameUpperCamel ? uncap_first}Dao.save(${doNameUpperCamel ? uncap_first});
    }

    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class, readOnly = false)
    @Override
    public void delete(long id){
        ${doNameUpperCamel ? uncap_first}Dao.delete(id);
    }

    @Transactional(readOnly = true)
    @Override
    public Page<${doNameUpperCamel}> findPage(int pageNum,int pageSize){
        return ${doNameUpperCamel ? uncap_first}Dao.findAll(new QPageRequest(pageNum,pageSize));
    }

}
