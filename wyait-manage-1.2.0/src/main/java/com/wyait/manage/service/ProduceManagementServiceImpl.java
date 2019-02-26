package com.wyait.manage.service;

import com.wyait.manage.dao.ProductionMapper;
import com.wyait.manage.pojo.ProduceManagement;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ProduceManagementServiceImpl implements ProduceManagementService {
    @Resource
    private ProductionMapper productionMapper;

    /**
     * 生产管理_生产领料
     *
     * @return
     * @throws Exception
     */
    @Override
    public boolean pickingMaterials(ProduceManagement produceManagement) throws Exception {
        return productionMapper.pickingMaterials(produceManagement);
    }
    /**
     * 原料管理_生产出库
     * @return
     * @throws Exception
     */
    @Override
    public List<ProduceManagement> materialsOut()throws Exception{
        return productionMapper.materialsOut();
    }


    /**
     * 生产管理_生产退料  查询领料记录  在其基础上退料
     * @return
     * @throws Exception
     */
    @Override
    public List<ProduceManagement> getProducReceive()throws Exception{
        return  productionMapper.getProducReceive();
    }

    /**
     * 根据ID查借出记录信息
     * @param id1
     * @return
     * @throws Exception
     */
    public ProduceManagement getProducReceiveById(Integer id) throws Exception{
        return productionMapper.getProducReceiveById(id);

        }
    /**
     * 生产管理_生产退料
     * @param produceManagement
     * @return
     * @throws Exception
     */
    public boolean doMaterialsReturn(ProduceManagement produceManagement)throws Exception{
        return productionMapper.doMaterialsReturn(produceManagement);
    }


    /**
     * 生产管理_退料_退料成功跳转  退料页面  该方法查询退料记录
     * @return
     * @throws Exception
     */
    public List<ProduceManagement> getProducReturn()throws Exception{
        return productionMapper.getProducReturn();
    }
}
