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
   
   public class QuestTaskNormalSkin extends SparkSkin implements IStateClient2
   {
      
      private var _43132014gfxIcon:BriskImageDynaLib;
      
      private var _1977519450headerText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:QuestTaskComponent;
      
      public function QuestTaskNormalSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.width = 470;
                  if(_loc1_)
                  {
                     this.mxmlContent = [this._QuestTaskNormalSkin_HGroup1_c()];
                     if(_loc1_)
                     {
                        addr005c:
                        this.currentState = "normal";
                        if(_loc1_ || _loc2_)
                        {
                           this.addEventListener("creationComplete",this.___QuestTaskNormalSkin_SparkSkin1_creationComplete);
                           if(_loc1_ || _loc1_)
                           {
                              addr0093:
                              states = [new State({
                                 "name":"normal",
                                 "overrides":[]
                              }),new State({
                                 "name":"disabled",
                                 "overrides":[]
                              })];
                           }
                           §§goto(addr00bb);
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr00bb);
                  }
                  §§goto(addr0093);
               }
               addr00bb:
               return;
            }
         }
         §§goto(addr005c);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr004d);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr004d:
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
      
      private function _QuestTaskNormalSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.height = 45;
                     if(_loc2_ || _loc3_)
                     {
                        addr0075:
                        _loc1_.gap = 10;
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.mxmlContent = [this._QuestTaskNormalSkin_Group1_c(),this._QuestTaskNormalSkin_LocaLabel1_i(),this._QuestTaskNormalSkin_Group2_c()];
                           if(_loc2_)
                           {
                              addr00ae:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr00ae);
                     }
                     addr00c6:
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr0075);
      }
      
      private function _QuestTaskNormalSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.width = 60;
            if(!_loc3_)
            {
               _loc1_.height = 45;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._QuestTaskNormalSkin_BriskImageDynaLib1_c(),this._QuestTaskNormalSkin_BriskImageDynaLib2_i()];
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr006e:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0072);
                  }
               }
            }
            §§goto(addr006e);
         }
         addr0072:
         return _loc1_;
      }
      
      private function _QuestTaskNormalSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc2_)
            {
               addr003a:
               _loc1_.dynaBmpSourceName = "quest_minipostit_inactiv";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003a);
      }
      
      private function _QuestTaskNormalSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.id = "gfxIcon";
                     if(_loc3_)
                     {
                        addr0071:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0086:
                                 this.gfxIcon = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr0090:
                                    BindingManager.executeBindings(this,"gfxIcon",this.gfxIcon);
                                 }
                              }
                              return _loc1_;
                           }
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0090);
            }
            §§goto(addr0071);
         }
         §§goto(addr0090);
      }
      
      private function _QuestTaskNormalSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.styleName = "questTaskNormal";
               if(!(_loc3_ && _loc2_))
               {
                  addr0048:
                  _loc1_.id = "headerText";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0072:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr007b:
                              this.headerText = _loc1_;
                              if(_loc2_)
                              {
                                 addr0085:
                                 BindingManager.executeBindings(this,"headerText",this.headerText);
                              }
                              §§goto(addr0092);
                           }
                           §§goto(addr0085);
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr0072);
               }
               addr0092:
               return _loc1_;
            }
            §§goto(addr0048);
         }
         §§goto(addr0085);
      }
      
      private function _QuestTaskNormalSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._QuestTaskNormalSkin_BriskImageDynaLib3_c(),this._QuestTaskNormalSkin_BriskImageDynaLib4_c(),this._QuestTaskNormalSkin_BriskImageDynaLib5_c()];
            if(_loc3_)
            {
               addr0046:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      private function _QuestTaskNormalSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_optionsPopup";
            if(_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_)
               {
                  addr004a:
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr005f);
               }
               addr0054:
               _loc1_.dynaBmpSourceName = "options_frame";
               if(!_loc3_)
               {
                  addr005f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr006f);
            }
            §§goto(addr004a);
         }
         addr006f:
         return _loc1_;
      }
      
      private function _QuestTaskNormalSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_optionsPopup";
            if(_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005f:
                     _loc1_.dynaBmpSourceName = "options_bg_off";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0076:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr0076);
               }
               addr007a:
               return _loc1_;
            }
            §§goto(addr005f);
         }
         §§goto(addr0076);
      }
      
      private function _QuestTaskNormalSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "checkmark_gray";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.verticalCenter = 0;
                  addr0048:
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr006f);
               }
               addr0065:
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  addr006f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr007f);
            }
            addr007f:
            return _loc1_;
         }
         §§goto(addr0048);
      }
      
      public function ___QuestTaskNormalSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._43132014gfxIcon = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gfxIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0068);
            }
            addr008e:
            return;
         }
         §§goto(addr007f);
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
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1977519450headerText = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerText",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : QuestTaskComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:QuestTaskComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
         }
         addr0085:
      }
   }
}

