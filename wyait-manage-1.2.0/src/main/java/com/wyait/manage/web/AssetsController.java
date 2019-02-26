package com.wyait.manage.web;

import com.wyait.manage.pojo.Acceptance;
import com.wyait.manage.pojo.Department;
import com.wyait.manage.pojo.Moldnum;
import com.wyait.manage.pojo.Recording;
import com.wyait.manage.service.AcceptanceService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;


@Controller
@RequestMapping(value = "/assets")
public class AssetsController {
    @Resource
    private AcceptanceService acceptanceService;

    /**
     * 跳转到验收页面 --验收成功返回列表页面
     *
     * @return
     */
    @RequestMapping(value = "/Acceptance")
    public String acceptanceAssets() {

        return "acceptance";
    }

    /**
     * 验收成功返回资产列表页面
     *
     * @return
     */
    @RequestMapping(value = "/doAcceptance")
    public String doAcceptanceAssets(Acceptance acceptance, Moldnum moldnum) {
        boolean count;
        try {
            count = acceptanceService.addAssetsService(acceptance);
            count = acceptanceService.addMoldNum(moldnum);
            if (count) {
                return "redirect:/assets/acceptanceList";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/assets/doAcceptance";
    }

    /**
     * 资产列表页
     *
     * @return
     */
    @RequestMapping(value = "/acceptanceList")
    public String acceptanceList(Model model) {
        List<Acceptance> assetsList = null;
        List<Acceptance> acceptanceNames = null;
        try {
            assetsList = acceptanceService.getAssetsListService();
            model.addAttribute("assetsList", assetsList);
            acceptanceNames = acceptanceService.setAssetsName();
            model.addAttribute("acceptanceNames", acceptanceNames);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "acceptanceList";
    }

    /**
     * 资产管理_借出
     * 实现思路
     * 1)查询资产信息
     *
     * @return
     */
    @RequestMapping(value = "/loanedOut")
    public String loanedOut(Model model) {
        List<Acceptance> assetsList = null;
        try {
            assetsList = acceptanceService.getAcceptanceByStu();
            model.addAttribute("assetsList", assetsList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "loanedOutInfo";
    }

    /**
     * 资产管理_借出
     * 实现思路
     * 2)登记信息 3)查询部门将数据保存  recording表
     *
     * @return
     */
    @RequestMapping(value = "/doLoanedOut")
    public String doLoanedOut(String serialNum, Model model) {
        List<Department> departmentList = null;
        Acceptance acceptance = null;
        try {
            departmentList = acceptanceService.getDepartmentList();
            model.addAttribute("departmentList", departmentList);
            acceptance = acceptanceService.getAcceptanceByCode(serialNum);
            model.addAttribute("acceptance", acceptance);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "doLoanedOut";
    }

    /**
     * 借出成功 返回列表页面
     *
     * @return
     */

    @RequestMapping(value = "/lendASuccessful")
    public String lendASuccessful(Recording recording) {
        boolean count;
        try {
            count = acceptanceService.doLoanedOut(recording);
            if (count) {
                return "redirect:/assets/acceptanceList";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/assets/doLoanedOut";
    }

    /*借出失败！！！*/

    /**
     * 资产管理_维护
     * 查询全部列表更改模具状态
     *
     * @return
     */
    @RequestMapping(value = "/maintenance")
    public String Maintenance(Model model) {
        List<Acceptance> assetsList = null;
        try {
            assetsList = acceptanceService.getAcceptionListByState();
            model.addAttribute("assetsList", assetsList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "maintenance";
    }

    /**
     * 点击维护保养链接后跳转到列表也 点击维护保养进入
     * 维护保养页面  修改字段
     */
    @RequestMapping("/doMaintenance")
    public String doMaintenance(Model model, String serialNum) {
        Acceptance acceptance = null;
        try {
            acceptance = acceptanceService.getAcceptanceByCode(serialNum);
            model.addAttribute("acceptance", acceptance);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "doMaintenance";
    }
    /**
     * 资产管理_维修保养 添加数据  recording
     * @param recording
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/doMantain")
    public String doMantain(Recording recording){
        boolean count;
        try {
            count=acceptanceService.doMaintenance(recording);
            return"redirect:/assets/acceptanceList";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return"";
    }

    @RequestMapping("/count/{nameOfMoldTooling}")
    @ResponseBody
    public int getCountByName(@PathVariable String nameOfMoldTooling){
        return acceptanceService.getCountByName(nameOfMoldTooling);
    }
}
