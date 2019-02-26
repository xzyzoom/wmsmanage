package com.wyait.manage.dao;

import com.wyait.manage.pojo.ProduceManagement;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 生产管理
 */
@Mapper
public interface ProductionMapper {
    /**
     * 生产管理_生产领料
     * @return
     * @throws Exception
     */
    public boolean pickingMaterials(ProduceManagement produceManagement)throws Exception;

    /**
     * 原料管理_生产出库
     * @return
     * @throws Exception
     */
    public List<ProduceManagement> materialsOut()throws Exception;

    /**
     * 生产管理_生产退料  查询领料记录  在其基础上退料
     * @return
     * @throws Exception
     */
    public List<ProduceManagement> getProducReceive()throws Exception;

    /**
     * 根据ID查借出记录信息
     * @param id
     * @return
     * @throws Exception
     */
    public ProduceManagement getProducReceiveById(Integer id) throws Exception;

    /**
     * 生产管理_生产退料
     * @param produceManagement
     * @return
     * @throws Exception
     */
    public boolean doMaterialsReturn(ProduceManagement produceManagement)throws Exception;

    /**
     * 生产管理_退料_退料成功跳转  退料页面  该方法查询退料记录
     * @return
     * @throws Exception
     */
    public List<ProduceManagement> getProducReturn()throws Exception;
}
