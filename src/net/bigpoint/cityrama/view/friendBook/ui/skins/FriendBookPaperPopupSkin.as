package net.bigpoint.cityrama.view.friendBook.ui.skins
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendBookPaperPopupWindow;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FriendBookPaperPopupSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1022398728actionButton:Button;
      
      private var _1629589545actionButton1:Button;
      
      private var _1629589546actionButton2:Button;
      
      private var _1906413305backButton:DynamicImageButton;
      
      private var _312699062closeButton:DynamicImageButton;
      
      private var _809612678contentGroup:Group;
      
      private var _104976386moveArea:Group;
      
      private var _216916822sideMenu:Group;
      
      private var _881418178tabBar:BriskImageDynaLib;
      
      private var _1133061742tabOneGroup:HGroup;
      
      private var _1210330454tabOneIcon:BriskImageDynaLib;
      
      private var _1137159907tabOneLabel:LocaLabel;
      
      private var _2077196541tabThreGroup:HGroup;
      
      private var _625775477tabThreIcon:BriskImageDynaLib;
      
      private var _2073098376tabThreLabel:LocaLabel;
      
      private var _941068872tabTwoGroup:HGroup;
      
      private var _800881776tabTwoIcon:BriskImageDynaLib;
      
      private var _945167037tabTwoLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _menueTab:int = 1;
      
      private var _dirty:Boolean;
      
      private var _213507019hostComponent:FriendBookPaperPopupWindow;
      
      public function FriendBookPaperPopupSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(_loc2_ || Boolean(this))
               {
                  this.width = 785;
                  if(!_loc1_)
                  {
                     this.height = 430;
                     if(_loc2_)
                     {
                        this.mxmlContent = [this._FriendBookPaperPopupSkin_Group1_i(),this._FriendBookPaperPopupSkin_Group2_c()];
                        if(!_loc1_)
                        {
                           this.currentState = "normal";
                           if(_loc2_ || Boolean(this))
                           {
                              addr0082:
                              this.addEventListener("creationComplete",this.___FriendBookPaperPopupSkin_SparkSkin1_creationComplete);
                              if(!_loc1_)
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
                                 addr0093:
                              }
                           }
                        }
                     }
                     §§goto(addr0109);
                  }
                  §§goto(addr0082);
               }
            }
            addr0109:
            return;
         }
         §§goto(addr0093);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr0042);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr0042:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function init() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:uint = 16754688;
         if(!_loc2_)
         {
            if(getStyle("titleColor"))
            {
               if(!_loc2_)
               {
                  _loc1_ = uint(getStyle("titleColor"));
                  if(!(_loc2_ && _loc3_))
                  {
                     this.tabOneLabel.text = ResourceManager.getInstance().getString(String("rcl.booklayer.friendbook"),String("rcl.booklayer.friendbook.inviteFriendsTab"));
                     §§goto(addr004a);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr00b6);
            }
            addr004a:
            if(_loc3_ || Boolean(_loc1_))
            {
               this.tabTwoLabel.text = ResourceManager.getInstance().getString(String("rcl.booklayer.friendbook"),String("rcl.booklayer.friendbook.inviteTab"));
               addr0084:
               if(!_loc2_)
               {
                  addr00b6:
                  this.tabThreLabel.text = ResourceManager.getInstance().getString(String("rcl.booklayer.friendbook"),String("rcl.booklayer.friendbook.friendMessageTab"));
               }
            }
            §§goto(addr00d7);
         }
         addr00d7:
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.commitProperties();
            if(!_loc2_)
            {
               if(this._dirty)
               {
                  if(!_loc2_)
                  {
                     §§push(this._menueTab);
                     if(_loc1_ || Boolean(this))
                     {
                        §§push(1);
                        if(_loc1_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc1_)
                              {
                                 §§push(this.tabBar);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push("layerbase_top_tab_friends");
                                    if(_loc1_ || Boolean(this))
                                    {
                                       §§pop().dynaBmpSourceName = §§pop();
                                       if(_loc2_ && _loc2_)
                                       {
                                          addr00a3:
                                          §§push(this.tabBar);
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             addr00be:
                                             §§push("layerbase_top_tab_addfriends");
                                             if(!_loc2_)
                                             {
                                                §§pop().dynaBmpSourceName = §§pop();
                                                if(_loc2_ && _loc1_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr00e2:
                                                §§pop().dynaBmpSourceName = §§pop();
                                             }
                                             §§goto(addr00e4);
                                          }
                                          else
                                          {
                                             addr00de:
                                             §§push("layerbase_top_tab_messages");
                                          }
                                          §§goto(addr00e2);
                                       }
                                       §§goto(addr00e4);
                                    }
                                    §§goto(addr00e2);
                                 }
                                 §§goto(addr00be);
                              }
                              §§goto(addr00e4);
                           }
                           else
                           {
                              addr009a:
                              addr0098:
                              if(this._menueTab == 2)
                              {
                                 if(_loc1_)
                                 {
                                    §§goto(addr00a3);
                                 }
                                 §§goto(addr00e4);
                              }
                              else
                              {
                                 §§push(this.tabBar);
                              }
                           }
                           §§goto(addr00de);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr0098);
                  }
               }
               §§goto(addr00e4);
            }
            §§goto(addr00a3);
         }
         addr00e4:
      }
      
      public function resetToFriend_TAB() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this._menueTab = 1;
            if(!_loc1_)
            {
               §§goto(addr002b);
            }
            §§goto(addr003d);
         }
         addr002b:
         this._dirty = true;
         if(_loc2_ || Boolean(this))
         {
            addr003d:
            invalidateProperties();
         }
      }
      
      public function clickAction1(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._menueTab = 1;
            if(_loc2_ || _loc2_)
            {
               this._dirty = true;
               if(_loc2_)
               {
                  invalidateProperties();
               }
            }
         }
      }
      
      public function clickAction2(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            dispatchEvent(new Event("callMessaging",true,true));
         }
      }
      
      public function clickAction(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._menueTab = 2;
            if(!_loc2_)
            {
               §§goto(addr0025);
            }
            §§goto(addr002f);
         }
         addr0025:
         this._dirty = true;
         if(!_loc2_)
         {
            addr002f:
            invalidateProperties();
         }
      }
      
      private function _FriendBookPaperPopupSkin_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.left = 765;
            if(!_loc3_)
            {
               _loc1_.width = 80;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.top = 30;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.bottom = 18;
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.id = "sideMenu";
                        if(!_loc3_)
                        {
                           addr007f:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00a8:
                                    this.sideMenu = _loc1_;
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr00ba:
                                       BindingManager.executeBindings(this,"sideMenu",this.sideMenu);
                                    }
                                 }
                                 §§goto(addr00c7);
                              }
                              §§goto(addr00ba);
                           }
                           §§goto(addr00a8);
                        }
                        addr00c7:
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr007f);
            }
         }
         §§goto(addr00ba);
      }
      
      private function _FriendBookPaperPopupSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  §§goto(addr0050);
               }
               §§goto(addr0072);
            }
            addr0050:
            _loc1_.mxmlContent = [this._FriendBookPaperPopupSkin_Group3_c(),this._FriendBookPaperPopupSkin_Group6_i()];
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0072:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0072);
      }
      
      private function _FriendBookPaperPopupSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.width = 785;
            if(_loc3_)
            {
               _loc1_.height = 437;
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr003e);
               }
               §§goto(addr005d);
            }
            addr003e:
            _loc1_.bottom = 0;
            if(_loc3_ || _loc2_)
            {
               _loc1_.mxmlContent = [this._FriendBookPaperPopupSkin_VGroup1_c(),this._FriendBookPaperPopupSkin_Group5_i(),this._FriendBookPaperPopupSkin_DynamicImageButton1_i(),this._FriendBookPaperPopupSkin_DynamicImageButton2_i(),this._FriendBookPaperPopupSkin_Button1_i(),this._FriendBookPaperPopupSkin_Button2_i(),this._FriendBookPaperPopupSkin_Button3_i()];
               addr005d:
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr00a4);
               }
               §§goto(addr00b8);
            }
            addr00a4:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr00b8:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr00b8);
      }
      
      private function _FriendBookPaperPopupSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.mxmlContent = [this._FriendBookPaperPopupSkin_Group4_c(),this._FriendBookPaperPopupSkin_BriskImageDynaLib5_c()];
               if(!_loc2_)
               {
                  §§goto(addr006a);
               }
               §§goto(addr007e);
            }
         }
         addr006a:
         if(!_loc1_.document)
         {
            if(_loc3_ || Boolean(_loc1_))
            {
               addr007e:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._FriendBookPaperPopupSkin_BriskImageDynaLib1_i(),this._FriendBookPaperPopupSkin_HGroup1_c()];
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr004e:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr004e);
      }
      
      private function _FriendBookPaperPopupSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "layerbase_top_tab_friends";
               if(!_loc3_)
               {
                  addr0036:
                  _loc1_.width = 785;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.height = 41;
                     if(!_loc3_)
                     {
                        addr005e:
                        _loc1_.id = "tabBar";
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0071:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00a3:
                                    this.tabBar = _loc1_;
                                    if(_loc2_ || _loc3_)
                                    {
                                       BindingManager.executeBindings(this,"tabBar",this.tabBar);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr0071);
                  }
                  §§goto(addr005e);
               }
            }
            §§goto(addr00a3);
         }
         §§goto(addr0036);
      }
      
      private function _FriendBookPaperPopupSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.paddingLeft = 20;
            if(_loc3_ || _loc3_)
            {
               addr003f:
               _loc1_.paddingTop = 2;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._FriendBookPaperPopupSkin_HGroup2_i(),this._FriendBookPaperPopupSkin_HGroup3_i(),this._FriendBookPaperPopupSkin_HGroup4_i()];
                  if(!_loc2_)
                  {
                     addr007b:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr007b);
         }
         §§goto(addr003f);
      }
      
      private function _FriendBookPaperPopupSkin_HGroup2_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.paddingLeft = 10;
            if(!_loc2_)
            {
               _loc1_.paddingTop = 4;
               if(_loc3_ || _loc3_)
               {
                  addr003e:
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr005c:
                     _loc1_.horizontalAlign = "left";
                     if(_loc3_)
                     {
                        addr0067:
                        _loc1_.mxmlContent = [this._FriendBookPaperPopupSkin_BriskImageDynaLib2_i(),this._FriendBookPaperPopupSkin_LocaLabel1_i()];
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0085:
                           _loc1_.id = "tabOneGroup";
                           if(_loc3_ || _loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr00b0:
                                    _loc1_.document = this;
                                    if(_loc3_)
                                    {
                                       addr00b9:
                                       this.tabOneGroup = _loc1_;
                                       if(!_loc2_)
                                       {
                                          BindingManager.executeBindings(this,"tabOneGroup",this.tabOneGroup);
                                       }
                                    }
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr00b9);
                           }
                           §§goto(addr00b0);
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0067);
               }
               §§goto(addr005c);
            }
            §§goto(addr00b9);
         }
         §§goto(addr003e);
      }
      
      private function _FriendBookPaperPopupSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "tabicon_friendsglobal";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.id = "tabOneIcon";
                  if(_loc3_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0080:
                           _loc1_.document = this;
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr0091);
                           }
                        }
                        §§goto(addr009b);
                     }
                     addr0091:
                     this.tabOneIcon = _loc1_;
                     if(_loc3_)
                     {
                        addr009b:
                        BindingManager.executeBindings(this,"tabOneIcon",this.tabOneIcon);
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr0080);
               }
            }
         }
         addr00a8:
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.text = "FREUNDE";
            if(_loc3_)
            {
               _loc1_.width = 150;
               if(!(_loc2_ && _loc2_))
               {
                  addr0047:
                  _loc1_.maxHeight = 13;
                  if(_loc3_)
                  {
                     _loc1_.styleName = "friendbookMenue";
                     if(!_loc2_)
                     {
                        addr0068:
                        _loc1_.setStyle("verticalAlign","bottom");
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.id = "tabOneLabel";
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr00a8);
                                 }
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr00bb);
                        }
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr00bb);
               }
               addr00a8:
               _loc1_.document = this;
               if(_loc3_)
               {
                  addr00b1:
                  this.tabOneLabel = _loc1_;
                  if(_loc3_)
                  {
                     addr00bb:
                     BindingManager.executeBindings(this,"tabOneLabel",this.tabOneLabel);
                  }
               }
               return _loc1_;
            }
            §§goto(addr0047);
         }
         §§goto(addr0068);
      }
      
      private function _FriendBookPaperPopupSkin_HGroup3_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.paddingLeft = -1;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.paddingTop = 4;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     _loc1_.horizontalAlign = "left";
                     if(_loc2_)
                     {
                        _loc1_.mxmlContent = [this._FriendBookPaperPopupSkin_BriskImageDynaLib3_i(),this._FriendBookPaperPopupSkin_LocaLabel2_i()];
                        if(!_loc3_)
                        {
                           §§goto(addr007e);
                        }
                        §§goto(addr00c5);
                     }
                  }
                  §§goto(addr0091);
               }
               §§goto(addr007e);
            }
            §§goto(addr0091);
         }
         addr007e:
         _loc1_.id = "tabTwoGroup";
         if(_loc2_ || Boolean(this))
         {
            addr0091:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  _loc1_.document = this;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr00bb:
                     this.tabTwoGroup = _loc1_;
                     if(!_loc3_)
                     {
                        addr00c5:
                        BindingManager.executeBindings(this,"tabTwoGroup",this.tabTwoGroup);
                     }
                  }
                  §§goto(addr00d2);
               }
            }
            §§goto(addr00bb);
         }
         addr00d2:
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "tabicon_friendsadd";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.id = "tabTwoIcon";
                  if(_loc2_)
                  {
                     addr0070:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0085:
                              this.tabTwoIcon = _loc1_;
                              if(_loc2_)
                              {
                                 addr008f:
                                 BindingManager.executeBindings(this,"tabTwoIcon",this.tabTwoIcon);
                              }
                              §§goto(addr009c);
                           }
                           §§goto(addr008f);
                        }
                        addr009c:
                        return _loc1_;
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0070);
            }
            §§goto(addr0085);
         }
         §§goto(addr008f);
      }
      
      private function _FriendBookPaperPopupSkin_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc2_)
         {
            _loc1_.text = "EINLADEN";
            if(_loc2_)
            {
               _loc1_.width = 150;
               if(!_loc3_)
               {
                  _loc1_.maxHeight = 13;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.styleName = "friendbookMenue";
                     if(_loc2_)
                     {
                        _loc1_.setStyle("verticalAlign","bottom");
                        if(_loc2_ || Boolean(this))
                        {
                           addr007f:
                           _loc1_.id = "tabTwoLabel";
                           if(!_loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr00a9:
                                    _loc1_.document = this;
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       addr00ba:
                                       this.tabTwoLabel = _loc1_;
                                       if(!_loc3_)
                                       {
                                          addr00c4:
                                          BindingManager.executeBindings(this,"tabTwoLabel",this.tabTwoLabel);
                                       }
                                       §§goto(addr00d1);
                                    }
                                    §§goto(addr00c4);
                                 }
                                 §§goto(addr00d1);
                              }
                              §§goto(addr00ba);
                           }
                           §§goto(addr00d1);
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr00c4);
                  }
                  addr00d1:
                  return _loc1_;
               }
               §§goto(addr007f);
            }
         }
         §§goto(addr00ba);
      }
      
      private function _FriendBookPaperPopupSkin_HGroup4_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.paddingLeft = -1;
            if(_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc2_ && _loc2_))
               {
                  addr0040:
                  _loc1_.horizontalAlign = "left";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0053:
                     _loc1_.paddingTop = 10;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._FriendBookPaperPopupSkin_BriskImageDynaLib4_i(),this._FriendBookPaperPopupSkin_LocaLabel3_i()];
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.id = "tabThreGroup";
                           if(!(_loc2_ && _loc3_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr00be:
                                    _loc1_.document = this;
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       §§goto(addr00cf);
                                    }
                                 }
                                 §§goto(addr00d9);
                              }
                              addr00cf:
                              this.tabThreGroup = _loc1_;
                              if(!_loc2_)
                              {
                                 addr00d9:
                                 BindingManager.executeBindings(this,"tabThreGroup",this.tabThreGroup);
                              }
                              §§goto(addr00e6);
                           }
                           addr00e6:
                           return _loc1_;
                        }
                     }
                     §§goto(addr00be);
                  }
                  §§goto(addr00cf);
               }
               §§goto(addr0053);
            }
            §§goto(addr0040);
         }
         §§goto(addr0053);
      }
      
      private function _FriendBookPaperPopupSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "icon_tab_letter";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.id = "tabThreIcon";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0079:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0082:
                              this.tabThreIcon = _loc1_;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr0094:
                                 BindingManager.executeBindings(this,"tabThreIcon",this.tabThreIcon);
                              }
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr0094);
                     }
                  }
                  §§goto(addr0082);
               }
               addr00a1:
               return _loc1_;
            }
            §§goto(addr0079);
         }
         §§goto(addr0094);
      }
      
      private function _FriendBookPaperPopupSkin_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.text = "MESSAGES";
            if(!_loc2_)
            {
               _loc1_.width = 150;
               if(!_loc2_)
               {
                  _loc1_.maxHeight = 13;
                  if(!_loc2_)
                  {
                     §§goto(addr004c);
                  }
                  §§goto(addr009b);
               }
               addr004c:
               _loc1_.styleName = "friendbookMenue";
               if(!_loc2_)
               {
                  _loc1_.setStyle("verticalAlign","bottom");
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "tabThreLabel";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr009b:
                              _loc1_.document = this;
                              if(_loc3_ || _loc2_)
                              {
                                 addr00b8:
                                 this.tabThreLabel = _loc1_;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00ca:
                                    BindingManager.executeBindings(this,"tabThreLabel",this.tabThreLabel);
                                 }
                              }
                           }
                           §§goto(addr00d7);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr00ca);
                  }
               }
               §§goto(addr00d7);
            }
            addr00d7:
            return _loc1_;
         }
         §§goto(addr009b);
      }
      
      private function _FriendBookPaperPopupSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "layerbase_bottom";
               if(!_loc3_)
               {
                  _loc1_.width = 785;
                  addr004a:
                  if(!_loc3_)
                  {
                     _loc1_.height = 396;
                     if(!_loc3_)
                     {
                        addr006b:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              addr007f:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0083);
                     }
                     §§goto(addr007f);
                  }
               }
               addr0083:
               return _loc1_;
            }
            §§goto(addr004a);
         }
         §§goto(addr006b);
      }
      
      private function _FriendBookPaperPopupSkin_Group5_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.left = 25;
            if(!_loc3_)
            {
               _loc1_.right = 25;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.top = 20;
                  if(_loc2_ || _loc3_)
                  {
                     addr0060:
                     _loc1_.bottom = 18;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.id = "contentGroup";
                        if(!_loc3_)
                        {
                           addr007e:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 §§goto(addr009f);
                              }
                              §§goto(addr00b2);
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr007e);
                  }
               }
               §§goto(addr00a8);
            }
            addr009f:
            _loc1_.document = this;
            if(_loc2_)
            {
               addr00a8:
               this.contentGroup = _loc1_;
               if(!_loc3_)
               {
                  addr00b2:
                  BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
               }
            }
            return _loc1_;
         }
         §§goto(addr0060);
      }
      
      private function _FriendBookPaperPopupSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_ || _loc2_)
         {
            _loc1_.styleName = "back";
            if(!_loc3_)
            {
               _loc1_.top = 39;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.left = 20;
                  if(_loc2_)
                  {
                     _loc1_.visible = false;
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.id = "backButton";
                        if(!_loc3_)
                        {
                           addr0075:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr0096:
                                    this.backButton = _loc1_;
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       addr00a8:
                                       BindingManager.executeBindings(this,"backButton",this.backButton);
                                    }
                                 }
                              }
                              §§goto(addr00b5);
                           }
                           §§goto(addr0096);
                        }
                     }
                     addr00b5:
                     return _loc1_;
                  }
                  §§goto(addr0096);
               }
               §§goto(addr0075);
            }
            §§goto(addr00a8);
         }
         §§goto(addr0075);
      }
      
      private function _FriendBookPaperPopupSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "close";
            if(_loc2_ || _loc3_)
            {
               _loc1_.top = 34;
               if(_loc2_)
               {
                  addr004e:
                  _loc1_.right = 20;
                  if(!_loc3_)
                  {
                     _loc1_.id = "closeButton";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr006f:
                              _loc1_.document = this;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr008e:
                                 this.closeButton = _loc1_;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00a0:
                                    BindingManager.executeBindings(this,"closeButton",this.closeButton);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr008e);
                     }
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr006f);
            }
            §§goto(addr00a0);
         }
         §§goto(addr004e);
      }
      
      private function _FriendBookPaperPopupSkin_Button1_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.top = 0;
            if(!_loc2_)
            {
               _loc1_.left = 15;
               if(_loc3_)
               {
                  _loc1_.alpha = 0;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.height = 32;
                     if(_loc3_)
                     {
                        _loc1_.width = 178;
                        addr005a:
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.addEventListener("click",this.__actionButton1_click);
                           if(_loc3_ || _loc2_)
                           {
                              _loc1_.id = "actionButton1";
                              if(!_loc2_)
                              {
                                 addr009e:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_ || Boolean(this))
                                    {
                                       _loc1_.document = this;
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr00cf:
                                          this.actionButton1 = _loc1_;
                                          if(!_loc2_)
                                          {
                                             addr00d9:
                                             BindingManager.executeBindings(this,"actionButton1",this.actionButton1);
                                          }
                                       }
                                       return _loc1_;
                                    }
                                 }
                                 §§goto(addr00cf);
                              }
                              §§goto(addr00d9);
                           }
                           §§goto(addr009e);
                        }
                     }
                     §§goto(addr00d9);
                  }
                  §§goto(addr005a);
               }
            }
            §§goto(addr00d9);
         }
         §§goto(addr00cf);
      }
      
      public function __actionButton1_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.clickAction1(param1);
         }
      }
      
      private function _FriendBookPaperPopupSkin_Button2_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(_loc2_ || _loc2_)
         {
            _loc1_.top = 0;
            if(_loc2_)
            {
               _loc1_.left = 200;
               if(!_loc3_)
               {
                  _loc1_.alpha = 0;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr004f:
                     _loc1_.height = 32;
                     if(_loc2_)
                     {
                        _loc1_.width = 178;
                        addr0059:
                        if(!_loc3_)
                        {
                           _loc1_.addEventListener("click",this.__actionButton_click);
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr0089:
                              _loc1_.id = "actionButton";
                              if(!_loc3_)
                              {
                                 addr0094:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       _loc1_.document = this;
                                       if(_loc2_ || Boolean(_loc1_))
                                       {
                                          §§goto(addr00c5);
                                       }
                                       §§goto(addr00d7);
                                    }
                                 }
                                 §§goto(addr00c5);
                              }
                              §§goto(addr00d7);
                           }
                           addr00c5:
                           this.actionButton = _loc1_;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr00d7:
                              BindingManager.executeBindings(this,"actionButton",this.actionButton);
                           }
                           §§goto(addr00e4);
                        }
                        §§goto(addr00d7);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr0094);
               }
               §§goto(addr0059);
            }
            addr00e4:
            return _loc1_;
         }
         §§goto(addr004f);
      }
      
      public function __actionButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this.clickAction(param1);
         }
      }
      
      private function _FriendBookPaperPopupSkin_Button3_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.top = 0;
            if(_loc3_)
            {
               _loc1_.left = 370;
               if(_loc3_)
               {
                  _loc1_.alpha = 0;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr005b:
                     _loc1_.height = 32;
                     if(!_loc2_)
                     {
                        _loc1_.width = 178;
                        if(!_loc2_)
                        {
                           addr0070:
                           _loc1_.addEventListener("click",this.__actionButton2_click);
                           if(_loc3_)
                           {
                              addr0081:
                              _loc1_.id = "actionButton2";
                              if(!_loc2_)
                              {
                                 addr0097:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       _loc1_.document = this;
                                       if(_loc3_)
                                       {
                                          addr00ac:
                                          this.actionButton2 = _loc1_;
                                          if(_loc3_)
                                          {
                                             addr00b6:
                                             BindingManager.executeBindings(this,"actionButton2",this.actionButton2);
                                          }
                                       }
                                       §§goto(addr00c3);
                                    }
                                    §§goto(addr00b6);
                                 }
                                 §§goto(addr00ac);
                              }
                              §§goto(addr00c3);
                           }
                           §§goto(addr0097);
                        }
                        addr00c3:
                        return _loc1_;
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr00ac);
               }
               §§goto(addr005b);
            }
            §§goto(addr0070);
         }
         §§goto(addr0097);
      }
      
      public function __actionButton2_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.clickAction2(param1);
         }
      }
      
      private function _FriendBookPaperPopupSkin_Group6_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.top = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.id = "moveArea";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0069);
                  }
               }
               §§goto(addr0088);
            }
            addr0069:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr0075:
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     §§goto(addr007e);
                  }
                  §§goto(addr0088);
               }
            }
            addr007e:
            this.moveArea = _loc1_;
            if(!_loc3_)
            {
               addr0088:
               BindingManager.executeBindings(this,"moveArea",this.moveArea);
            }
            return _loc1_;
         }
         §§goto(addr0075);
      }
      
      public function ___FriendBookPaperPopupSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.init();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get actionButton() : Button
      {
         return this._1022398728actionButton;
      }
      
      public function set actionButton(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1022398728actionButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1022398728actionButton = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actionButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get actionButton1() : Button
      {
         return this._1629589545actionButton1;
      }
      
      public function set actionButton1(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1629589545actionButton1;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr004a:
                  this._1629589545actionButton1 = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actionButton1",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004a);
      }
      
      [Bindable(event="propertyChange")]
      public function get actionButton2() : Button
      {
         return this._1629589546actionButton2;
      }
      
      public function set actionButton2(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1629589546actionButton2;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1629589546actionButton2 = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0065:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actionButton2",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0065);
            }
            addr008c:
            return;
         }
         §§goto(addr007d);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1906413305backButton = param1;
                  addr003f:
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr003f);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._312699062closeButton = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0050:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"closeButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr005f);
               }
               §§goto(addr0050);
            }
            addr005f:
            return;
         }
         §§goto(addr0050);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._809612678contentGroup = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr005b);
            }
            addr0079:
            return;
         }
         §§goto(addr006a);
      }
      
      [Bindable(event="propertyChange")]
      public function get moveArea() : Group
      {
         return this._104976386moveArea;
      }
      
      public function set moveArea(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._104976386moveArea;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr003f:
                  this._104976386moveArea = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0074);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveArea",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return;
         }
         §§goto(addr003f);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._216916822sideMenu = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sideMenu",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0052);
            }
            addr0061:
            return;
         }
         §§goto(addr0052);
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBar() : BriskImageDynaLib
      {
         return this._881418178tabBar;
      }
      
      public function set tabBar(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._881418178tabBar;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._881418178tabBar = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBar",_loc2_,param1));
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0079);
               }
            }
         }
         addr0088:
      }
      
      [Bindable(event="propertyChange")]
      public function get tabOneGroup() : HGroup
      {
         return this._1133061742tabOneGroup;
      }
      
      public function set tabOneGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1133061742tabOneGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1133061742tabOneGroup = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabOneGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabOneIcon() : BriskImageDynaLib
      {
         return this._1210330454tabOneIcon;
      }
      
      public function set tabOneIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1210330454tabOneIcon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1210330454tabOneIcon = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr006f);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabOneIcon",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
         }
         addr007e:
      }
      
      [Bindable(event="propertyChange")]
      public function get tabOneLabel() : LocaLabel
      {
         return this._1137159907tabOneLabel;
      }
      
      public function set tabOneLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1137159907tabOneLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1137159907tabOneLabel = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabOneLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get tabThreGroup() : HGroup
      {
         return this._2077196541tabThreGroup;
      }
      
      public function set tabThreGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2077196541tabThreGroup;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._2077196541tabThreGroup = param1;
                  if(_loc4_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabThreGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr005e);
            }
         }
         addr0084:
      }
      
      [Bindable(event="propertyChange")]
      public function get tabThreIcon() : BriskImageDynaLib
      {
         return this._625775477tabThreIcon;
      }
      
      public function set tabThreIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._625775477tabThreIcon;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr004d:
                  this._625775477tabThreIcon = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabThreIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr004d);
      }
      
      [Bindable(event="propertyChange")]
      public function get tabThreLabel() : LocaLabel
      {
         return this._2073098376tabThreLabel;
      }
      
      public function set tabThreLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2073098376tabThreLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._2073098376tabThreLabel = param1;
                  if(!_loc4_)
                  {
                     addr0043:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabThreLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0043);
            }
            addr0061:
            return;
         }
         §§goto(addr0052);
      }
      
      [Bindable(event="propertyChange")]
      public function get tabTwoGroup() : HGroup
      {
         return this._941068872tabTwoGroup;
      }
      
      public function set tabTwoGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._941068872tabTwoGroup;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._941068872tabTwoGroup = param1;
                  addr0046:
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabTwoGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0046);
      }
      
      [Bindable(event="propertyChange")]
      public function get tabTwoIcon() : BriskImageDynaLib
      {
         return this._800881776tabTwoIcon;
      }
      
      public function set tabTwoIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._800881776tabTwoIcon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._800881776tabTwoIcon = param1;
                  if(!_loc4_)
                  {
                     addr0041:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0051:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabTwoIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0060);
                  }
               }
               §§goto(addr0051);
            }
            addr0060:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get tabTwoLabel() : LocaLabel
      {
         return this._945167037tabTwoLabel;
      }
      
      public function set tabTwoLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._945167037tabTwoLabel;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._945167037tabTwoLabel = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabTwoLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr006c);
               }
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : FriendBookPaperPopupWindow
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:FriendBookPaperPopupWindow) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
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
         §§goto(addr007f);
      }
   }
}

