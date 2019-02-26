package com.wyait.manage.web;

import com.wyait.manage.pojo.Department;
import com.wyait.manage.pojo.ProduceManagement;
import com.wyait.manage.service.AcceptanceService;
import com.wyait.manage.service.ProduceManagementService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * 生产管理
 */
@Controller
@RequestMapping(value = "/produce")
public class ProductionController {
    @Resource
    private AcceptanceService acceptanceService;
    @Resource
    private ProduceManagementService produceManagementService;

    @RequestMapping(value = "/receive")
    public String pickingMaterials(Model model) {
        List<Department> departmentList = null;
        try {
            departmentList = acceptanceService.getDepartmentList();
            model.addAttribute("departmentList", departmentList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "productionReceive";
    }

    /**
     * 生产管理_生产领料
     *
     * @param produceManagement
     * @return
     */
    @RequestMapping(value = "/doReceive")
    public String doReceive(ProduceManagement produceManagement) {
        boolean count;
        try {
            count = produceManagementService.pickingMaterials(produceManagement);
        } catch (Exception e) {
            e.printStackTrace();
        }
        /*跳转到原料管理_生产出库*/
        return "redirect:/produce/materialsOut";
    }

    /**
     * 原料管理_生产出库
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/materialsOut")
    public String materialsReceive(Model model) {
        List<ProduceManagement> managementList = null;
        try {
            managementList = produceManagementService.getProducReceive();
            model.addAttribute("managementList", managementList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "materialsOut";
    }

    /**
     * 原料管理_生产退料   从查询到领料记录在领料基础上退料
     *
     * @return
     */
    @RequestMapping(value = "/materialsReturn")
    public String materialsReturn() {

        return "productionReturn";
    }

    /**
     * 生产管理_生产退料  查询领料记录  在其基础上退料
     *
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/getProducReceive")
    public String getProducReceive(Model model) {
        List<ProduceManagement> managementList = null;
        try {
            managementList = produceManagementService.getProducReceive();
            model.addAttribute("managementList", managementList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "receiveList";
    }

    /**
     * 领料列表跳转   执行退料
     * 根据ID查询数据 在修改字段将数据添加到 produce_management表
     *
     * @return
     */
    @RequestMapping(value = "/MaterialsReturn")
    public String MaterialsReturn(Integer id, Model model) {
        ProduceManagement produceManagement = null;
        try {
            produceManagement = produceManagementService.getProducReceiveById(id);
            model.addAttribute("produceManagement", produceManagement);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "producReceive";
    }

    /**
     * 原料管理_生产入库
     */
    @RequestMapping(value = "/doMaterialsReturn")
    public String getProducReturn(Model model) {
        List<ProduceManagement> produceManagements = null;
        try {
            produceManagements=produceManagementService.getProducReturn();
            model.addAttribute("produceManagements",produceManagements);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "materialsStorage";
    }

    /**
     * 执行生产退料-->跳转到原料管理-->生产入库
     *
     * @param produceManagement
     * @return
     */
    @RequestMapping(value = "/testMaterialsReturn")
    public String doMaterialsReturn(ProduceManagement produceManagement, Model model) {
        boolean count;
        List<ProduceManagement> produceManagements = null;
        try {
            count = produceManagementService.doMaterialsReturn(produceManagement);
            if (count) {
                produceManagements = produceManagementService.getProducReturn();
                model.addAttribute("produceManagements", produceManagements);
                return "redirect:/produce/doMaterialsReturn";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:/produce/getProducReceive";
    }

}

