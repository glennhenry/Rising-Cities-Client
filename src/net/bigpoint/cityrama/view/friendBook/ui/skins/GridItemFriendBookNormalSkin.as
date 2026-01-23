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
   
   public class GridItemFriendBookNormalSkin extends SparkSkin implements IStateClient2
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
      
      public function GridItemFriendBookNormalSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.width = 132;
                  if(_loc2_)
                  {
                     this.height = 160;
                     if(!_loc1_)
                     {
                        addr004e:
                        this.mxmlContent = [this._GridItemFriendBookNormalSkin_HGroup1_c()];
                        if(!(_loc1_ && _loc2_))
                        {
                           §§goto(addr0070);
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0095);
               }
            }
            addr0070:
            this.currentState = "up";
            if(_loc2_)
            {
               addr007c:
               this.addEventListener("creationComplete",this.___GridItemFriendBookNormalSkin_SparkSkin1_creationComplete);
               if(_loc2_ || Boolean(this))
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
                  addr0095:
               }
            }
            return;
         }
         §§goto(addr004e);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
         }
         this.__moduleFactoryInitialized = true;
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
         if(!_loc1_)
         {
            super.measure();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.commitProperties();
         }
      }
      
      private function _GridItemFriendBookNormalSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.mxmlContent = [this._GridItemFriendBookNormalSkin_Group1_c(),this._GridItemFriendBookNormalSkin_VGroup1_c()];
               addr0046:
               if(_loc3_ || Boolean(_loc1_))
               {
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
         §§goto(addr0046);
      }
      
      private function _GridItemFriendBookNormalSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.width = 8;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0066:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0066);
      }
      
      private function _GridItemFriendBookNormalSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._GridItemFriendBookNormalSkin_Group2_c(),this._GridItemFriendBookNormalSkin_Group3_c()];
            if(_loc2_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr0067:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr006b);
            }
            §§goto(addr0067);
         }
         addr006b:
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.height = 20;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr005d:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0069:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0069);
         }
         §§goto(addr005d);
      }
      
      private function _GridItemFriendBookNormalSkin_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               addr003a:
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.mxmlContent = [this._GridItemFriendBookNormalSkin_Group4_i(),this._GridItemFriendBookNormalSkin_BriskImageDynaLib1_i(),this._GridItemFriendBookNormalSkin_BriskImageDynaLib2_i(),this._GridItemFriendBookNormalSkin_BriskImageDynaLib3_i(),this._GridItemFriendBookNormalSkin_BriskMCDynaLib2_c(),this._GridItemFriendBookNormalSkin_FriendLevelStarComponent1_i(),this._GridItemFriendBookNormalSkin_BriskImageDynaLib4_i()];
                  addr0057:
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr00ab:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr00ab);
            }
            §§goto(addr0057);
         }
         §§goto(addr003a);
      }
      
      private function _GridItemFriendBookNormalSkin_Group4_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.bottom = -20;
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._GridItemFriendBookNormalSkin_BriskMCDynaLib1_c(),this._GridItemFriendBookNormalSkin_VGroup2_c()];
                  if(_loc3_)
                  {
                     _loc1_.id = "costGroup";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr0084);
                           }
                        }
                     }
                  }
               }
               §§goto(addr008d);
            }
            addr0084:
            _loc1_.document = this;
            if(!_loc2_)
            {
               addr008d:
               this.costGroup = _loc1_;
               if(!_loc2_)
               {
                  addr0097:
                  BindingManager.executeBindings(this,"costGroup",this.costGroup);
               }
            }
            return _loc1_;
         }
         §§goto(addr0097);
      }
      
      private function _GridItemFriendBookNormalSkin_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaMCSourceName = "stickyPaperCenterDetail";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.bottom = 12;
                     if(_loc3_)
                     {
                        _loc1_.width = 104;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0095:
                           _loc1_.height = 38;
                           if(!(_loc2_ && _loc3_))
                           {
                              addr00a7:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                        §§goto(addr00b7);
                     }
                     §§goto(addr00a7);
                  }
               }
            }
            §§goto(addr0095);
         }
         addr00b7:
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalSkin_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.width = 116;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.paddingTop = 4;
               if(_loc3_ || _loc2_)
               {
                  addr0058:
                  _loc1_.height = 36;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.horizontalAlign = "center";
                        if(!_loc2_)
                        {
                           addr0093:
                           _loc1_.mxmlContent = [this._GridItemFriendBookNormalSkin_LocaLabel1_i()];
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr00ab:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    addr00b7:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr00b7);
               }
               §§goto(addr0093);
            }
            §§goto(addr0058);
         }
         §§goto(addr00ab);
      }
      
      private function _GridItemFriendBookNormalSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.styleName = "friendNameLabel";
            if(_loc3_)
            {
               _loc1_.maxWidth = 92;
               if(_loc3_)
               {
                  _loc1_.maxHeight = 28;
                  if(!_loc2_)
                  {
                     _loc1_.bottom = -10;
                     if(_loc3_)
                     {
                        addr0061:
                        _loc1_.text = "peter Mann Grafenstein";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.id = "itemLabel";
                           if(!_loc2_)
                           {
                              addr0080:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§goto(addr00a2);
                                 }
                              }
                              §§goto(addr00b3);
                           }
                           §§goto(addr00bd);
                        }
                        §§goto(addr00b3);
                     }
                     addr00a2:
                     _loc1_.document = this;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr00b3:
                        this.itemLabel = _loc1_;
                        if(_loc3_)
                        {
                           addr00bd:
                           BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
                        }
                     }
                     §§goto(addr00ca);
                  }
               }
               addr00ca:
               return _loc1_;
            }
            §§goto(addr0080);
         }
         §§goto(addr0061);
      }
      
      private function _GridItemFriendBookNormalSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.top = 6;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0052:
                     _loc1_.id = "backgroundPrint";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr007d:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 §§goto(addr0086);
                              }
                              §§goto(addr0090);
                           }
                        }
                        §§goto(addr0086);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0052);
            }
            addr0086:
            this.backgroundPrint = _loc1_;
            if(_loc3_)
            {
               addr0090:
               BindingManager.executeBindings(this,"backgroundPrint",this.backgroundPrint);
            }
            §§goto(addr009d);
         }
         addr009d:
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.verticalCenter = -12;
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.dynaBmpSourceName = "polaroid_friend";
                     if(!_loc2_)
                     {
                        _loc1_.id = "image";
                        if(!(_loc2_ && _loc3_))
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr00a0:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§goto(addr00b1);
                                 }
                                 §§goto(addr00bb);
                              }
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr00bb);
                  }
                  addr00b1:
                  this.image = _loc1_;
                  if(_loc3_)
                  {
                     addr00bb:
                     BindingManager.executeBindings(this,"image",this.image);
                  }
                  return _loc1_;
               }
            }
            §§goto(addr00a0);
         }
         §§goto(addr00bb);
      }
      
      private function _GridItemFriendBookNormalSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.bottom = 43;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.right = 15;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0068:
                     _loc1_.dynaBmpSourceName = "architect_icon_detailinfo";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.id = "infoIcon";
                        if(!(_loc3_ && _loc3_))
                        {
                           addr008e:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00b0:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    §§goto(addr00b9);
                                 }
                              }
                              §§goto(addr00cb);
                           }
                        }
                     }
                  }
                  addr00b9:
                  this.infoIcon = _loc1_;
                  if(_loc2_ || _loc2_)
                  {
                     addr00cb:
                     BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
                  }
                  return _loc1_;
               }
               §§goto(addr0068);
            }
            §§goto(addr00b0);
         }
         §§goto(addr008e);
      }
      
      private function _GridItemFriendBookNormalSkin_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.top = -3;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || _loc2_)
                  {
                     addr0067:
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     if(_loc2_)
                     {
                        §§goto(addr0073);
                     }
                     §§goto(addr007f);
                  }
               }
               §§goto(addr0073);
            }
            §§goto(addr0067);
         }
         addr0073:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr007f:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalSkin_FriendLevelStarComponent1_i() : FriendLevelStarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:FriendLevelStarComponent = new FriendLevelStarComponent();
         if(!_loc3_)
         {
            _loc1_.id = "friendLevelStarComponent";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr004d:
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
                        §§goto(addr008c);
                     }
                     §§goto(addr007f);
                  }
                  addr008c:
                  return _loc1_;
               }
               §§goto(addr006d);
            }
            §§goto(addr007f);
         }
         §§goto(addr004d);
      }
      
      private function _GridItemFriendBookNormalSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.top = -8;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.right = 0;
                  if(!_loc2_)
                  {
                     _loc1_.measuredWidth = 0;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.includeInLayout = false;
                        if(!_loc2_)
                        {
                           _loc1_.visible = true;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0086:
                              _loc1_.dynaBmpSourceName = "new_icon";
                              if(!_loc2_)
                              {
                                 §§goto(addr0091);
                              }
                              §§goto(addr00cf);
                           }
                           §§goto(addr00b0);
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr00b0);
                  }
                  addr0091:
                  _loc1_.id = "newIcon";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr00b0:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr00bc:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr00c5:
                              this.newIcon = _loc1_;
                              if(_loc3_)
                              {
                                 addr00cf:
                                 BindingManager.executeBindings(this,"newIcon",this.newIcon);
                              }
                           }
                        }
                        §§goto(addr00dc);
                     }
                     §§goto(addr00c5);
                  }
                  addr00dc:
                  return _loc1_;
               }
               §§goto(addr0086);
            }
            §§goto(addr00bc);
         }
         §§goto(addr00b0);
      }
      
      public function ___GridItemFriendBookNormalSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
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
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1299216927backgroundPrint = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundPrint",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0068);
            }
         }
         addr0077:
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._292147534costGroup = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costGroup",_loc2_,param1));
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
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  addr0045:
                  this._2096547611friendLevelStarComponent = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"friendLevelStarComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0045);
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
               if(_loc4_ || _loc3_)
               {
                  this._100313435image = param1;
                  addr003d:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr003d);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._177606215infoIcon = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0072);
            }
            addr0081:
            return;
         }
         §§goto(addr0072);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2135689121itemLabel = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0056);
            }
            addr0074:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get newIcon() : BriskImageDynaLib
      {
         return this._1844873785newIcon;
      }
      
      public function set newIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1844873785newIcon;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1844873785newIcon = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0075);
            }
            addr0084:
            return;
         }
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : GridItemFriendBookComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:GridItemFriendBookComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr005d);
            }
         }
         addr0083:
      }
   }
}

