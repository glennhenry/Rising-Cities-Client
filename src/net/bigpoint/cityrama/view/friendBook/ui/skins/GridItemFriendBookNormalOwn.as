package net.bigpoint.cityrama.view.friendBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendLevelStarComponent;
   import net.bigpoint.cityrama.view.friendBook.ui.components.GridItemFriendBookComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class GridItemFriendBookNormalOwn extends SparkSkin implements IStateClient2
   {
      
      private var _1299216927backgroundPrint:BriskImageDynaLib;
      
      private var _292147534costGroup:Group;
      
      private var _2096547611friendLevelStarComponent:FriendLevelStarComponent;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var _1844873785newIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:GridItemFriendBookComponent;
      
      public function GridItemFriendBookNormalOwn()
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
               if(!(_loc1_ && _loc1_))
               {
                  addr0038:
                  this.width = 132;
                  if(_loc2_)
                  {
                     this.height = 160;
                     if(!(_loc1_ && Boolean(this)))
                     {
                        addr0056:
                        this.mxmlContent = [this._GridItemFriendBookNormalOwn_HGroup1_c()];
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr0078);
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0056);
               }
               addr0078:
               this.currentState = "up";
               if(_loc2_ || _loc2_)
               {
                  this.addEventListener("creationComplete",this.___GridItemFriendBookNormalOwn_SparkSkin1_creationComplete);
                  if(_loc2_ || _loc2_)
                  {
                     states = [new State({
                        "name":"up",
                        "overrides":[]
                     }),new State({
                        "name":"normal",
                        "overrides":[]
                     }),new State({
                        "name":"over",
                        "overrides":[]
                     }),new State({
                        "name":"down",
                        "overrides":[]
                     }),new State({
                        "name":"disabled",
                        "overrides":[]
                     })];
                     addr00a5:
                  }
               }
               return;
            }
            §§goto(addr0038);
         }
         §§goto(addr0056);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     return;
                  }
               }
               addr006b:
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr006b);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
      }
      
      override protected function measure() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.measure();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.commitProperties();
         }
      }
      
      private function _GridItemFriendBookNormalOwn_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.gap = 0;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._GridItemFriendBookNormalOwn_Group1_c(),this._GridItemFriendBookNormalOwn_VGroup1_c()];
               if(_loc2_)
               {
                  addr0064:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr007c);
            }
            §§goto(addr0064);
         }
         addr007c:
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalOwn_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 8;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr006b:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr006f);
            }
            §§goto(addr006b);
         }
         addr006f:
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalOwn_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._GridItemFriendBookNormalOwn_Group2_c(),this._GridItemFriendBookNormalOwn_Group3_c()];
            if(_loc2_)
            {
               §§goto(addr0043);
            }
            §§goto(addr004f);
         }
         addr0043:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr004f:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalOwn_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               addr003c:
               _loc1_.height = 20;
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0052:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0052);
         }
         §§goto(addr003c);
      }
      
      private function _GridItemFriendBookNormalOwn_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               addr0043:
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._GridItemFriendBookNormalOwn_Group4_i(),this._GridItemFriendBookNormalOwn_BriskImageDynaLib1_i(),this._GridItemFriendBookNormalOwn_BriskImageDynaLib2_i(),this._GridItemFriendBookNormalOwn_BriskImageDynaLib3_i(),this._GridItemFriendBookNormalOwn_BriskMCDynaLib2_c(),this._GridItemFriendBookNormalOwn_FriendLevelStarComponent1_i(),this._GridItemFriendBookNormalOwn_BriskImageDynaLib4_i()];
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0043);
      }
      
      private function _GridItemFriendBookNormalOwn_Group4_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.bottom = -20;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.mxmlContent = [this._GridItemFriendBookNormalOwn_BriskMCDynaLib1_c(),this._GridItemFriendBookNormalOwn_VGroup2_c()];
                  if(!_loc3_)
                  {
                     _loc1_.id = "costGroup";
                     if(!_loc3_)
                     {
                        addr007c:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr009d:
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 §§goto(addr00ae);
                              }
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr009d);
                  }
                  addr00ae:
                  this.costGroup = _loc1_;
                  if(_loc2_)
                  {
                     addr00b8:
                     BindingManager.executeBindings(this,"costGroup",this.costGroup);
                  }
                  return _loc1_;
               }
               §§goto(addr007c);
            }
            §§goto(addr009d);
         }
         §§goto(addr00b8);
      }
      
      private function _GridItemFriendBookNormalOwn_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaMCSourceName = "stickyPaperCenterDetail";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr009f);
               }
               addr0064:
               _loc1_.bottom = 12;
               if(_loc2_)
               {
                  addr006f:
                  _loc1_.width = 104;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.height = 38;
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr009f);
                     }
                     §§goto(addr00b3);
                  }
                  addr009f:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr00b3:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr00b7);
            }
            addr00b7:
            return _loc1_;
         }
         §§goto(addr006f);
      }
      
      private function _GridItemFriendBookNormalOwn_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.width = 116;
            if(_loc3_)
            {
               _loc1_.paddingTop = 4;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.height = 36;
                  if(!_loc2_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr009f);
               }
               §§goto(addr0064);
            }
            addr0059:
            _loc1_.verticalAlign = "middle";
            if(_loc3_)
            {
               addr0064:
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._GridItemFriendBookNormalOwn_LocaLabel1_i()];
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr009f:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr009f);
               }
            }
            addr00a3:
            return _loc1_;
         }
         §§goto(addr009f);
      }
      
      private function _GridItemFriendBookNormalOwn_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "friendNameLabel";
            if(_loc2_)
            {
               addr0029:
               _loc1_.maxWidth = 92;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.maxHeight = 28;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.bottom = -10;
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.text = "peter Mann Grafenstein";
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.id = "itemLabel";
                           if(_loc2_ || _loc2_)
                           {
                              addr00a2:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00ae:
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       §§goto(addr00b7);
                                    }
                                    §§goto(addr00c1);
                                 }
                              }
                              §§goto(addr00b7);
                           }
                           §§goto(addr00ae);
                        }
                        addr00b7:
                        this.itemLabel = _loc1_;
                        if(_loc2_)
                        {
                           addr00c1:
                           BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
                        }
                        return _loc1_;
                     }
                     §§goto(addr00c1);
                  }
               }
               §§goto(addr00a2);
            }
            §§goto(addr00ae);
         }
         §§goto(addr0029);
      }
      
      private function _GridItemFriendBookNormalOwn_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.top = 6;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.id = "backgroundPrint";
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr0096);
                           }
                        }
                        §§goto(addr009f);
                     }
                     addr0096:
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr009f:
                        this.backgroundPrint = _loc1_;
                        if(_loc3_)
                        {
                           BindingManager.executeBindings(this,"backgroundPrint",this.backgroundPrint);
                        }
                     }
                     §§goto(addr00b6);
                  }
               }
            }
         }
         addr00b6:
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalOwn_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(_loc3_)
            {
               _loc1_.verticalCenter = -12;
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.dynaBmpSourceName = "polaroid_myself";
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.id = "image";
                        if(_loc3_ || _loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr008f);
                              }
                              §§goto(addr00aa);
                           }
                        }
                        §§goto(addr0098);
                     }
                     addr008f:
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr0098:
                        this.image = _loc1_;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr00aa:
                           BindingManager.executeBindings(this,"image",this.image);
                        }
                     }
                  }
                  §§goto(addr00b7);
               }
               §§goto(addr0098);
            }
            addr00b7:
            return _loc1_;
         }
         §§goto(addr00aa);
      }
      
      private function _GridItemFriendBookNormalOwn_BriskImageDynaLib3_i() : BriskImageDynaLib
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
               _loc1_.bottom = 43;
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr0046);
               }
               §§goto(addr0079);
            }
            §§goto(addr0099);
         }
         addr0046:
         _loc1_.right = 15;
         if(!_loc3_)
         {
            _loc1_.dynaBmpSourceName = "architect_icon_detailinfo";
            if(!_loc3_)
            {
               _loc1_.id = "infoIcon";
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr0079);
               }
               §§goto(addr00b4);
            }
            addr0079:
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0099:
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     §§goto(addr00a2);
                  }
                  §§goto(addr00b4);
               }
            }
            addr00a2:
            this.infoIcon = _loc1_;
            if(!(_loc3_ && Boolean(this)))
            {
               addr00b4:
               BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
            }
            §§goto(addr00c1);
         }
         addr00c1:
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalOwn_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.top = -3;
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  addr004a:
                  if(!_loc3_)
                  {
                     addr0060:
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     if(!(_loc3_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0080:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0084);
                     }
                     §§goto(addr0080);
                  }
               }
               addr0084:
               return _loc1_;
            }
            §§goto(addr0060);
         }
         §§goto(addr004a);
      }
      
      private function _GridItemFriendBookNormalOwn_FriendLevelStarComponent1_i() : FriendLevelStarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:FriendLevelStarComponent = new FriendLevelStarComponent();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.id = "friendLevelStarComponent";
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr006d:
                        this.friendLevelStarComponent = _loc1_;
                        if(_loc2_ || _loc3_)
                        {
                           addr007f:
                           BindingManager.executeBindings(this,"friendLevelStarComponent",this.friendLevelStarComponent);
                        }
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr006d);
            }
            addr008c:
            return _loc1_;
         }
         §§goto(addr007f);
      }
      
      private function _GridItemFriendBookNormalOwn_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.top = -8;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.right = 0;
                  if(_loc3_)
                  {
                     §§goto(addr004e);
                  }
               }
            }
            §§goto(addr00bb);
         }
         addr004e:
         _loc1_.measuredWidth = 0;
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.includeInLayout = false;
            if(_loc3_ || _loc3_)
            {
               _loc1_.visible = true;
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr0091);
               }
               §§goto(addr009c);
            }
            §§goto(addr00bb);
         }
         addr0091:
         _loc1_.dynaBmpSourceName = "new_icon";
         if(!_loc2_)
         {
            addr009c:
            _loc1_.id = "newIcon";
            if(_loc3_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr00bb:
                     _loc1_.document = this;
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr00d8);
                     }
                  }
                  §§goto(addr00ea);
               }
               addr00d8:
               this.newIcon = _loc1_;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr00ea:
                  BindingManager.executeBindings(this,"newIcon",this.newIcon);
               }
               §§goto(addr00f7);
            }
            §§goto(addr00ea);
         }
         addr00f7:
         return _loc1_;
      }
      
      public function ___GridItemFriendBookNormalOwn_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundPrint() : BriskImageDynaLib
      {
         return this._1299216927backgroundPrint;
      }
      
      public function set backgroundPrint(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1299216927backgroundPrint;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1299216927backgroundPrint = param1;
                  if(_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundPrint",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0057);
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get costGroup() : Group
      {
         return this._292147534costGroup;
      }
      
      public function set costGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._292147534costGroup;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._292147534costGroup = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
               }
               §§goto(addr0073);
            }
         }
         addr0082:
      }
      
      [Bindable(event="propertyChange")]
      public function get friendLevelStarComponent() : FriendLevelStarComponent
      {
         return this._2096547611friendLevelStarComponent;
      }
      
      public function set friendLevelStarComponent(param1:FriendLevelStarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2096547611friendLevelStarComponent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._2096547611friendLevelStarComponent = param1;
                  if(!_loc4_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"friendLevelStarComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : BriskImageDynaLib
      {
         return this._100313435image;
      }
      
      public function set image(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._100313435image;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._100313435image = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0077);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoIcon() : BriskImageDynaLib
      {
         return this._177606215infoIcon;
      }
      
      public function set infoIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._177606215infoIcon;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._177606215infoIcon = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
            }
            addr007e:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemLabel() : LocaLabel
      {
         return this._2135689121itemLabel;
      }
      
      public function set itemLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2135689121itemLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._2135689121itemLabel = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr005d);
            }
            addr0084:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get newIcon() : BriskImageDynaLib
      {
         return this._1844873785newIcon;
      }
      
      public function set newIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1844873785newIcon;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1844873785newIcon = param1;
                  if(!_loc4_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : GridItemFriendBookComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:GridItemFriendBookComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._213507019hostComponent = param1;
                  addr003e:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003e);
      }
   }
}

