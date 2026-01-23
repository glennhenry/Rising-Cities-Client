package net.bigpoint.cityrama.view.residentialBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ImprovementSlotComponent;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.SlimProgressBarTimer;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class ImprovementSlotActiveSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1146242587_ImprovementSlotActiveSkin_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var _1239502522_ImprovementSlotActiveSkin_Group2:Group;
      
      private var _361121306improBadge:BriskImageDynaLib;
      
      private var _1926122798improBg:BriskImageDynaLib;
      
      private var _1429205699improvementGfx:BriskImageDynaLib;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _1234516103progressBarGroup:HGroup;
      
      private var _1750990121slimProgressBar:SlimProgressBarTimer;
      
      private var _2053116446unlimitedGroup:HGroup;
      
      private var _2057214611unlimitedLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:ImprovementSlotComponent;
      
      public function ImprovementSlotActiveSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.mxmlContent = [this._ImprovementSlotActiveSkin_Group1_c()];
                  if(!_loc1_)
                  {
                     addr0048:
                     this.currentState = "normal";
                     if(_loc2_)
                     {
                        §§goto(addr0054);
                     }
                     §§goto(addr006d);
                  }
                  addr0054:
                  this.addEventListener("creationComplete",this.___ImprovementSlotActiveSkin_SparkSkin1_creationComplete);
                  if(!(_loc1_ && _loc2_))
                  {
                     states = [new State({
                        "name":"normal",
                        "overrides":[]
                     }),new State({
                        "name":"disabled",
                        "overrides":[]
                     }),new State({
                        "name":"highlight",
                        "overrides":[new SetProperty().initializeFromObject({
                           "target":"_ImprovementSlotActiveSkin_BriskImageDynaLib1",
                           "name":"dynaBmpSourceName",
                           "value":"slot_highlight"
                        }),new SetProperty().initializeFromObject({
                           "target":"_ImprovementSlotActiveSkin_Group2",
                           "name":"alpha",
                           "value":1
                        }),new SetProperty().initializeFromObject({
                           "target":"progressBarGroup",
                           "name":"alpha",
                           "value":1
                        }),new SetProperty().initializeFromObject({
                           "target":"unlimitedGroup",
                           "name":"alpha",
                           "value":1
                        })]
                     }),new State({
                        "name":"highlightOver",
                        "overrides":[new SetProperty().initializeFromObject({
                           "target":"_ImprovementSlotActiveSkin_BriskImageDynaLib1",
                           "name":"dynaBmpSourceName",
                           "value":"slot_highlight"
                        }),new SetProperty().initializeFromObject({
                           "target":"_ImprovementSlotActiveSkin_Group2",
                           "name":"alpha",
                           "value":0.5
                        }),new SetProperty().initializeFromObject({
                           "target":"progressBarGroup",
                           "name":"alpha",
                           "value":0.5
                        }),new SetProperty().initializeFromObject({
                           "target":"unlimitedGroup",
                           "name":"alpha",
                           "value":0.5
                        })]
                     }),new State({
                        "name":"down",
                        "overrides":[]
                     }),new State({
                        "name":"over",
                        "overrides":[new SetProperty().initializeFromObject({
                           "target":"_ImprovementSlotActiveSkin_BriskImageDynaLib1",
                           "name":"dynaBmpSourceName",
                           "value":"slot_highlight"
                        }),new SetProperty().initializeFromObject({
                           "target":"infoIcon",
                           "name":"dynaBmpSourceName",
                           "value":"icon_info_over"
                        })]
                     }),new State({
                        "name":"up",
                        "overrides":[new SetProperty().initializeFromObject({
                           "target":"_ImprovementSlotActiveSkin_BriskImageDynaLib1",
                           "name":"dynaBmpSourceName",
                           "value":"slot_green"
                        }),new SetProperty().initializeFromObject({
                           "target":"_ImprovementSlotActiveSkin_Group2",
                           "name":"alpha",
                           "value":1
                        }),new SetProperty().initializeFromObject({
                           "target":"progressBarGroup",
                           "name":"alpha",
                           "value":1
                        }),new SetProperty().initializeFromObject({
                           "target":"unlimitedGroup",
                           "name":"alpha",
                           "value":1
                        })]
                     })];
                     addr006d:
                  }
                  §§goto(addr025d);
               }
               §§goto(addr0048);
            }
            addr025d:
            return;
         }
         §§goto(addr006d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr0036);
            }
            §§goto(addr004c);
         }
         addr0036:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc2_ || _loc2_)
            {
               addr004c:
               return;
            }
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.unlimitedLabel.text = ResourceManager.getInstance().getString(String("rcl.booklayer.residentialImprovement"),String("rcl.booklayer.residentialImprovement.unlimited.capital"));
         }
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(this))
         {
            §§push(currentState == "highlight");
            if(!(_loc3_ && param2))
            {
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               §§push(_temp_4);
               if(_loc4_ || param2)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        §§pop();
                        if(_loc4_ || param2)
                        {
                           §§push(param1);
                           if(!_loc3_)
                           {
                              §§push("over");
                              if(_loc4_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§goto(addr0083);
                                 }
                                 §§goto(addr00d6);
                              }
                              §§goto(addr011b);
                           }
                           §§goto(addr0118);
                        }
                        §§goto(addr013f);
                     }
                     §§goto(addr0109);
                  }
                  addr0083:
                  if(§§pop())
                  {
                     if(_loc4_ || Boolean(param1))
                     {
                        §§push("highlightOver");
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           param1 = §§pop();
                           if(!(_loc3_ && param2))
                           {
                              §§goto(addr00c1);
                           }
                           §§goto(addr0117);
                        }
                        §§goto(addr0152);
                     }
                     §§goto(addr0158);
                  }
                  addr00c1:
                  §§push(currentState == "highlight");
                  if(_loc4_ || Boolean(this))
                  {
                     addr00d6:
                     var _temp_13:* = §§pop();
                     §§push(_temp_13);
                     §§push(_temp_13);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        if(!§§pop())
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr00ed);
                           }
                           §§goto(addr0145);
                        }
                        §§goto(addr00ff);
                     }
                     §§goto(addr0100);
                  }
                  §§goto(addr00ed);
               }
               §§goto(addr0100);
            }
            addr00ed:
            §§pop();
            if(!_loc3_)
            {
               §§push(currentState == "highlightOver");
               if(!_loc3_)
               {
                  addr00ff:
                  var _temp_15:* = §§pop();
                  addr0100:
                  §§push(_temp_15);
                  if(_temp_15)
                  {
                     if(!_loc3_)
                     {
                        addr0109:
                        §§pop();
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0117:
                           addr011b:
                           addr0118:
                           §§push(param1 == "up");
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0135:
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    addr0145:
                                    addr013f:
                                    if(this.hostComponent.highlight)
                                    {
                                       if(_loc4_)
                                       {
                                          addr0152:
                                          param1 = "highlight";
                                          §§goto(addr014f);
                                       }
                                    }
                                    §§goto(addr0158);
                                 }
                                 §§goto(addr014f);
                              }
                              §§goto(addr0158);
                           }
                           §§goto(addr0145);
                        }
                        §§goto(addr013f);
                     }
                  }
               }
               §§goto(addr0135);
            }
            addr014f:
            if(!_loc3_)
            {
               addr0158:
               super.setCurrentState(param1,param2);
            }
            return;
         }
         §§goto(addr0158);
      }
      
      private function _ImprovementSlotActiveSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.width = 138;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.height = 138;
               if(!_loc3_)
               {
                  addr005a:
                  _loc1_.mxmlContent = [this._ImprovementSlotActiveSkin_BriskImageDynaLib1_i(),this._ImprovementSlotActiveSkin_VGroup1_c()];
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0078:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0078);
         }
         §§goto(addr005a);
      }
      
      private function _ImprovementSlotActiveSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr0038);
            }
            §§goto(addr00a7);
         }
         addr0038:
         _loc1_.dynaBmpSourceName = "slot_green";
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.id = "_ImprovementSlotActiveSkin_BriskImageDynaLib1";
            if(!(_loc3_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     §§goto(addr0076);
                  }
               }
               §§goto(addr0095);
            }
         }
         addr0076:
         _loc1_.document = this;
         if(_loc2_ || Boolean(this))
         {
            addr0095:
            this._ImprovementSlotActiveSkin_BriskImageDynaLib1 = _loc1_;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr00a7:
               BindingManager.executeBindings(this,"_ImprovementSlotActiveSkin_BriskImageDynaLib1",this._ImprovementSlotActiveSkin_BriskImageDynaLib1);
            }
         }
         return _loc1_;
      }
      
      private function _ImprovementSlotActiveSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     _loc1_.gap = 0;
                     if(!_loc3_)
                     {
                        _loc1_.paddingTop = 8;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.verticalCenter = -3;
                           if(_loc2_)
                           {
                              _loc1_.mxmlContent = [this._ImprovementSlotActiveSkin_Group2_i(),this._ImprovementSlotActiveSkin_HGroup2_i(),this._ImprovementSlotActiveSkin_HGroup3_i()];
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr00c6:
                                       _loc1_.document = this;
                                    }
                                 }
                                 §§goto(addr00ca);
                              }
                              §§goto(addr00c6);
                           }
                           §§goto(addr00ca);
                        }
                     }
                  }
                  §§goto(addr00c6);
               }
               addr00ca:
               return _loc1_;
            }
         }
         §§goto(addr00c6);
      }
      
      private function _ImprovementSlotActiveSkin_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._ImprovementSlotActiveSkin_BriskImageDynaLib2_i(),this._ImprovementSlotActiveSkin_HGroup1_c(),this._ImprovementSlotActiveSkin_BriskImageDynaLib4_i(),this._ImprovementSlotActiveSkin_BriskImageDynaLib5_i()];
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.id = "_ImprovementSlotActiveSkin_Group2";
               if(_loc3_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr008b:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr0094);
                        }
                     }
                     §§goto(addr00a6);
                  }
                  addr0094:
                  this._ImprovementSlotActiveSkin_Group2 = _loc1_;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr00a6:
                     BindingManager.executeBindings(this,"_ImprovementSlotActiveSkin_Group2",this._ImprovementSlotActiveSkin_Group2);
                  }
                  return _loc1_;
               }
               §§goto(addr00a6);
            }
            §§goto(addr008b);
         }
         §§goto(addr00a6);
      }
      
      private function _ImprovementSlotActiveSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "hip_cardboard_small";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.id = "improBg";
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr007d:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(this))
                           {
                              addr008e:
                              this.improBg = _loc1_;
                              if(_loc2_)
                              {
                                 addr0098:
                                 BindingManager.executeBindings(this,"improBg",this.improBg);
                              }
                              §§goto(addr00a5);
                           }
                           §§goto(addr0098);
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr008e);
                  }
                  addr00a5:
                  return _loc1_;
               }
            }
            §§goto(addr008e);
         }
         §§goto(addr007d);
      }
      
      private function _ImprovementSlotActiveSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.height = 118;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.width = 118;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     addr005a:
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0079:
                        _loc1_.mxmlContent = [this._ImprovementSlotActiveSkin_BriskImageDynaLib3_i()];
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr009d:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr0079);
               }
            }
            addr00a1:
            return _loc1_;
         }
         §§goto(addr005a);
      }
      
      private function _ImprovementSlotActiveSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_improvements_small";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "improvement_small_100000";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "improvementGfx";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0078:
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              addr0096:
                              this.improvementGfx = _loc1_;
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00a8:
                                 BindingManager.executeBindings(this,"improvementGfx",this.improvementGfx);
                              }
                              §§goto(addr00b5);
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr0096);
                  }
               }
               addr00b5:
               return _loc1_;
            }
            §§goto(addr00a8);
         }
         §§goto(addr0078);
      }
      
      private function _ImprovementSlotActiveSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0034:
               _loc1_.left = 3;
               if(!_loc2_)
               {
                  _loc1_.dynaBmpSourceName = "hip_badge_common_small";
                  if(_loc3_)
                  {
                     addr0055:
                     _loc1_.id = "improBadge";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr0092:
                                 this.improBadge = _loc1_;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    BindingManager.executeBindings(this,"improBadge",this.improBadge);
                                 }
                              }
                              §§goto(addr00b1);
                           }
                        }
                     }
                     §§goto(addr0092);
                  }
                  addr00b1:
                  return _loc1_;
               }
               §§goto(addr0055);
            }
            §§goto(addr0092);
         }
         §§goto(addr0034);
      }
      
      private function _ImprovementSlotActiveSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "icon_info";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.bottom = 9;
                  if(_loc2_)
                  {
                     addr005c:
                     _loc1_.right = 9;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr006e:
                        _loc1_.id = "infoIcon";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr0099:
                                    this.infoIcon = _loc1_;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr00ab:
                                       BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
                                    }
                                 }
                                 return _loc1_;
                              }
                           }
                           §§goto(addr0099);
                        }
                     }
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr005c);
            }
            §§goto(addr006e);
         }
         §§goto(addr00ab);
      }
      
      private function _ImprovementSlotActiveSkin_HGroup2_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.width = 118;
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr004e);
                  }
                  §§goto(addr006a);
               }
               §§goto(addr00d2);
            }
            addr004e:
            _loc1_.includeInLayout = true;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr006a:
               _loc1_.visible = true;
               if(_loc2_ || _loc3_)
               {
                  §§goto(addr007b);
               }
               §§goto(addr00a8);
            }
            addr007b:
            _loc1_.height = 12;
            if(_loc2_)
            {
               addr0085:
               _loc1_.mxmlContent = [this._ImprovementSlotActiveSkin_SlimProgressBarTimer1_i()];
               if(!_loc3_)
               {
                  §§goto(addr0095);
               }
               §§goto(addr00d2);
            }
            addr0095:
            _loc1_.id = "progressBarGroup";
            if(!(_loc3_ && _loc3_))
            {
               addr00a8:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        §§goto(addr00d2);
                     }
                     §§goto(addr00dc);
                  }
               }
               addr00d2:
               this.progressBarGroup = _loc1_;
               if(_loc2_)
               {
                  addr00dc:
                  BindingManager.executeBindings(this,"progressBarGroup",this.progressBarGroup);
               }
               §§goto(addr00e9);
            }
            addr00e9:
            return _loc1_;
         }
         §§goto(addr0085);
      }
      
      private function _ImprovementSlotActiveSkin_SlimProgressBarTimer1_i() : SlimProgressBarTimer
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SlimProgressBarTimer = new SlimProgressBarTimer();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.width = 116;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.revertProgress = true;
               if(_loc2_)
               {
                  _loc1_.id = "slimProgressBar";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr007c:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              §§goto(addr008d);
                           }
                        }
                        §§goto(addr0097);
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr007c);
               }
               addr008d:
               this.slimProgressBar = _loc1_;
               if(_loc2_)
               {
                  addr0097:
                  BindingManager.executeBindings(this,"slimProgressBar",this.slimProgressBar);
               }
               §§goto(addr00a4);
            }
         }
         addr00a4:
         return _loc1_;
      }
      
      private function _ImprovementSlotActiveSkin_HGroup3_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.verticalAlign = "bottom";
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.height = 12;
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.includeInLayout = false;
                        if(_loc3_)
                        {
                           addr007d:
                           _loc1_.visible = false;
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.mxmlContent = [this._ImprovementSlotActiveSkin_LocaLabel1_i()];
                              if(!(_loc2_ && _loc2_))
                              {
                                 _loc1_.id = "unlimitedGroup";
                                 if(_loc3_)
                                 {
                                    addr00b1:
                                    if(!_loc1_.document)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr00bd:
                                          _loc1_.document = this;
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§goto(addr00da);
                                          }
                                          §§goto(addr00ec);
                                       }
                                    }
                                 }
                              }
                           }
                           addr00da:
                           this.unlimitedGroup = _loc1_;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr00ec:
                              BindingManager.executeBindings(this,"unlimitedGroup",this.unlimitedGroup);
                           }
                           §§goto(addr00f9);
                        }
                        addr00f9:
                        return _loc1_;
                     }
                     §§goto(addr00ec);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr00bd);
            }
            §§goto(addr007d);
         }
         §§goto(addr00b1);
      }
      
      private function _ImprovementSlotActiveSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.styleName = "unlimitedLabel";
            if(!_loc2_)
            {
               _loc1_.maxDisplayedLines = 1;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.text = "dev: UNLIMITED";
                  if(_loc3_)
                  {
                     _loc1_.percentWidth = 90;
                     if(!_loc2_)
                     {
                        _loc1_.id = "unlimitedLabel";
                        if(_loc3_)
                        {
                           addr0074:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr008c:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr009d:
                                    this.unlimitedLabel = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00a7:
                                       BindingManager.executeBindings(this,"unlimitedLabel",this.unlimitedLabel);
                                    }
                                    §§goto(addr00b4);
                                 }
                                 §§goto(addr00a7);
                              }
                              addr00b4:
                              return _loc1_;
                           }
                           §§goto(addr009d);
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr00a7);
            }
            §§goto(addr008c);
         }
         §§goto(addr0074);
      }
      
      public function ___ImprovementSlotActiveSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
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
      public function get _ImprovementSlotActiveSkin_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._1146242587_ImprovementSlotActiveSkin_BriskImageDynaLib1;
      }
      
      public function set _ImprovementSlotActiveSkin_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1146242587_ImprovementSlotActiveSkin_BriskImageDynaLib1;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1146242587_ImprovementSlotActiveSkin_BriskImageDynaLib1 = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ImprovementSlotActiveSkin_BriskImageDynaLib1",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0070);
               }
            }
         }
         addr007f:
      }
      
      [Bindable(event="propertyChange")]
      public function get _ImprovementSlotActiveSkin_Group2() : Group
      {
         return this._1239502522_ImprovementSlotActiveSkin_Group2;
      }
      
      public function set _ImprovementSlotActiveSkin_Group2(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1239502522_ImprovementSlotActiveSkin_Group2;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1239502522_ImprovementSlotActiveSkin_Group2 = param1;
                  if(_loc3_)
                  {
                     §§goto(addr005a);
                  }
                  §§goto(addr0071);
               }
               addr005a:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0071:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ImprovementSlotActiveSkin_Group2",_loc2_,param1));
                  }
               }
               §§goto(addr0080);
            }
            addr0080:
            return;
         }
         §§goto(addr005a);
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
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._361121306improBadge = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr006c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improBadge",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr006c);
            }
         }
         addr008b:
      }
      
      [Bindable(event="propertyChange")]
      public function get improBg() : BriskImageDynaLib
      {
         return this._1926122798improBg;
      }
      
      public function set improBg(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1926122798improBg;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1926122798improBg = param1;
                  if(!_loc4_)
                  {
                     addr004e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improBg",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
               }
               §§goto(addr0065);
            }
            addr0074:
            return;
         }
         §§goto(addr004e);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1429205699improvementGfx = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementGfx",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr0057);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._177606215infoIcon = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
               }
               §§goto(addr006b);
            }
         }
         addr007a:
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBarGroup() : HGroup
      {
         return this._1234516103progressBarGroup;
      }
      
      public function set progressBarGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1234516103progressBarGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1234516103progressBarGroup = param1;
                  if(!_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBarGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr0065);
               }
            }
            addr0074:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get slimProgressBar() : SlimProgressBarTimer
      {
         return this._1750990121slimProgressBar;
      }
      
      public function set slimProgressBar(param1:SlimProgressBarTimer) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1750990121slimProgressBar;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1750990121slimProgressBar = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slimProgressBar",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr005f);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._2053116446unlimitedGroup = param1;
                  if(_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unlimitedGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0055);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._2057214611unlimitedLabel = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0065:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr007c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unlimitedLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0065);
            }
            addr008b:
            return;
         }
         §§goto(addr007c);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ImprovementSlotComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ImprovementSlotComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._213507019hostComponent = param1;
                  addr0046:
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0046);
      }
   }
}

