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
   
   public class QuestTaskDoneSkin extends SparkSkin implements IStateClient2
   {
      
      private var _43132014gfxIcon:BriskImageDynaLib;
      
      private var _1977519450headerText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:QuestTaskComponent;
      
      public function QuestTaskDoneSkin()
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
                  this.width = 470;
                  if(_loc1_ || _loc2_)
                  {
                     addr0054:
                     this.mxmlContent = [this._QuestTaskDoneSkin_HGroup1_c()];
                     if(!(_loc2_ && _loc2_))
                     {
                        this.currentState = "normal";
                        if(!_loc2_)
                        {
                           this.addEventListener("creationComplete",this.___QuestTaskDoneSkin_SparkSkin1_creationComplete);
                           §§goto(addr0078);
                        }
                        §§goto(addr0093);
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0054);
            }
            addr0078:
            if(_loc1_)
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
         addr00bb:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr0040);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr004c);
            }
            addr0040:
            return;
         }
         addr004c:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
      }
      
      private function _QuestTaskDoneSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.gap = 10;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0078:
                        _loc1_.height = 45;
                        if(!_loc2_)
                        {
                           _loc1_.mxmlContent = [this._QuestTaskDoneSkin_Group1_c(),this._QuestTaskDoneSkin_LocaLabel1_i(),this._QuestTaskDoneSkin_Group2_c()];
                           §§goto(addr0082);
                        }
                     }
                     §§goto(addr00c7);
                  }
               }
               addr0082:
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr00c7:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr00cb);
            }
            addr00cb:
            return _loc1_;
         }
         §§goto(addr0078);
      }
      
      private function _QuestTaskDoneSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.width = 60;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.height = 45;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._QuestTaskDoneSkin_BriskImageDynaLib1_c(),this._QuestTaskDoneSkin_BriskImageDynaLib2_i()];
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0080:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0080);
      }
      
      private function _QuestTaskDoneSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "quest_minipostit_inactiv";
               §§goto(addr0039);
            }
            §§goto(addr0058);
         }
         addr0039:
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            addr0058:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _QuestTaskDoneSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     _loc1_.id = "gfxIcon";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0062:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr007a:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr0083:
                                 this.gfxIcon = _loc1_;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr0095:
                                    BindingManager.executeBindings(this,"gfxIcon",this.gfxIcon);
                                 }
                              }
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr0083);
                     }
                     addr00a2:
                     return _loc1_;
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0062);
            }
            §§goto(addr0083);
         }
         §§goto(addr0095);
      }
      
      private function _QuestTaskDoneSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.styleName = "questTaskDone";
               if(!_loc2_)
               {
                  _loc1_.id = "headerText";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr007b);
                           }
                        }
                        §§goto(addr008d);
                     }
                  }
                  addr007b:
                  this.headerText = _loc1_;
                  if(_loc3_ || Boolean(this))
                  {
                     addr008d:
                     BindingManager.executeBindings(this,"headerText",this.headerText);
                  }
                  §§goto(addr009a);
               }
               addr009a:
               return _loc1_;
            }
            §§goto(addr007b);
         }
         §§goto(addr008d);
      }
      
      private function _QuestTaskDoneSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._QuestTaskDoneSkin_BriskImageDynaLib3_c(),this._QuestTaskDoneSkin_BriskImageDynaLib4_c(),this._QuestTaskDoneSkin_BriskImageDynaLib5_c()];
            if(_loc2_ || _loc3_)
            {
               addr0051:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0051);
      }
      
      private function _QuestTaskDoneSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_optionsPopup";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalCenter = 0;
                  addr0059:
                  if(_loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "options_frame";
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr008e:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0092);
                     }
                  }
                  §§goto(addr008e);
               }
            }
            addr0092:
            return _loc1_;
         }
         §§goto(addr0059);
      }
      
      private function _QuestTaskDoneSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_optionsPopup";
            if(!_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(!_loc2_)
               {
                  addr0049:
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.dynaBmpSourceName = "options_bg_on";
                     §§goto(addr005b);
                  }
                  §§goto(addr0090);
               }
               addr005b:
               if(_loc3_ || Boolean(this))
               {
                  addr007c:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr0090:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0049);
         }
         §§goto(addr007c);
      }
      
      private function _QuestTaskDoneSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "checkmark_green";
               if(_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!_loc2_)
                     {
                        addr0070:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr007c:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr007c);
               }
            }
            §§goto(addr0070);
         }
         §§goto(addr007c);
      }
      
      public function ___QuestTaskDoneSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
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
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._43132014gfxIcon = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gfxIcon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerText() : LocaLabel
      {
         return this._1977519450headerText;
      }
      
      public function set headerText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1977519450headerText;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1977519450headerText = param1;
                  if(_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerText",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0057);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._213507019hostComponent = param1;
                  addr003f:
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr003f);
      }
   }
}

