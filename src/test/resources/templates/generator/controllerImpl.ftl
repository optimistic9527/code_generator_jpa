package ${basePackage}.${controllerPackage}Impl;

import ${basePackage}.${controllerPackage}.${doNameUpperCamel}Controller;
import ${basePackage}.${servicePackage}.${doNameUpperCamel}Service;
import ${basePackage}.core.ApiResponse;
import ${basePackage}.entity.${doNameUpperCamel};

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
/**
* ${tableComment}Controller
* @author ${author}
* @date ${date}
*/
@RestController
@Api(tags = "${tableComment}")
@RequestMapping("${tableName}")
public class ${doNameUpperCamel}ControllerImpl implements ${doNameUpperCamel}Controller{
    @Resource
    private ${doNameUpperCamel}Service ${doNameUpperCamel ? uncap_first}Service;

    @PostMapping("/add")
    @ApiOperation(value = "添加${tableComment}", notes = "添加${tableComment}")
    @Override
    public ApiResponse add(@RequestBody ${doNameUpperCamel} ${doNameUpperCamel ? uncap_first}) {
        ${doNameUpperCamel ? uncap_first}Service.insert(${doNameUpperCamel ? uncap_first});
        return ApiResponse.success();
    }

    @DeleteMapping("/delete/{id}")
    @ApiOperation(value = "删除${tableComment}", notes = "删除${tableComment}")
	@ApiImplicitParams({
		@ApiImplicitParam(required = true, name = "id", value = "主键ID", paramType = "path", dataType = "long")
	})
    @Override
    public ApiResponse delete(@PathVariable("id") long id) {
        ${doNameUpperCamel ? uncap_first}Service.delete(id);
        return ApiResponse.success();
    }

    @PutMapping("/update")
    @ApiOperation(value = "修改${tableComment}", notes = "修改${tableComment}")
    @Override
    public ApiResponse update(@RequestBody ${doNameUpperCamel} ${doNameUpperCamel ? uncap_first}) {
        ${doNameUpperCamel ? uncap_first}Service.update(${doNameUpperCamel ? uncap_first});
        return ApiResponse.success();
    }

    @GetMapping("/detail/{id}")
    @ApiOperation(value = "查询${tableComment}详情", notes = "查询${tableComment}详情")
	@ApiImplicitParams({
		@ApiImplicitParam(required = true, name = "id", value = "主键ID", paramType = "path", dataType = "long")
	})
    @Override
    public ApiResponse detail(@PathVariable("id") long id) {
        ${doNameUpperCamel} ${doNameUpperCamel ? uncap_first} = ${doNameUpperCamel ? uncap_first}Service.getById(id);
        return ApiResponse.success(${doNameUpperCamel ? uncap_first});
    }

    @GetMapping("/listPage")
    @ApiOperation(value = "分页查询${tableComment}", notes = "分页查询${tableComment}")
	@ApiImplicitParams({
		@ApiImplicitParam(required = true, name = "pageSize", value = "每页显示数量", paramType = "query", dataType = "int"),
		@ApiImplicitParam(required = true, name = "pageNum", value = "第几页", paramType = "query", dataType = "int")
	})
    @Override
    public ApiResponse listPage(@RequestParam("pageSize") int pageSize,@RequestParam("pageNum") int pageNum) {
        Page<${doNameUpperCamel}> p = ${doNameUpperCamel ? uncap_first}Service.findPage(pageSize,pageNum);
        return ApiResponse.success(p);
    }
}
