package net.bigpoint.cityrama.view.residentialBook.ui.skins
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.citysquare.ui.components.SlimProgressBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ImprovementSlotComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class ImprovementSlotExpiredSkin extends SparkSkin implements IStateClient2
   {
      
      private var _123224208_ImprovementSlotExpiredSkin_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var _404288315_ImprovementSlotExpiredSkin_Group2:Group;
      
      private var _1051917889expiredProgressBar:SlimProgressBarComponent;
      
      private var _361121306improBadge:BriskImageDynaLib;
      
      private var _1926122798improBg:BriskImageDynaLib;
      
      private var _1429205699improvementGfx:BriskImageDynaLib;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _1234516103progressBarGroup:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:ImprovementSlotComponent;
      
      public function ImprovementSlotExpiredSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc1_)
               {
                  this.mxmlContent = [this._ImprovementSlotExpiredSkin_Group1_c()];
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr004f:
                     this.currentState = "normal";
                     if(!(_loc2_ && Boolean(this)))
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
                              "target":"_ImprovementSlotExpiredSkin_BriskImageDynaLib1",
                              "name":"dynaBmpSourceName",
                              "value":"slot_highlight"
                           }),new SetProperty().initializeFromObject({
                              "target":"_ImprovementSlotExpiredSkin_Group2",
                              "name":"alpha",
                              "value":1
                           }),new SetProperty().initializeFromObject({
                              "target":"progressBarGroup",
                              "name":"alpha",
                              "value":1
                           })]
                        }),new State({
                           "name":"highlightOver",
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_ImprovementSlotExpiredSkin_BriskImageDynaLib1",
                              "name":"dynaBmpSourceName",
                              "value":"slot_highlight"
                           }),new SetProperty().initializeFromObject({
                              "target":"_ImprovementSlotExpiredSkin_Group2",
                              "name":"alpha",
                              "value":0.5
                           }),new SetProperty().initializeFromObject({
                              "target":"progressBarGroup",
                              "name":"alpha",
                              "value":0.5
                           })]
                        }),new State({
                           "name":"down",
                           "overrides":[]
                        }),new State({
                           "name":"over",
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_ImprovementSlotExpiredSkin_BriskImageDynaLib1",
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
                              "target":"_ImprovementSlotExpiredSkin_BriskImageDynaLib1",
                              "name":"dynaBmpSourceName",
                              "value":"slot_red"
                           }),new SetProperty().initializeFromObject({
                              "target":"_ImprovementSlotExpiredSkin_Group2",
                              "name":"alpha",
                              "value":1
                           }),new SetProperty().initializeFromObject({
                              "target":"progressBarGroup",
                              "name":"alpha",
                              "value":1
                           })]
                        })];
                        addr0063:
                     }
                  }
                  return;
               }
               §§goto(addr0063);
            }
            §§goto(addr004f);
         }
         §§goto(addr0063);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
         }
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
      
      private function handleGfxCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.improvementGfx);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr0050:
                     this.improvementGfx.alpha = 0.7;
                     if(!_loc1_)
                     {
                        addr005a:
                        TweenMax.to(this.improvementGfx,0,{"colorMatrixFilter":{
                           "amount":1,
                           "saturation":0
                        }});
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr005a);
               }
               addr0077:
               return;
            }
            §§goto(addr0050);
         }
         §§goto(addr005a);
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §§push(currentState == "highlight");
            if(_loc4_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§pop();
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           §§push(param1);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push("over");
                              if(_loc4_ || param2)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!_loc3_)
                                 {
                                    addr007a:
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          addr0084:
                                          §§push("highlightOver");
                                          if(!_loc3_)
                                          {
                                             param1 = §§pop();
                                             if(_loc4_ || Boolean(param1))
                                             {
                                                addr00a5:
                                                §§push(currentState == "highlight");
                                                if(!(_loc3_ && Boolean(param1)))
                                                {
                                                   var _temp_10:* = §§pop();
                                                   §§push(_temp_10);
                                                   §§push(_temp_10);
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            addr00d9:
                                                            §§pop();
                                                            if(!_loc3_)
                                                            {
                                                               addr00df:
                                                               §§push(currentState == "highlightOver");
                                                               if(_loc4_ || Boolean(param1))
                                                               {
                                                                  addr00f4:
                                                                  var _temp_14:* = §§pop();
                                                                  addr00f5:
                                                                  §§push(_temp_14);
                                                                  if(_temp_14)
                                                                  {
                                                                     if(!(_loc3_ && param2))
                                                                     {
                                                                        §§pop();
                                                                        if(_loc4_ || Boolean(this))
                                                                        {
                                                                           addr0119:
                                                                           addr0116:
                                                                           §§push(param1 == "up");
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr012d:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc4_ || Boolean(this))
                                                                                 {
                                                                                    addr0145:
                                                                                    addr013f:
                                                                                    if(this.hostComponent.highlight)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr0151:
                                                                                          param1 = "highlight";
                                                                                          addr014e:
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr0158:
                                                                                             super.setCurrentState(param1,param2);
                                                                                          }
                                                                                          §§goto(addr015f);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0158);
                                                                                 }
                                                                                 addr015f:
                                                                                 return;
                                                                              }
                                                                              §§goto(addr0158);
                                                                           }
                                                                           §§goto(addr0145);
                                                                        }
                                                                        §§goto(addr013f);
                                                                     }
                                                                     §§goto(addr0145);
                                                                  }
                                                                  §§goto(addr012d);
                                                               }
                                                               §§goto(addr0145);
                                                            }
                                                            §§goto(addr0158);
                                                         }
                                                         §§goto(addr012d);
                                                      }
                                                      §§goto(addr00f4);
                                                   }
                                                   §§goto(addr00f5);
                                                }
                                                §§goto(addr00d9);
                                             }
                                             §§goto(addr00df);
                                          }
                                          §§goto(addr0151);
                                       }
                                       §§goto(addr014e);
                                    }
                                    §§goto(addr00a5);
                                 }
                                 §§goto(addr00d9);
                              }
                              §§goto(addr0119);
                           }
                           §§goto(addr0116);
                        }
                        §§goto(addr0084);
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr00f5);
            }
            §§goto(addr007a);
         }
         §§goto(addr0158);
      }
      
      private function _ImprovementSlotExpiredSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.width = 138;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.height = 138;
               if(!(_loc2_ && _loc2_))
               {
                  addr0066:
                  _loc1_.mxmlContent = [this._ImprovementSlotExpiredSkin_BriskImageDynaLib1_i(),this._ImprovementSlotExpiredSkin_VGroup1_c()];
                  if(!_loc2_)
                  {
                     §§goto(addr007c);
                  }
                  §§goto(addr0088);
               }
            }
            addr007c:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr0088:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0066);
      }
      
      private function _ImprovementSlotExpiredSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "slot_red";
               if(!_loc3_)
               {
                  _loc1_.id = "_ImprovementSlotExpiredSkin_BriskImageDynaLib1";
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr0086);
                           }
                           §§goto(addr0090);
                        }
                     }
                     addr0086:
                     this._ImprovementSlotExpiredSkin_BriskImageDynaLib1 = _loc1_;
                     if(!_loc3_)
                     {
                        addr0090:
                        BindingManager.executeBindings(this,"_ImprovementSlotExpiredSkin_BriskImageDynaLib1",this._ImprovementSlotExpiredSkin_BriskImageDynaLib1);
                     }
                  }
                  §§goto(addr009d);
               }
               §§goto(addr0090);
            }
            §§goto(addr0086);
         }
         addr009d:
         return _loc1_;
      }
      
      private function _ImprovementSlotExpiredSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.gap = 0;
                     if(!_loc3_)
                     {
                        _loc1_.paddingTop = 8;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0075:
                           _loc1_.verticalCenter = -3;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              _loc1_.mxmlContent = [this._ImprovementSlotExpiredSkin_Group2_i(),this._ImprovementSlotExpiredSkin_HGroup2_i()];
                              if(_loc2_ || _loc3_)
                              {
                                 addr00b1:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr00c5:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                           }
                           §§goto(addr00c9);
                        }
                        §§goto(addr00c5);
                     }
                  }
                  addr00c9:
                  return _loc1_;
               }
               §§goto(addr00c5);
            }
            §§goto(addr00b1);
         }
         §§goto(addr0075);
      }
      
      private function _ImprovementSlotExpiredSkin_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._ImprovementSlotExpiredSkin_BriskImageDynaLib2_i(),this._ImprovementSlotExpiredSkin_HGroup1_c(),this._ImprovementSlotExpiredSkin_BriskImageDynaLib4_i(),this._ImprovementSlotExpiredSkin_BriskImageDynaLib5_i(),this._ImprovementSlotExpiredSkin_BriskImageDynaLib6_c()];
            if(_loc2_ || Boolean(this))
            {
               _loc1_.id = "_ImprovementSlotExpiredSkin_Group2";
               if(_loc2_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc2_ || _loc3_)
                        {
                           addr00a2:
                           this._ImprovementSlotExpiredSkin_Group2 = _loc1_;
                           if(_loc2_)
                           {
                              addr00ac:
                              BindingManager.executeBindings(this,"_ImprovementSlotExpiredSkin_Group2",this._ImprovementSlotExpiredSkin_Group2);
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr00b9);
                  }
                  §§goto(addr00a2);
               }
               addr00b9:
               return _loc1_;
            }
            §§goto(addr00ac);
         }
         §§goto(addr00a2);
      }
      
      private function _ImprovementSlotExpiredSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "hip_cardboard_small";
               if(!_loc3_)
               {
                  _loc1_.id = "improBg";
                  if(_loc2_)
                  {
                     addr005a:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0082:
                              this.improBg = _loc1_;
                              if(_loc2_ || Boolean(this))
                              {
                                 BindingManager.executeBindings(this,"improBg",this.improBg);
                              }
                           }
                           return _loc1_;
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr005a);
            }
            §§goto(addr0082);
         }
         §§goto(addr005a);
      }
      
      private function _ImprovementSlotExpiredSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.height = 118;
            if(_loc2_ || _loc2_)
            {
               _loc1_.width = 118;
               if(_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!_loc3_)
                     {
                        §§goto(addr0076);
                     }
                     §§goto(addr0086);
                  }
                  addr0076:
                  _loc1_.mxmlContent = [this._ImprovementSlotExpiredSkin_BriskImageDynaLib3_i()];
                  if(_loc2_)
                  {
                     addr0086:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr009a:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr009a);
            }
         }
         §§goto(addr0086);
      }
      
      private function _ImprovementSlotExpiredSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_improvements_small";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "improvement_small_100000";
               if(!_loc2_)
               {
                  _loc1_.addEventListener("creationComplete",this.__improvementGfx_creationComplete);
                  addr003d:
                  if(!_loc2_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr0096);
               }
               addr0058:
               _loc1_.id = "improvementGfx";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0096:
                           this.improvementGfx = _loc1_;
                           if(_loc3_ || Boolean(this))
                           {
                              addr00a8:
                              BindingManager.executeBindings(this,"improvementGfx",this.improvementGfx);
                           }
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr0096);
               }
               §§goto(addr00b5);
            }
            §§goto(addr003d);
         }
         addr00b5:
         return _loc1_;
      }
      
      public function __improvementGfx_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.handleGfxCreationComplete();
         }
      }
      
      private function _ImprovementSlotExpiredSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.left = 3;
               if(_loc2_)
               {
                  _loc1_.dynaBmpSourceName = "hip_badge_common_small";
                  addr0033:
                  if(!_loc3_)
                  {
                     §§goto(addr0049);
                  }
                  §§goto(addr0054);
               }
               addr0049:
               _loc1_.id = "improBadge";
               if(_loc2_)
               {
                  addr0054:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr0074);
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr007d);
               }
               addr0074:
               _loc1_.document = this;
               if(!_loc3_)
               {
                  addr007d:
                  this.improBadge = _loc1_;
                  if(_loc2_)
                  {
                     addr0087:
                     BindingManager.executeBindings(this,"improBadge",this.improBadge);
                  }
               }
               return _loc1_;
            }
            §§goto(addr0087);
         }
         §§goto(addr0033);
      }
      
      private function _ImprovementSlotExpiredSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "icon_info";
               if(!_loc2_)
               {
                  _loc1_.bottom = 9;
                  if(!_loc2_)
                  {
                     addr004e:
                     _loc1_.right = 9;
                     if(_loc3_)
                     {
                        addr0058:
                        _loc1_.id = "infoIcon";
                        if(_loc3_ || _loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr0095:
                                    this.infoIcon = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr009f:
                                       BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
                                    }
                                    §§goto(addr00ac);
                                 }
                                 §§goto(addr009f);
                              }
                              §§goto(addr00ac);
                           }
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr0095);
               }
               §§goto(addr004e);
            }
            addr00ac:
            return _loc1_;
         }
         §§goto(addr0058);
      }
      
      private function _ImprovementSlotExpiredSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "delete_indicator";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.right = -9;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr006e:
                     _loc1_.top = -4;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§goto(addr0080);
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr006e);
            }
            §§goto(addr008c);
         }
         addr0080:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr008c:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ImprovementSlotExpiredSkin_HGroup2_i() : HGroup
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
               if(_loc2_)
               {
                  _loc1_.width = 118;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.includeInLayout = true;
                     if(!_loc3_)
                     {
                        _loc1_.visible = true;
                        if(_loc2_)
                        {
                           addr0063:
                           _loc1_.height = 12;
                           if(_loc2_)
                           {
                              _loc1_.mxmlContent = [this._ImprovementSlotExpiredSkin_SlimProgressBarComponent1_i()];
                              if(_loc2_ || _loc3_)
                              {
                                 _loc1_.id = "progressBarGroup";
                                 if(_loc2_)
                                 {
                                    addr0090:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_)
                                       {
                                          addr00a8:
                                          _loc1_.document = this;
                                          if(_loc2_)
                                          {
                                             addr00b1:
                                             this.progressBarGroup = _loc1_;
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                addr00c3:
                                                BindingManager.executeBindings(this,"progressBarGroup",this.progressBarGroup);
                                             }
                                          }
                                          §§goto(addr00d0);
                                       }
                                       §§goto(addr00c3);
                                    }
                                    §§goto(addr00b1);
                                 }
                                 §§goto(addr00c3);
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr00c3);
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr0063);
                  }
                  §§goto(addr0090);
               }
               addr00d0:
               return _loc1_;
            }
            §§goto(addr00a8);
         }
         §§goto(addr0063);
      }
      
      private function _ImprovementSlotExpiredSkin_SlimProgressBarComponent1_i() : SlimProgressBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SlimProgressBarComponent = new SlimProgressBarComponent();
         if(!_loc2_)
         {
            _loc1_.width = 116;
            if(_loc3_ || Boolean(this))
            {
               §§goto(addr0034);
            }
            §§goto(addr0058);
         }
         addr0034:
         _loc1_.tint = 16479295;
         if(!_loc2_)
         {
            _loc1_.progress = 0.1;
            if(_loc3_)
            {
               addr0058:
               _loc1_.id = "expiredProgressBar";
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr006b);
               }
               §§goto(addr007f);
            }
         }
         addr006b:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr007f:
               _loc1_.document = this;
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr009b);
               }
            }
            §§goto(addr00ad);
         }
         addr009b:
         this.expiredProgressBar = _loc1_;
         if(_loc3_ || Boolean(this))
         {
            addr00ad:
            BindingManager.executeBindings(this,"expiredProgressBar",this.expiredProgressBar);
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _ImprovementSlotExpiredSkin_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._123224208_ImprovementSlotExpiredSkin_BriskImageDynaLib1;
      }
      
      public function set _ImprovementSlotExpiredSkin_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._123224208_ImprovementSlotExpiredSkin_BriskImageDynaLib1;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._123224208_ImprovementSlotExpiredSkin_BriskImageDynaLib1 = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0041);
                  }
                  §§goto(addr0050);
               }
               addr0041:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0050:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ImprovementSlotExpiredSkin_BriskImageDynaLib1",_loc2_,param1));
                  }
               }
               §§goto(addr005f);
            }
         }
         addr005f:
      }
      
      [Bindable(event="propertyChange")]
      public function get _ImprovementSlotExpiredSkin_Group2() : Group
      {
         return this._404288315_ImprovementSlotExpiredSkin_Group2;
      }
      
      public function set _ImprovementSlotExpiredSkin_Group2(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._404288315_ImprovementSlotExpiredSkin_Group2;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._404288315_ImprovementSlotExpiredSkin_Group2 = param1;
                  if(_loc4_)
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ImprovementSlotExpiredSkin_Group2",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0061);
            }
            addr0088:
            return;
         }
         §§goto(addr0079);
      }
      
      [Bindable(event="propertyChange")]
      public function get expiredProgressBar() : SlimProgressBarComponent
      {
         return this._1051917889expiredProgressBar;
      }
      
      public function set expiredProgressBar(param1:SlimProgressBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1051917889expiredProgressBar;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1051917889expiredProgressBar = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expiredProgressBar",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr0069);
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
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._361121306improBadge = param1;
                  if(_loc4_)
                  {
                     addr0062:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improBadge",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0062);
            }
            addr0080:
            return;
         }
         §§goto(addr0071);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1926122798improBg = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr007b);
               }
               addr0063:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr007b:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improBg",_loc2_,param1));
                  }
               }
               §§goto(addr008a);
            }
            addr008a:
            return;
         }
         §§goto(addr0063);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1429205699improvementGfx = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementGfx",_loc2_,param1));
                        }
                     }
                     §§goto(addr0077);
                  }
               }
               §§goto(addr0068);
            }
            addr0077:
            return;
         }
         §§goto(addr0068);
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
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._177606215infoIcon = param1;
                  addr0047:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0075);
               }
            }
            addr0084:
            return;
         }
         §§goto(addr0047);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1234516103progressBarGroup = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBarGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0070);
               }
            }
            addr007f:
            return;
         }
         §§goto(addr0070);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._213507019hostComponent = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
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
         §§goto(addr0065);
      }
   }
}

