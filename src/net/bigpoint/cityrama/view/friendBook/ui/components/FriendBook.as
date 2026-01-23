package net.bigpoint.cityrama.view.friendBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.friendBook.ui.skins.FriendTabBarSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.TabBar;
   import spark.events.IndexChangeEvent;
   
   public class FriendBook extends PaperPopupWindow
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || FriendBook)
      {
         _skinParts = {
            "moveArea":false,
            "closeButton":false,
            "controlBarGroup":false,
            "contentGroup":false,
            "backButton":false,
            "tabBar":false,
            "sideMenu":false,
            "titleDisplay":false
         };
      }
      
      private var _951530617content:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _tabs:ArrayCollection;
      
      private var _tabsIsDirty:Boolean;
      
      public var tabEventEnabled:Boolean = true;
      
      public function FriendBook()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  §§goto(addr004c);
               }
               §§goto(addr006a);
            }
            addr004c:
            this.styleName = "friendBook";
            if(_loc2_ || Boolean(this))
            {
               addr0060:
               this.showBackButton = false;
               if(!_loc1_)
               {
                  addr006a:
                  this.mxmlContentFactory = new DeferredInstanceFromFunction(this._FriendBook_Array1_c);
               }
            }
            return;
         }
         §§goto(addr0060);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               addr0036:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr0036);
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
      
      public function set tabs(param1:ArrayCollection) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._tabs))
            {
               if(_loc2_ || _loc2_)
               {
                  this._tabsIsDirty = true;
                  if(_loc2_ || _loc3_)
                  {
                     addr0054:
                     this._tabs = param1;
                  }
                  §§goto(addr0059);
               }
               §§goto(addr0054);
            }
         }
         addr0059:
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.commitProperties();
            if(_loc2_ || _loc1_)
            {
               §§push(this._tabsIsDirty);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop());
                  if(_loc2_)
                  {
                     addr003f:
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           §§pop();
                           if(!(_loc1_ && Boolean(this)))
                           {
                              §§push(Boolean(this._tabs));
                              if(!(_loc1_ && Boolean(this)))
                              {
                                 addr007b:
                                 if(§§pop())
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr008c:
                                       this._tabsIsDirty = false;
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          addr00a8:
                                          tabBar.dataProvider = this._tabs;
                                          if(_loc2_)
                                          {
                                             addr00bb:
                                             if(this.tabEventEnabled)
                                             {
                                                if(_loc2_)
                                                {
                                                   addr00c4:
                                                   dispatchEvent(new IndexChangeEvent(IndexChangeEvent.CHANGE));
                                                }
                                             }
                                             §§goto(addr00d6);
                                          }
                                       }
                                       §§goto(addr00c4);
                                    }
                                    §§goto(addr00a8);
                                 }
                                 §§goto(addr00d6);
                              }
                              §§goto(addr00bb);
                           }
                           addr00d6:
                           return;
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr00bb);
               }
               §§goto(addr003f);
            }
            §§goto(addr00a8);
         }
         §§goto(addr008c);
      }
      
      private function handleIndexChange(param1:IndexChangeEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(this.tabEventEnabled)
            {
               if(!(_loc2_ && _loc2_))
               {
                  dispatchEvent(param1);
               }
            }
         }
      }
      
      private function _FriendBook_Array1_c() : Array
      {
         return [this._FriendBook_TabBar1_i(),this._FriendBook_Group1_i()];
      }
      
      private function _FriendBook_TabBar1_i() : TabBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TabBar = new TabBar();
         if(!_loc2_)
         {
            _loc1_.requireSelection = true;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(this))
               {
                  addr003f:
                  _loc1_.top = 0;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.left = 0;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.setStyle("skinClass",FriendTabBarSkin);
                        if(!_loc2_)
                        {
                           addr0080:
                           _loc1_.addEventListener("change",this.__tabBar_change);
                           if(!_loc2_)
                           {
                              addr0091:
                              _loc1_.id = "tabBar";
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00a4:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       _loc1_.document = this;
                                       if(!_loc2_)
                                       {
                                          addr00c5:
                                          tabBar = _loc1_;
                                          if(_loc3_ || Boolean(this))
                                          {
                                             addr00d9:
                                             BindingManager.executeBindings(this,"tabBar",tabBar);
                                          }
                                          §§goto(addr00e5);
                                       }
                                       §§goto(addr00d9);
                                    }
                                    §§goto(addr00e5);
                                 }
                              }
                           }
                           §§goto(addr00c5);
                        }
                        §§goto(addr00a4);
                     }
                     addr00e5:
                     return _loc1_;
                  }
                  §§goto(addr0091);
               }
               §§goto(addr0080);
            }
            §§goto(addr00d9);
         }
         §§goto(addr003f);
      }
      
      public function __tabBar_change(param1:IndexChangeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.handleIndexChange(param1);
         }
      }
      
      private function _FriendBook_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.left = 30;
            if(_loc2_)
            {
               _loc1_.right = 30;
               if(!_loc3_)
               {
                  _loc1_.top = 60;
                  if(_loc2_)
                  {
                     _loc1_.bottom = 20;
                     if(_loc2_)
                     {
                        _loc1_.id = "content";
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr006f:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    §§goto(addr008f);
                                 }
                              }
                              §§goto(addr00a1);
                           }
                        }
                        §§goto(addr008f);
                     }
                  }
                  §§goto(addr006f);
               }
            }
            §§goto(addr00a1);
         }
         addr008f:
         this.content = _loc1_;
         if(_loc2_ || _loc3_)
         {
            addr00a1:
            BindingManager.executeBindings(this,"content",this.content);
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : Group
      {
         return this._951530617content;
      }
      
      public function set content(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._951530617content;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0038:
                  this._951530617content = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0043);
                  }
                  §§goto(addr0052);
               }
               addr0043:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0052:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
                  }
               }
               §§goto(addr0061);
            }
            addr0061:
            return;
         }
         §§goto(addr0038);
      }
   }
}

