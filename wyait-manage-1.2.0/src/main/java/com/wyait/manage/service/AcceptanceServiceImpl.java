package com.wyait.manage.service;


import com.wyait.manage.dao.AcceptanceMapper;
import com.wyait.manage.pojo.Acceptance;
import com.wyait.manage.pojo.Department;
import com.wyait.manage.pojo.Moldnum;
import com.wyait.manage.pojo.Recording;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AcceptanceServiceImpl implements AcceptanceService {
    @Resource
    private AcceptanceMapper acceptanceMapper;

    /**
     * 资产管理_验收
     * @param acceptance
     * @return
     * @throws Exception
     */
    @Override
    public boolean addAssetsService(Acceptance acceptance) throws Exception {
        return acceptanceMapper.addAssetsDao(acceptance);
    }
    /**
     * 资产管理_验收  添加编号名称到moldNum表
     * @param
     * @return
     * @throws Exception
     */
    @Override
    public boolean addMoldNum(Moldnum moldnum) throws Exception {
        return acceptanceMapper.addMoldNum(moldnum);
    }
    /**
     * 资产管理_盘点 查询模具名称
     * @return
     * @throws Exception
     */
    @Override
    public List<Acceptance> setAssetsName() throws Exception {
        return acceptanceMapper.setAssetsName();
    }


    /**
     * 资产管理_查询列表
     * @return
     * @throws Exception
     */
    @Override
    public List<Acceptance> getAssetsListService() throws Exception {
        return acceptanceMapper.getAssetsListDao();
    }

    /**
     *资产管理_借出
     * @param recording
     * @return
     * @throws Exception
     */
    @Override
    public boolean doLoanedOut(Recording recording) throws Exception {
        return acceptanceMapper.doLoanedOut(recording);
    }
    /**
     * 点击资产借出触发  根据模糊查询moldsState=0-待使用 1-待保养2-待维修3报废
     *
     * @return
     * @throws Exception
     */
    @Override
    public List<Acceptance> getAcceptanceByStu() throws Exception {
        return acceptanceMapper.getAcceptanceByStu();
    }
    /**
     * 资产管理_借出_通过模具编号查询详细信息
     *
     * @return
     * @throws Exception
     */
    @Override
    public Acceptance getAcceptanceByCode(String serialNum) throws Exception {
        return acceptanceMapper.getAcceptanceByCode(serialNum);
    }


    /**
     * 资产管理_借出  登记部门信息  查询数据库部表信息
     * @return
     * @throws Exception
     */
    @Override
    public List<Department> getDepartmentList() throws Exception {
        return acceptanceMapper.getDepartmentList();
    }
    /**
     * 资产管理_维修保养  返回moldsState=1-待保养2-待维修
     * @return
     * @throws Exception
     */
    @Override
    public List<Acceptance> getAcceptionListByState() throws Exception {
        return acceptanceMapper.getAcceptionListByState();
    }
    /**
     * 资产管理_维修保养 添加数据  recording
     * @param recording
     * @return
     * @throws Exception
     */
    @Override
    public boolean doMaintenance(Recording recording) throws Exception {
        return acceptanceMapper.doMaintenance(recording);
    }

    /**
     * 通过名称查询记录数
     * @param nameOfMoldTooling
     * @return
     */
    @Override
    public int getCountByName(String nameOfMoldTooling) {
        return  acceptanceMapper.getCountByName(nameOfMoldTooling);
    }
}
