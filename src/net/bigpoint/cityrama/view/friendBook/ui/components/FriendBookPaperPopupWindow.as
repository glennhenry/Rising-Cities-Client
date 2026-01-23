package net.bigpoint.cityrama.view.friendBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.view.common.components.*;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.cityrama.view.friendBook.ui.skins.FriendBookPaperPopupSkin;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.TitleWindow;
   
   public class FriendBookPaperPopupWindow extends TitleWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && FriendBookPaperPopupWindow))
      {
         _skinParts = {
            "moveArea":false,
            "closeButton":false,
            "controlBarGroup":false,
            "contentGroup":false,
            "backButton":false,
            "actionButton":false,
            "actionButton1":false,
            "sideMenu":false,
            "titleDisplay":false
         };
      }
      
      public var backButton:DynamicImageButton;
      
      public var sideMenu:Group;
      
      public var actionButton:Button;
      
      public var actionButton1:Button;
      
      private var _showBackButton:Boolean;
      
      private var _showBackButtonChanged:Boolean;
      
      private var _sideMenuComponent:SideMenuFriendBook;
      
      public function FriendBookPaperPopupWindow()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               this.styleName = "friendbook";
               if(!_loc1_)
               {
                  addr0044:
                  this.showBackButton = false;
                  if(_loc2_)
                  {
                     addr004e:
                     width = 785;
                     if(!(_loc1_ && _loc1_))
                     {
                        height = 430;
                        if(!(_loc1_ && Boolean(this)))
                        {
                           addr0080:
                           this.addEventListener(Event.ADDED_TO_STAGE,this.handleAdded);
                        }
                        return;
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr004e);
            }
            §§goto(addr0080);
         }
         §§goto(addr0044);
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super.partAdded(param1,param2);
            if(_loc3_)
            {
               if(param2 == this.backButton)
               {
                  if(_loc3_)
                  {
                     this.addBackButtonListeners();
                     if(!_loc4_)
                     {
                        addr005c:
                        §§push(param2 is BriskMCDynaLib);
                        if(!_loc4_)
                        {
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 addr0070:
                                 (param2 as BriskMCDynaLib).addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
                                 if(!_loc4_)
                                 {
                                    addr0087:
                                    addr0096:
                                    if(param2 is BriskImageDynaLib)
                                    {
                                       if(_loc3_)
                                       {
                                          §§goto(addr009f);
                                       }
                                       §§goto(addr00ed);
                                    }
                                 }
                                 §§goto(addr00bd);
                              }
                              addr009f:
                              (param2 as BriskImageDynaLib).addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
                              if(_loc3_ || _loc3_)
                              {
                                 addr00bd:
                                 if(param2 == this.sideMenu)
                                 {
                                    if(!(_loc4_ && Boolean(param1)))
                                    {
                                       addr00d4:
                                       this._sideMenuComponent = new SideMenuFriendBook();
                                       if(!(_loc4_ && Boolean(param2)))
                                       {
                                          addr00ed:
                                          §§push(this._sideMenuComponent);
                                          if(_loc3_)
                                          {
                                             §§push(100);
                                             if(_loc3_)
                                             {
                                                §§pop().percentWidth = §§pop();
                                                if(!(_loc4_ && Boolean(param1)))
                                                {
                                                   §§goto(addr011f);
                                                }
                                                §§goto(addr0127);
                                             }
                                             addr011f:
                                             this._sideMenuComponent.percentHeight = 100;
                                             §§goto(addr011d);
                                          }
                                          addr011d:
                                          if(!_loc4_)
                                          {
                                             addr0127:
                                             this.sideMenu.addElement(this._sideMenuComponent);
                                          }
                                          §§goto(addr0133);
                                       }
                                    }
                                 }
                              }
                              addr0133:
                              return;
                           }
                           §§goto(addr0087);
                        }
                        §§goto(addr0096);
                     }
                     §§goto(addr0070);
                  }
                  §§goto(addr0087);
               }
               else if(param2 == closeButton)
               {
                  if(!_loc4_)
                  {
                     this.addCloseButtonListeners();
                     if(!_loc4_)
                     {
                        §§goto(addr005c);
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr0087);
               }
               §§goto(addr005c);
            }
            §§goto(addr0087);
         }
         §§goto(addr00d4);
      }
      
      private function handleComplete(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            param1.target.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
            if(_loc3_)
            {
               addr0043:
               invalidateSize();
            }
            return;
         }
         §§goto(addr0043);
      }
      
      private function addBackButtonListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.backButton.addEventListener(MouseEvent.CLICK,this.handleBackClick);
         }
      }
      
      override public function set title(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            if(super.title != param1)
            {
               if(_loc3_)
               {
                  addr0039:
                  super.title = param1;
                  if(!_loc2_)
                  {
                     invalidateProperties();
                  }
               }
            }
            return;
         }
         §§goto(addr0039);
      }
      
      private function addCloseButtonListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            closeButton.addEventListener(MouseEvent.CLICK,this.handleCloseClick);
            if(!_loc1_)
            {
               closeButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.close"));
            }
         }
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param2))
         {
            super.partRemoved(param1,param2);
            if(_loc3_ || Boolean(this))
            {
               addr0040:
               if(param2 == this.backButton)
               {
                  if(_loc3_ || Boolean(param2))
                  {
                     this.removeBackButtonListeners();
                     if(_loc4_ && Boolean(param1))
                     {
                     }
                  }
                  else
                  {
                     addr008f:
                     this.removeCloseButtonListeners();
                  }
               }
               else if(param2 == closeButton)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr008f);
                  }
               }
            }
            return;
         }
         §§goto(addr0040);
      }
      
      private function removeBackButtonListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.backButton.removeEventListener(MouseEvent.CLICK,this.handleBackClick);
         }
      }
      
      private function removeCloseButtonListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            closeButton.removeEventListener(MouseEvent.CLICK,this.handleCloseClick);
         }
      }
      
      override public function get styleName() : Object
      {
         return super.styleName;
      }
      
      override public function set styleName(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            if(param1 != super.styleName)
            {
               if(!_loc2_)
               {
                  addr0036:
                  super.styleName = param1;
                  if(_loc3_ || _loc2_)
                  {
                     addr0047:
                     invalidateDisplayList();
                  }
                  §§goto(addr004e);
               }
               §§goto(addr0047);
            }
            addr004e:
            return;
         }
         §§goto(addr0036);
      }
      
      public function get showBackButton() : Boolean
      {
         return this._showBackButton;
      }
      
      public function set showBackButton(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            if(param1 != this._showBackButton)
            {
               if(!_loc3_)
               {
                  this._showBackButton = param1;
                  if(_loc2_)
                  {
                     addr0042:
                     this._showBackButtonChanged = true;
                     if(!(_loc3_ && _loc2_))
                     {
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0059);
               }
               §§goto(addr0042);
            }
            addr0059:
            return;
         }
         §§goto(addr0042);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.commitProperties();
            if(!_loc1_)
            {
               if(this._showBackButtonChanged)
               {
                  if(_loc2_)
                  {
                     this._showBackButtonChanged = false;
                     if(!(_loc1_ && Boolean(this)))
                     {
                        this.backButton.visible = this._showBackButton;
                        if(_loc2_ || _loc1_)
                        {
                           addr006a:
                           invalidateDisplayList();
                        }
                        §§goto(addr0071);
                     }
                     §§goto(addr006a);
                  }
               }
               addr0071:
               return;
            }
         }
         §§goto(addr006a);
      }
      
      private function handleCloseClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            dispatchEvent(new Event(Event.CLOSE,true));
         }
      }
      
      private function handleBackClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            dispatchEvent(new Event(PaperPopupWindow.BACK,true));
         }
      }
      
      public function resetToFriend_TAB() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:FriendBookPaperPopupSkin = skin as FriendBookPaperPopupSkin;
         if(!_loc2_)
         {
            _loc1_.resetToFriend_TAB();
         }
      }
      
      public function switchToTab(param1:String) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:FriendBookPaperPopupSkin = null;
         if(_loc4_ || Boolean(_loc3_))
         {
            if(this.skin is FriendBookPaperPopupSkin)
            {
               addr0033:
               _loc2_ = this.skin as FriendBookPaperPopupSkin;
               var _loc3_:* = param1;
               if(_loc4_)
               {
                  §§push("invite");
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     §§push(_loc3_);
                     if(!_loc5_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc5_ && Boolean(_loc3_)))
                           {
                              addr00b3:
                              §§push(0);
                              if(_loc5_)
                              {
                              }
                           }
                           else
                           {
                              addr00c7:
                              §§push(1);
                              if(_loc5_)
                              {
                              }
                           }
                           §§goto(addr00df);
                        }
                        else
                        {
                           §§goto(addr00c3);
                        }
                     }
                     addr00c3:
                     §§goto(addr00c2);
                  }
                  addr00c2:
                  if("friends" === _loc3_)
                  {
                     §§goto(addr00c7);
                  }
                  else
                  {
                     §§push(2);
                  }
                  addr00df:
                  switch(§§pop())
                  {
                     case 0:
                        _loc2_.clickAction();
                        if(_loc4_)
                        {
                        }
                        break;
                     case 1:
                        _loc2_.clickAction1();
                        if(_loc4_)
                        {
                        }
                  }
                  §§goto(addr00ef);
               }
               §§goto(addr00b3);
            }
            addr00ef:
            return;
         }
         §§goto(addr0033);
      }
      
      private function handleAdded(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.removeEventListener(Event.ADDED_TO_STAGE,this.handleAdded);
            if(!_loc2_)
            {
               this.title = ResourceManager.getInstance().getString(String("rcl.booklayer.architect"),String("rcl.booklayer.architect.title"));
            }
         }
      }
      
      public function get sideMenuComponent() : SideMenuFriendBook
      {
         return this._sideMenuComponent;
      }
   }
}

