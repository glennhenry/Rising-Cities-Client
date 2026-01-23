package net.bigpoint.cityrama.view.residentialBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.State;
   import net.bigpoint.cityrama.view.citysquare.ui.components.SlimProgressBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ImprovementSlotComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class ImprovementSlotPreviewSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1931666281fullProgressBar:SlimProgressBarComponent;
      
      private var _361121306improBadge:BriskImageDynaLib;
      
      private var _1926122798improBg:BriskImageDynaLib;
      
      private var _1429205699improvementGfx:BriskImageDynaLib;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _1234516103progressBarGroup:HGroup;
      
      private var _2053116446unlimitedGroup:HGroup;
      
      private var _2057214611unlimitedLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:ImprovementSlotComponent;
      
      public function ImprovementSlotPreviewSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.mxmlContent = [this._ImprovementSlotPreviewSkin_Group1_c()];
                  if(_loc2_ || Boolean(this))
                  {
                     addr0048:
                     this.currentState = "normal";
                     if(_loc2_ || _loc2_)
                     {
                        this.addEventListener("creationComplete",this.___ImprovementSlotPreviewSkin_SparkSkin1_creationComplete);
                        addr005c:
                        if(_loc2_)
                        {
                           states = [new State({
                              "name":"normal",
                              "overrides":[]
                           }),new State({
                              "name":"disabled",
                              "overrides":[]
                           }),new State({
                              "name":"highlight",
                              "overrides":[]
                           }),new State({
                              "name":"highlightOver",
                              "overrides":[]
                           }),new State({
                              "name":"down",
                              "overrides":[]
                           }),new State({
                              "name":"over",
                              "overrides":[]
                           }),new State({
                              "name":"up",
                              "overrides":[]
                           })];
                           addr0077:
                        }
                        §§goto(addr00fe);
                     }
                     §§goto(addr0077);
                  }
                  addr00fe:
                  return;
               }
               §§goto(addr0077);
            }
            §§goto(addr0048);
         }
         §§goto(addr005c);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0041);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr0041:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            this.unlimitedLabel.text = ResourceManager.getInstance().getString(String("rcl.booklayer.residentialImprovement"),String("rcl.booklayer.residentialImprovement.unlimited.capital"));
         }
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            §§push(currentState == "highlight");
            if(!(_loc3_ && Boolean(param1)))
            {
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               §§push(_temp_4);
               if(!(_loc3_ && param2))
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(_loc4_ || param2)
                        {
                           §§push(param1);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push("over");
                              if(!_loc3_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc4_ || param2)
                                 {
                                    addr0081:
                                    if(§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          §§push("highlightOver");
                                          if(_loc4_)
                                          {
                                             param1 = §§pop();
                                             if(_loc4_ || Boolean(this))
                                             {
                                                addr00ae:
                                                §§push(currentState == "highlight");
                                                if(!_loc3_)
                                                {
                                                   var _temp_10:* = §§pop();
                                                   §§push(_temp_10);
                                                   §§push(_temp_10);
                                                   if(_loc4_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §§pop();
                                                            if(!_loc3_)
                                                            {
                                                               addr00d1:
                                                               §§push(currentState == "highlightOver");
                                                               if(!(_loc3_ && param2))
                                                               {
                                                                  addr00e5:
                                                                  var _temp_12:* = §§pop();
                                                                  addr00e6:
                                                                  §§push(_temp_12);
                                                                  if(_temp_12)
                                                                  {
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        addr00f8:
                                                                        §§pop();
                                                                        if(_loc4_ || param2)
                                                                        {
                                                                           addr0107:
                                                                           addr010b:
                                                                           addr0108:
                                                                           §§push(param1 == "up");
                                                                           if(_loc4_)
                                                                           {
                                                                              addr0112:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc4_ || Boolean(param1))
                                                                                 {
                                                                                    addr0137:
                                                                                    addr0124:
                                                                                    if(this.hostComponent.highlight)
                                                                                    {
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          addr014b:
                                                                                          param1 = "highlight";
                                                                                          addr0148:
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             addr015a:
                                                                                             super.setCurrentState(param1,param2);
                                                                                          }
                                                                                       }
                                                                                       return;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr015a);
                                                                           }
                                                                           §§goto(addr0137);
                                                                        }
                                                                        §§goto(addr0148);
                                                                     }
                                                                     §§goto(addr0137);
                                                                  }
                                                                  §§goto(addr0112);
                                                               }
                                                               §§goto(addr0137);
                                                            }
                                                            §§goto(addr0107);
                                                         }
                                                         §§goto(addr0137);
                                                      }
                                                      §§goto(addr00e5);
                                                   }
                                                   §§goto(addr00e6);
                                                }
                                                §§goto(addr0137);
                                             }
                                             §§goto(addr0124);
                                          }
                                          §§goto(addr014b);
                                       }
                                       §§goto(addr0148);
                                    }
                                    §§goto(addr00ae);
                                 }
                                 §§goto(addr00f8);
                              }
                              §§goto(addr010b);
                           }
                           §§goto(addr0108);
                        }
                        §§goto(addr0124);
                     }
                     §§goto(addr00f8);
                  }
                  §§goto(addr0081);
               }
               §§goto(addr00e6);
            }
            §§goto(addr0137);
         }
         §§goto(addr00d1);
      }
      
      private function _ImprovementSlotPreviewSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 138;
            if(_loc2_)
            {
               _loc1_.height = 138;
               addr002b:
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._ImprovementSlotPreviewSkin_BriskImageDynaLib1_c(),this._ImprovementSlotPreviewSkin_VGroup1_c()];
                  §§goto(addr0041);
               }
               §§goto(addr007d);
            }
            addr0041:
            if(_loc2_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr007d:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr002b);
      }
      
      private function _ImprovementSlotPreviewSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "slot_highlight";
               if(_loc2_)
               {
                  addr0057:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr006b:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0057);
         }
         §§goto(addr006b);
      }
      
      private function _ImprovementSlotPreviewSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_ || _loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.percentHeight = 100;
                  addr004a:
                  if(!_loc2_)
                  {
                     addr0061:
                     _loc1_.gap = 0;
                     if(_loc3_)
                     {
                        _loc1_.paddingTop = 8;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr007e:
                           _loc1_.verticalCenter = -3;
                           if(_loc3_)
                           {
                              _loc1_.mxmlContent = [this._ImprovementSlotPreviewSkin_Group2_c(),this._ImprovementSlotPreviewSkin_HGroup2_i(),this._ImprovementSlotPreviewSkin_HGroup3_i()];
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr00b8:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00cc:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                              §§goto(addr00d0);
                           }
                           §§goto(addr00cc);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr00b8);
               }
               addr00d0:
               return _loc1_;
            }
            §§goto(addr004a);
         }
         §§goto(addr0061);
      }
      
      private function _ImprovementSlotPreviewSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.alpha = 0.5;
            if(_loc2_)
            {
               addr0033:
               _loc1_.mxmlContent = [this._ImprovementSlotPreviewSkin_BriskImageDynaLib2_i(),this._ImprovementSlotPreviewSkin_HGroup1_c(),this._ImprovementSlotPreviewSkin_BriskImageDynaLib4_i(),this._ImprovementSlotPreviewSkin_BriskImageDynaLib5_i()];
               if(!_loc3_)
               {
                  §§goto(addr0055);
               }
               §§goto(addr0061);
            }
            addr0055:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr0061:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0033);
      }
      
      private function _ImprovementSlotPreviewSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "hip_cardboard_small";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.id = "improBg";
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr0091:
                              this.improBg = _loc1_;
                              if(_loc3_)
                              {
                                 addr009b:
                                 BindingManager.executeBindings(this,"improBg",this.improBg);
                              }
                           }
                           §§goto(addr00a8);
                        }
                     }
                     §§goto(addr0091);
                  }
               }
            }
            §§goto(addr009b);
         }
         addr00a8:
         return _loc1_;
      }
      
      private function _ImprovementSlotPreviewSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.height = 118;
            if(_loc2_)
            {
               _loc1_.width = 118;
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr0048);
               }
               §§goto(addr0079);
            }
            addr0048:
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._ImprovementSlotPreviewSkin_BriskImageDynaLib3_i()];
                  if(_loc2_)
                  {
                     §§goto(addr0079);
                  }
                  §§goto(addr0085);
               }
               addr0079:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0085:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0089);
            }
            addr0089:
            return _loc1_;
         }
         §§goto(addr0079);
      }
      
      private function _ImprovementSlotPreviewSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_improvements_small";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "improvement_small_100000";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "improvementGfx";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr006f:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr007b);
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr0084);
                  }
                  addr007b:
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     addr0084:
                     this.improvementGfx = _loc1_;
                     if(_loc2_)
                     {
                        addr008e:
                        BindingManager.executeBindings(this,"improvementGfx",this.improvementGfx);
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr006f);
            }
            §§goto(addr0084);
         }
         §§goto(addr006f);
      }
      
      private function _ImprovementSlotPreviewSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.left = 3;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.dynaBmpSourceName = "hip_badge_common_small";
                  if(!_loc2_)
                  {
                     addr0056:
                     _loc1_.id = "improBadge";
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0080:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr0089:
                                 this.improBadge = _loc1_;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    BindingManager.executeBindings(this,"improBadge",this.improBadge);
                                 }
                              }
                              §§goto(addr00a8);
                           }
                        }
                        §§goto(addr0089);
                     }
                  }
                  addr00a8:
                  return _loc1_;
               }
               §§goto(addr0080);
            }
            §§goto(addr0056);
         }
         §§goto(addr0080);
      }
      
      private function _ImprovementSlotPreviewSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "icon_info_over";
               if(!_loc2_)
               {
                  _loc1_.bottom = 9;
                  if(_loc3_)
                  {
                     _loc1_.right = 9;
                     if(!_loc2_)
                     {
                        §§goto(addr0056);
                     }
                     §§goto(addr0061);
                  }
                  addr0056:
                  _loc1_.id = "infoIcon";
                  if(!_loc2_)
                  {
                     addr0061:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0092:
                              this.infoIcon = _loc1_;
                              if(!_loc2_)
                              {
                                 addr009c:
                                 BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
                              }
                              §§goto(addr00a9);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr0061);
            }
         }
         addr00a9:
         return _loc1_;
      }
      
      private function _ImprovementSlotPreviewSkin_HGroup2_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.width = 118;
                  if(_loc2_)
                  {
                     _loc1_.includeInLayout = true;
                     if(!_loc3_)
                     {
                        addr005e:
                        _loc1_.visible = true;
                        if(_loc2_ || _loc3_)
                        {
                           addr006f:
                           _loc1_.height = 12;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              §§goto(addr0090);
                           }
                        }
                        §§goto(addr00ce);
                     }
                     addr0090:
                     _loc1_.alpha = 0.5;
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.mxmlContent = [this._ImprovementSlotPreviewSkin_SlimProgressBarComponent1_i()];
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr00bb:
                           _loc1_.id = "progressBarGroup";
                           if(_loc2_ || _loc3_)
                           {
                              addr00ce:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§goto(addr00e2);
                                 }
                                 §§goto(addr010f);
                              }
                              §§goto(addr00fd);
                           }
                           addr00e2:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr00fd:
                              this.progressBarGroup = _loc1_;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr010f:
                                 BindingManager.executeBindings(this,"progressBarGroup",this.progressBarGroup);
                              }
                           }
                           §§goto(addr011c);
                        }
                        §§goto(addr010f);
                     }
                     addr011c:
                     return _loc1_;
                  }
                  §§goto(addr006f);
               }
               §§goto(addr005e);
            }
            §§goto(addr00bb);
         }
         §§goto(addr005e);
      }
      
      private function _ImprovementSlotPreviewSkin_SlimProgressBarComponent1_i() : SlimProgressBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SlimProgressBarComponent = new SlimProgressBarComponent();
         if(!_loc2_)
         {
            _loc1_.width = 116;
            if(_loc3_)
            {
               _loc1_.progress = 1;
               if(!_loc2_)
               {
                  _loc1_.id = "fullProgressBar";
                  if(_loc3_ || _loc3_)
                  {
                     addr0056:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr0078);
                           }
                           §§goto(addr008a);
                        }
                     }
                     addr0078:
                     this.fullProgressBar = _loc1_;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr008a:
                        BindingManager.executeBindings(this,"fullProgressBar",this.fullProgressBar);
                     }
                  }
                  §§goto(addr0097);
               }
               §§goto(addr0056);
            }
            addr0097:
            return _loc1_;
         }
         §§goto(addr0056);
      }
      
      private function _ImprovementSlotPreviewSkin_HGroup3_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.verticalAlign = "bottom";
               if(_loc2_)
               {
                  addr0034:
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.height = 12;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.includeInLayout = false;
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.visible = false;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              _loc1_.alpha = 0.5;
                              if(_loc2_)
                              {
                                 _loc1_.mxmlContent = [this._ImprovementSlotPreviewSkin_LocaLabel1_i()];
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr00a7:
                                    _loc1_.id = "unlimitedGroup";
                                    if(_loc2_)
                                    {
                                       addr00b2:
                                       if(!_loc1_.document)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr00ca);
                                          }
                                          §§goto(addr00e5);
                                       }
                                       §§goto(addr00d3);
                                    }
                                 }
                              }
                              addr00ca:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr00d3:
                                 this.unlimitedGroup = _loc1_;
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr00e5:
                                    BindingManager.executeBindings(this,"unlimitedGroup",this.unlimitedGroup);
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr00e5);
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr00b2);
            }
            §§goto(addr0034);
         }
         §§goto(addr00e5);
      }
      
      private function _ImprovementSlotPreviewSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "unlimitedLabel";
            if(!_loc2_)
            {
               _loc1_.maxDisplayedLines = 1;
               if(_loc3_)
               {
                  _loc1_.text = "dev: UNLIMITED";
                  if(!_loc2_)
                  {
                     _loc1_.percentWidth = 90;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.id = "unlimitedLabel";
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0089:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    §§goto(addr0092);
                                 }
                              }
                              §§goto(addr00a4);
                           }
                           addr0092:
                           this.unlimitedLabel = _loc1_;
                           if(_loc3_ || _loc2_)
                           {
                              addr00a4:
                              BindingManager.executeBindings(this,"unlimitedLabel",this.unlimitedLabel);
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr0089);
                     }
                  }
                  addr00b1:
                  return _loc1_;
               }
               §§goto(addr0089);
            }
            §§goto(addr00a4);
         }
         §§goto(addr0092);
      }
      
      public function ___ImprovementSlotPreviewSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fullProgressBar() : SlimProgressBarComponent
      {
         return this._1931666281fullProgressBar;
      }
      
      public function set fullProgressBar(param1:SlimProgressBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1931666281fullProgressBar;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1931666281fullProgressBar = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0065:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fullProgressBar",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0065);
            }
            addr0084:
            return;
         }
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get improBadge() : BriskImageDynaLib
      {
         return this._361121306improBadge;
      }
      
      public function set improBadge(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._361121306improBadge;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._361121306improBadge = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improBadge",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get improBg() : BriskImageDynaLib
      {
         return this._1926122798improBg;
      }
      
      public function set improBg(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1926122798improBg;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1926122798improBg = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improBg",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementGfx() : BriskImageDynaLib
      {
         return this._1429205699improvementGfx;
      }
      
      public function set improvementGfx(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1429205699improvementGfx;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1429205699improvementGfx = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr0062);
                  }
                  §§goto(addr0071);
               }
               addr0062:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0071:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementGfx",_loc2_,param1));
                  }
               }
               §§goto(addr0080);
            }
            addr0080:
            return;
         }
         §§goto(addr0062);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoIcon() : BriskImageDynaLib
      {
         return this._177606215infoIcon;
      }
      
      public function set infoIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._177606215infoIcon;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._177606215infoIcon = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBarGroup() : HGroup
      {
         return this._1234516103progressBarGroup;
      }
      
      public function set progressBarGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1234516103progressBarGroup;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1234516103progressBarGroup = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0076);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBarGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return;
         }
         §§goto(addr0076);
      }
      
      [Bindable(event="propertyChange")]
      public function get unlimitedGroup() : HGroup
      {
         return this._2053116446unlimitedGroup;
      }
      
      public function set unlimitedGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2053116446unlimitedGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._2053116446unlimitedGroup = param1;
                  addr0038:
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unlimitedGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0064);
            }
            addr0073:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get unlimitedLabel() : LocaLabel
      {
         return this._2057214611unlimitedLabel;
      }
      
      public function set unlimitedLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2057214611unlimitedLabel;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._2057214611unlimitedLabel = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unlimitedLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ImprovementSlotComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ImprovementSlotComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0067:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0067);
      }
   }
}

