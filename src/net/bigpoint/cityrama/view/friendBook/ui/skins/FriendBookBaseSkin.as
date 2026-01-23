package net.bigpoint.cityrama.view.friendBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import spark.components.Group;
   import spark.skins.SparkSkin;
   
   public class FriendBookBaseSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1906413305backButton:DynamicImageButton;
      
      private var _312699062closeButton:DynamicImageButton;
      
      private var _809612678contentGroup:Group;
      
      private var _216916822sideMenu:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:PaperPopupWindow;
      
      public function FriendBookBaseSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               §§goto(addr0025);
            }
            §§goto(addr0087);
         }
         addr0025:
         mx_internal::_document = this;
         if(!(_loc2_ && Boolean(this)))
         {
            this.width = 774;
            if(!_loc2_)
            {
               this.height = 415;
               if(!_loc2_)
               {
                  this.mxmlContent = [this._FriendBookBaseSkin_Group1_i(),this._FriendBookBaseSkin_BriskImageDynaLib1_c(),this._FriendBookBaseSkin_Group2_i(),this._FriendBookBaseSkin_Group3_c(),this._FriendBookBaseSkin_Group4_c()];
                  if(_loc1_)
                  {
                     addr0087:
                     this.currentState = "normal";
                     if(_loc1_)
                     {
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        }),new State({
                           "name":"inactive",
                           "overrides":[]
                        }),new State({
                           "name":"disabledWithControlBar",
                           "overrides":[]
                        }),new State({
                           "name":"normalWithControlBar",
                           "overrides":[]
                        }),new State({
                           "name":"inactiveWithControlBar",
                           "overrides":[]
                        })];
                     }
                  }
               }
            }
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && _loc2_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     §§goto(addr004c);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr004c:
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
      
      private function _FriendBookBaseSkin_Group1_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.left = 755;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.width = 80;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.top = 30;
                  if(_loc3_)
                  {
                     _loc1_.bottom = 18;
                     if(_loc3_)
                     {
                        _loc1_.id = "sideMenu";
                        if(_loc3_)
                        {
                           addr0071:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00a1:
                                    this.sideMenu = _loc1_;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr00b3:
                                       BindingManager.executeBindings(this,"sideMenu",this.sideMenu);
                                    }
                                    §§goto(addr00c0);
                                 }
                                 §§goto(addr00b3);
                              }
                              §§goto(addr00c0);
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr00b3);
                     }
                  }
                  §§goto(addr0071);
               }
               §§goto(addr00b3);
            }
            addr00c0:
            return _loc1_;
         }
         §§goto(addr00a1);
      }
      
      private function _FriendBookBaseSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr003c);
            }
            §§goto(addr0055);
         }
         addr003c:
         _loc1_.dynaBmpSourceName = "layerbase_bottom";
         if(!_loc3_)
         {
            addr0055:
            _loc1_.width = 774;
            if(_loc2_ || _loc2_)
            {
               §§goto(addr0068);
            }
            §§goto(addr00b3);
         }
         addr0068:
         _loc1_.height = 415;
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.bottom = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.left = 0;
               if(!_loc3_)
               {
                  §§goto(addr00a7);
               }
               §§goto(addr00b3);
            }
         }
         addr00a7:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr00b3:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FriendBookBaseSkin_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.left = 0;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.right = 0;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.top = -14;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.bottom = 10;
                     if(_loc3_)
                     {
                        addr006c:
                        _loc1_.id = "contentGroup";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0090:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    §§goto(addr0099);
                                 }
                                 §§goto(addr00ab);
                              }
                           }
                           addr0099:
                           this.contentGroup = _loc1_;
                           if(_loc3_ || _loc2_)
                           {
                              addr00ab:
                              BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
                           }
                           §§goto(addr00b8);
                        }
                     }
                     addr00b8:
                     return _loc1_;
                  }
                  §§goto(addr0090);
               }
               §§goto(addr006c);
            }
            §§goto(addr0090);
         }
         §§goto(addr00ab);
      }
      
      private function _FriendBookBaseSkin_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.width = 28;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.height = 26;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.top = 30;
                  if(!_loc3_)
                  {
                     _loc1_.left = 18;
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.mxmlContent = [this._FriendBookBaseSkin_DynamicImageButton1_i()];
                        addr006b:
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§goto(addr0090);
                        }
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr006b);
               }
               addr0090:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr00a4:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00a8);
            }
         }
         addr00a8:
         return _loc1_;
      }
      
      private function _FriendBookBaseSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc3_)
         {
            _loc1_.styleName = "back";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.verticalCenter = 0;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     _loc1_.visible = false;
                     §§goto(addr004f);
                  }
                  §§goto(addr006c);
               }
               §§goto(addr007f);
            }
            §§goto(addr006c);
         }
         addr004f:
         if(!(_loc3_ && Boolean(this)))
         {
            addr006c:
            _loc1_.id = "backButton";
            if(_loc2_ || _loc2_)
            {
               addr007f:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§goto(addr00b0);
                     }
                     §§goto(addr00ba);
                  }
               }
            }
            addr00b0:
            this.backButton = _loc1_;
            if(_loc2_)
            {
               addr00ba:
               BindingManager.executeBindings(this,"backButton",this.backButton);
            }
            §§goto(addr00c7);
         }
         addr00c7:
         return _loc1_;
      }
      
      private function _FriendBookBaseSkin_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.width = 25;
            if(_loc2_)
            {
               _loc1_.height = 24;
               var _temp_2:* = _loc3_;
               §§push(_temp_2);
               if(!_temp_2)
               {
                  addr0050:
                  _loc1_.top = 20;
                  if(_loc2_)
                  {
                     §§goto(addr005a);
                  }
               }
               §§goto(addr009c);
            }
            §§goto(addr0050);
         }
         addr005a:
         _loc1_.right = 20;
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._FriendBookBaseSkin_DynamicImageButton2_i()];
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr0088);
            }
            §§goto(addr009c);
         }
         addr0088:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && Boolean(this)))
            {
               addr009c:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FriendBookBaseSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_)
         {
            _loc1_.styleName = "close";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.verticalCenter = 0;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "closeButton";
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              addr0095:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 §§goto(addr009e);
                              }
                           }
                           §§goto(addr00b0);
                        }
                        addr009e:
                        this.closeButton = _loc1_;
                        if(_loc2_ || _loc3_)
                        {
                           addr00b0:
                           BindingManager.executeBindings(this,"closeButton",this.closeButton);
                        }
                        §§goto(addr00bd);
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr00bd);
               }
               §§goto(addr00b0);
            }
            addr00bd:
            return _loc1_;
         }
         §§goto(addr00b0);
      }
      
      [Bindable(event="propertyChange")]
      public function get backButton() : DynamicImageButton
      {
         return this._1906413305backButton;
      }
      
      public function set backButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1906413305backButton;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1906413305backButton = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0069:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0081:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0069);
            }
            addr0090:
            return;
         }
         §§goto(addr0081);
      }
      
      [Bindable(event="propertyChange")]
      public function get closeButton() : DynamicImageButton
      {
         return this._312699062closeButton;
      }
      
      public function set closeButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._312699062closeButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._312699062closeButton = param1;
                  addr0038:
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"closeButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0055);
            }
            addr0074:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._809612678contentGroup;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  addr0046:
                  this._809612678contentGroup = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr007f);
            }
            addr008e:
            return;
         }
         §§goto(addr0046);
      }
      
      [Bindable(event="propertyChange")]
      public function get sideMenu() : Group
      {
         return this._216916822sideMenu;
      }
      
      public function set sideMenu(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._216916822sideMenu;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._216916822sideMenu = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0050:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sideMenu",_loc2_,param1));
                        }
                     }
                     §§goto(addr005f);
                  }
               }
               §§goto(addr0050);
            }
         }
         addr005f:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : PaperPopupWindow
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:PaperPopupWindow) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
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
         §§goto(addr0055);
      }
   }
}

