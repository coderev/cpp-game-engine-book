---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by captain.
--- DateTime: 5/21/2022 7:32 PM
---

require("lua_extension")

CppComponent=class("CppComponent",Component)

function CppComponent:ctor()
    CppComponent.super.ctor(self)
    self.cpp_component_instance_=nil --创建对应的C++实例
end

function CppComponent:set_game_object(game_object)
    CppComponent.super:set_game_object(game_object)
    game_object:cpp_game_object_instance():AttachComponent(self.cpp_component_instance_)
end

function CppComponent:Awake()
    CppComponent.super:Awake()
    self.cpp_component_instance_:Awake()
end

function CppComponent:Update()
    CppComponent.super:Update()
    self.cpp_component_instance_:Update()
end