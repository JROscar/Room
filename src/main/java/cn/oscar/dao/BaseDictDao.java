package cn.oscar.dao;

import cn.oscar.entity.BaseDict;

import java.util.List;

/**
 * 数据字典
 */
public interface BaseDictDao {
	// 根据类别代码查询数据字典
    public List<BaseDict> selectBaseDictByTypeCode(String typecode);
}
