package com.wyait.manage.service;

import com.wyait.manage.pojo.Acceptance;
import com.wyait.manage.pojo.Department;
import com.wyait.manage.pojo.Moldnum;
import com.wyait.manage.pojo.Recording;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AcceptanceService {
    /**
     * 验收管理_验收
     *
     * @param acceptance
     * @return
     * @throws Exception
     */
    public boolean addAssetsService(Acceptance acceptance) throws Exception;

    /**
     * 资产管理_验收  添加编号名称到moldNum表
     * @param
     * @return
     * @throws Exception
     */
    public boolean addMoldNum(Moldnum moldnum)throws Exception;

    /**
     * 资产管理_盘点 查询模具名称
     * @return
     * @throws Exception
     */
    public List<Acceptance> setAssetsName()throws  Exception;


    /**
     * 资产管理_查询列表
     *
     * @return
     * @throws Exception
     */
    public List<Acceptance> getAssetsListService() throws Exception;

    /**
     * 资产管理_借出   添加数据到 recording表
     *
     * @param recording
     * @return
     * @throws Exception
     */
    public boolean doLoanedOut(Recording recording) throws Exception;

    /**
     * 点击资产借出触发  根据模糊查询moldsState=0-待使用 1-待保养2-待维修3报废
     *
     * @return
     * @throws Exception
     */
    public List<Acceptance> getAcceptanceByStu() throws Exception;

    /**
     * 资产管理_借出_通过模具编号查询详细信息
     *
     * @return
     * @throws Exception
     */
    public Acceptance getAcceptanceByCode(String serialNum) throws Exception;

    /*  *
     * 资产管理_借出  登记部门信息  查询数据库部表信息
     * @return
     * @throws Exception
     */
    public List<Department> getDepartmentList() throws Exception;


    /**
     * 资产管理_维修保养  返回moldsState=1-待保养2-待维修
     * @return
     * @throws Exception
     */
    public List<Acceptance> getAcceptionListByState() throws Exception;

    /**
     * 资产管理_维修保养 添加数据  recording
     * @param recording
     * @return
     * @throws Exception
     */
    public boolean doMaintenance(Recording recording)throws Exception;

    /**
     * 通过名称查询记录数
     * @param nameOfMoldTooling
     * @return
     */
    int getCountByName(String nameOfMoldTooling);
}
