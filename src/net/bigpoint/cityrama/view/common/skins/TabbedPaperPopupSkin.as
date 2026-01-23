package net.bigpoint.cityrama.view.common.skins
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
   import spark.components.TabBar;
   import spark.skins.SparkSkin;
   
   public class TabbedPaperPopupSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1906413305backButton:DynamicImageButton;
      
      private var _312699062closeButton:DynamicImageButton;
      
      private var _809612678contentGroup:Group;
      
      private var _216916822sideMenu:Group;
      
      private var _881418178tabBar:TabBar;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:PaperPopupWindow;
      
      public function TabbedPaperPopupSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.width = 775;
                  if(_loc2_)
                  {
                     addr0043:
                     this.height = 440;
                     if(!(_loc1_ && Boolean(this)))
                     {
                        this.mxmlContent = [this._TabbedPaperPopupSkin_Group1_i(),this._TabbedPaperPopupSkin_Group2_c()];
                        if(_loc2_)
                        {
                           §§goto(addr0076);
                        }
                        §§goto(addr008a);
                     }
                     addr0076:
                     this.currentState = "normal";
                     if(_loc2_ || Boolean(this))
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
                        addr008a:
                     }
                     §§goto(addr0100);
                  }
                  addr0100:
                  return;
               }
               §§goto(addr0043);
            }
            §§goto(addr0076);
         }
         §§goto(addr008a);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && Boolean(param1)))
            {
               addr003f:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr003f);
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
      
      private function _TabbedPaperPopupSkin_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.left = 760;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.width = 80;
               if(_loc2_)
               {
                  _loc1_.top = 40;
                  if(!_loc3_)
                  {
                     addr0046:
                     _loc1_.bottom = 18;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.id = "sideMenu";
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0079:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 addr008d:
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00a9:
                                    this.sideMenu = _loc1_;
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       addr00bb:
                                       BindingManager.executeBindings(this,"sideMenu",this.sideMenu);
                                    }
                                    §§goto(addr00c8);
                                 }
                                 §§goto(addr00bb);
                              }
                              addr00c8:
                              return _loc1_;
                           }
                        }
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr0079);
               }
            }
            §§goto(addr0046);
         }
         §§goto(addr008d);
      }
      
      private function _TabbedPaperPopupSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0066:
                     _loc1_.mxmlContent = [this._TabbedPaperPopupSkin_Group3_c(),this._TabbedPaperPopupSkin_TabBar1_i()];
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0066);
      }
      
      private function _TabbedPaperPopupSkin_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.width = 775;
            if(!_loc3_)
            {
               §§goto(addr003d);
            }
            §§goto(addr0082);
         }
         addr003d:
         _loc1_.height = 413;
         if(!_loc3_)
         {
            _loc1_.bottom = 0;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._TabbedPaperPopupSkin_BriskImageDynaLib1_c(),this._TabbedPaperPopupSkin_Group4_i(),this._TabbedPaperPopupSkin_DynamicImageButton1_i(),this._TabbedPaperPopupSkin_DynamicImageButton2_i()];
               if(!_loc3_)
               {
                  addr0082:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _TabbedPaperPopupSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "tabbed_layer_bg";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.percentHeight = 100;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0088:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr009c:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0088);
            }
            §§goto(addr009c);
         }
         §§goto(addr0088);
      }
      
      private function _TabbedPaperPopupSkin_Group4_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.left = 20;
            if(_loc3_ || _loc2_)
            {
               _loc1_.right = 20;
               if(!_loc2_)
               {
                  _loc1_.top = 55;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.bottom = 14;
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr006e);
                     }
                     §§goto(addr00c6);
                  }
                  addr006e:
                  _loc1_.maxWidth = 754;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0082:
                     _loc1_.id = "contentGroup";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr00ab:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§goto(addr00bc);
                              }
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr00bc);
                     }
                     §§goto(addr00ab);
                  }
                  addr00bc:
                  this.contentGroup = _loc1_;
                  if(_loc3_)
                  {
                     addr00c6:
                     BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
                  }
                  return _loc1_;
               }
               §§goto(addr0082);
            }
         }
         §§goto(addr00ab);
      }
      
      private function _TabbedPaperPopupSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.styleName = "back";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.top = 26;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.left = 16;
                  if(_loc3_)
                  {
                     _loc1_.visible = false;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0073:
                        _loc1_.id = "backButton";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr009d:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr00a6:
                                    this.backButton = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00b0:
                                       BindingManager.executeBindings(this,"backButton",this.backButton);
                                    }
                                 }
                              }
                              §§goto(addr00bd);
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr00bd);
                     }
                     §§goto(addr009d);
                  }
                  addr00bd:
                  return _loc1_;
               }
               §§goto(addr00a6);
            }
            §§goto(addr00b0);
         }
         §§goto(addr0073);
      }
      
      private function _TabbedPaperPopupSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "close";
            if(!_loc3_)
            {
               _loc1_.top = 20;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0044:
                  _loc1_.right = 13;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.id = "closeButton";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr0092);
                           }
                           §§goto(addr00ad);
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr00ad);
                  }
                  addr0092:
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     addr009b:
                     this.closeButton = _loc1_;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr00ad:
                        BindingManager.executeBindings(this,"closeButton",this.closeButton);
                     }
                  }
                  §§goto(addr00ba);
               }
               addr00ba:
               return _loc1_;
            }
            §§goto(addr0044);
         }
         §§goto(addr009b);
      }
      
      private function _TabbedPaperPopupSkin_TabBar1_i() : TabBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TabBar = new TabBar();
         if(!_loc2_)
         {
            _loc1_.requireSelection = true;
            if(_loc3_ || _loc2_)
            {
               §§goto(addr0036);
            }
            §§goto(addr00b5);
         }
         addr0036:
         _loc1_.percentWidth = 100;
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.top = 16;
            if(_loc3_)
            {
               _loc1_.left = 0;
               if(!_loc2_)
               {
                  §§goto(addr0069);
               }
               §§goto(addr0078);
            }
            §§goto(addr00ab);
         }
         addr0069:
         _loc1_.setStyle("skinClass",PopupTabBarSkin);
         if(_loc3_)
         {
            addr0078:
            _loc1_.id = "tabBar";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr009a:
                     _loc1_.document = this;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr00ab:
                        this.tabBar = _loc1_;
                        if(_loc3_)
                        {
                           addr00b5:
                           BindingManager.executeBindings(this,"tabBar",this.tabBar);
                        }
                     }
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr00ab);
            }
            §§goto(addr009a);
         }
         addr00c2:
         return _loc1_;
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1906413305backButton = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0057);
            }
            addr0075:
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get closeButton() : DynamicImageButton
      {
         return this._312699062closeButton;
      }
      
      public function set closeButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._312699062closeButton;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._312699062closeButton = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"closeButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
               }
               §§goto(addr0075);
            }
         }
         addr0084:
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._809612678contentGroup = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get sideMenu() : Group
      {
         return this._216916822sideMenu;
      }
      
      public function set sideMenu(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._216916822sideMenu;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr003e:
                  this._216916822sideMenu = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sideMenu",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr005c);
            }
            addr0083:
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBar() : TabBar
      {
         return this._881418178tabBar;
      }
      
      public function set tabBar(param1:TabBar) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._881418178tabBar;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._881418178tabBar = param1;
                  if(_loc3_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBar",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0056);
            }
            addr0075:
            return;
         }
         §§goto(addr0056);
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
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
         }
         addr007d:
      }
   }
}

