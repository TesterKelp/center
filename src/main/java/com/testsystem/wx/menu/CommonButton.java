package com.testsystem.wx.menu;

/**
 * 类名: CommonButton </br>
 * 包名： com.wx.bean
 * 描述: 子菜单项 :没有子菜单的菜单项，有可能是二级菜单项，也有可能是不含二级菜单的一级菜单。 </br>
 * 开发人员： 六  </br>
 * 创建时间：  2018-8-9 </br>
 * 发布版本：V1.0  </br>
 */
public class CommonButton extends Button {

    private String type;
    private String key;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }
}