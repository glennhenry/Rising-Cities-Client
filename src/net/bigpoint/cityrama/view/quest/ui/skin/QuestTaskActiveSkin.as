package net.bigpoint.cityrama.view.quest.ui.skin
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestTaskComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class QuestTaskActiveSkin extends SparkSkin implements IStateClient2
   {
      
      private var _43132014gfxIcon:BriskImageDynaLib;
      
      private var _1977519450headerText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:QuestTaskComponent;
      
      public function QuestTaskActiveSkin()
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
                  this.width = 470;
                  if(_loc2_)
                  {
                     this.mxmlContent = [this._QuestTaskActiveSkin_HGroup1_c()];
                     if(_loc2_ || _loc2_)
                     {
                        this.currentState = "normal";
                        if(!_loc1_)
                        {
                           this.addEventListener("creationComplete",this.___QuestTaskActiveSkin_SparkSkin1_creationComplete);
                           addr0071:
                           if(!_loc1_)
                           {
                              states = [new State({
                                 "name":"normal",
                                 "overrides":[]
                              }),new State({
                                 "name":"disabled",
                                 "overrides":[]
                              })];
                           }
                        }
                     }
                     §§goto(addr00b4);
                  }
               }
               §§goto(addr0071);
            }
         }
         addr00b4:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     §§goto(addr005d);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0069);
            }
            addr005d:
            return;
         }
         addr0069:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
      }
      
      private function _QuestTaskActiveSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!_loc2_)
                  {
                     _loc1_.gap = 10;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§goto(addr005f);
                     }
                     §§goto(addr0092);
                  }
               }
               §§goto(addr0069);
            }
            addr005f:
            _loc1_.height = 45;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._QuestTaskActiveSkin_Group1_c(),this._QuestTaskActiveSkin_LocaLabel1_i(),this._QuestTaskActiveSkin_Group2_c()];
               addr0069:
               if(!_loc2_)
               {
                  addr0092:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0092);
      }
      
      private function _QuestTaskActiveSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 79;
            if(_loc2_ || _loc2_)
            {
               _loc1_.height = 45;
               addr0031:
               if(_loc2_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._QuestTaskActiveSkin_BriskImageDynaLib1_c(),this._QuestTaskActiveSkin_BriskImageDynaLib2_i()];
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr007e:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0092:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr007e);
            }
            §§goto(addr0092);
         }
         §§goto(addr0031);
      }
      
      private function _QuestTaskActiveSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "quest_minipostit_activ";
               if(_loc3_)
               {
                  addr004c:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0058:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr005c);
               }
               §§goto(addr0058);
            }
            addr005c:
            return _loc1_;
         }
         §§goto(addr004c);
      }
      
      private function _QuestTaskActiveSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalCenter = -8.5;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.id = "gfxIcon";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr0082:
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr009f:
                                 this.gfxIcon = _loc1_;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00b1:
                                    BindingManager.executeBindings(this,"gfxIcon",this.gfxIcon);
                                 }
                              }
                              §§goto(addr00be);
                           }
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr00be);
                  }
                  §§goto(addr00b1);
               }
            }
            §§goto(addr0082);
         }
         addr00be:
         return _loc1_;
      }
      
      private function _QuestTaskActiveSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.styleName = "questTaskActive";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.id = "headerText";
                  if(!_loc3_)
                  {
                     addr0058:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr0079:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0082:
                              this.headerText = _loc1_;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr0094:
                                 BindingManager.executeBindings(this,"headerText",this.headerText);
                              }
                              §§goto(addr00a1);
                           }
                           §§goto(addr0094);
                        }
                        §§goto(addr00a1);
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr0079);
            }
            addr00a1:
            return _loc1_;
         }
         §§goto(addr0058);
      }
      
      private function _QuestTaskActiveSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._QuestTaskActiveSkin_BriskImageDynaLib3_c(),this._QuestTaskActiveSkin_BriskImageDynaLib4_c(),this._QuestTaskActiveSkin_BriskImageDynaLib5_c()];
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr006e:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr006e);
      }
      
      private function _QuestTaskActiveSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_optionsPopup";
            if(_loc3_ || _loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     _loc1_.dynaBmpSourceName = "options_frame";
                     if(_loc3_)
                     {
                        addr006d:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr0081:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0085);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0085);
               }
               §§goto(addr006d);
            }
            addr0085:
            return _loc1_;
         }
         §§goto(addr006d);
      }
      
      private function _QuestTaskActiveSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_optionsPopup";
            if(!_loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr005d:
                     _loc1_.dynaBmpSourceName = "options_bg_off";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr0070);
                     }
                     §§goto(addr007c);
                  }
                  addr0070:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr007c:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0080);
               }
               addr0080:
               return _loc1_;
            }
         }
         §§goto(addr005d);
      }
      
      private function _QuestTaskActiveSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "checkmark_gray";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     addr005a:
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr0077);
                     }
                     §§goto(addr008b);
                  }
                  addr0077:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr008b:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr005a);
            }
            §§goto(addr008b);
         }
         addr008f:
         return _loc1_;
      }
      
      public function ___QuestTaskActiveSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gfxIcon() : BriskImageDynaLib
      {
         return this._43132014gfxIcon;
      }
      
      public function set gfxIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._43132014gfxIcon;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._43132014gfxIcon = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gfxIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0071);
               }
            }
         }
         addr0080:
      }
      
      [Bindable(event="propertyChange")]
      public function get headerText() : LocaLabel
      {
         return this._1977519450headerText;
      }
      
      public function set headerText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1977519450headerText;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1977519450headerText = param1;
                  addr0047:
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr0073);
               }
            }
            addr0082:
            return;
         }
         §§goto(addr0047);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : QuestTaskComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:QuestTaskComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0063:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
               }
               §§goto(addr0072);
            }
            addr0081:
            return;
         }
         §§goto(addr0063);
      }
   }
}

