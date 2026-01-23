package net.bigpoint.cityrama.view.common.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.TabBar;
   import spark.components.TitleWindow;
   import spark.events.IndexChangeEvent;
   
   public class PaperPopupWindow extends TitleWindow
   {
      
      public static const BACK:String = "back";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         BACK = "back";
         if(_loc1_)
         {
            addr002d:
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
         return;
      }
      §§goto(addr002d);
      
      public var backButton:DynamicImageButton;
      
      public var sideMenu:Group;
      
      public var tabBar:TabBar;
      
      private var _showBackButton:Boolean;
      
      private var _showBackButtonChanged:Boolean;
      
      private var _tabDataDirty:Boolean;
      
      private var _tabData:ArrayCollection;
      
      public function PaperPopupWindow()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param2))
         {
            super.partAdded(param1,param2);
            if(_loc3_ || _loc3_)
            {
               if(param2 == this.backButton)
               {
                  if(_loc3_)
                  {
                     this.addBackButtonListeners();
                     if(_loc3_ || Boolean(param2))
                     {
                     }
                     addr00ac:
                     §§push(param2 is BriskMCDynaLib);
                     if(_loc3_ || Boolean(this))
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              (param2 as BriskMCDynaLib).addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
                              addr00c6:
                              if(_loc3_)
                              {
                                 addr00e9:
                                 addr00ed:
                                 if(param2 is BriskImageDynaLib)
                                 {
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       addr00ff:
                                       (param2 as BriskImageDynaLib).addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
                                    }
                                 }
                              }
                           }
                           §§goto(addr0110);
                        }
                        §§goto(addr00e9);
                     }
                     §§goto(addr00ed);
                  }
                  §§goto(addr00ff);
               }
               else if(param2 == closeButton)
               {
                  if(!_loc4_)
                  {
                     this.addCloseButtonListeners();
                     if(_loc3_)
                     {
                        §§goto(addr00ac);
                     }
                     §§goto(addr00ff);
                  }
                  §§goto(addr00c6);
               }
               else if(param2 == this.tabBar)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     this.addTabBarListener();
                     if(!(_loc4_ && _loc3_))
                     {
                        §§goto(addr00ac);
                     }
                     addr0110:
                     return;
                  }
                  §§goto(addr00c6);
               }
               §§goto(addr00ac);
            }
            §§goto(addr00c6);
         }
         §§goto(addr00ac);
      }
      
      override public function set title(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            if(super.title != param1)
            {
               if(!_loc3_)
               {
                  addr003c:
                  super.title = param1;
                  if(_loc2_ || Boolean(param1))
                  {
                     addr004e:
                     invalidateProperties();
                  }
                  §§goto(addr0053);
               }
               §§goto(addr004e);
            }
            addr0053:
            return;
         }
         §§goto(addr003c);
      }
      
      private function handleComplete(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            param1.target.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
            if(!(_loc3_ && _loc2_))
            {
               addr0048:
               invalidateSize();
            }
            return;
         }
         §§goto(addr0048);
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
      
      private function addCloseButtonListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            closeButton.addEventListener(MouseEvent.CLICK,this.handleCloseClick);
            if(_loc2_ || Boolean(this))
            {
               closeButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.close");
            }
         }
      }
      
      private function addTabBarListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.tabBar.addEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
         }
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super.partRemoved(param1,param2);
            if(_loc4_)
            {
               §§goto(addr0026);
            }
            §§goto(addr00a8);
         }
         addr0026:
         if(param2 == this.backButton)
         {
            if(_loc4_ || Boolean(this))
            {
               this.removeBackButtonListeners();
               if(_loc3_ && Boolean(this))
               {
               }
            }
         }
         else if(param2 == closeButton)
         {
            if(_loc4_ || Boolean(param2))
            {
               this.removeCloseButtonListeners();
               if(_loc3_ && Boolean(this))
               {
                  addr00a8:
                  this.removeTabBarListener();
               }
               §§goto(addr00ae);
            }
            §§goto(addr00a8);
         }
         else if(param2 == this.tabBar)
         {
            if(_loc4_)
            {
               §§goto(addr00a8);
            }
         }
         addr00ae:
      }
      
      private function removeBackButtonListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            this.backButton.removeEventListener(MouseEvent.CLICK,this.handleBackClick);
         }
      }
      
      private function removeCloseButtonListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            closeButton.removeEventListener(MouseEvent.CLICK,this.handleCloseClick);
         }
      }
      
      private function removeTabBarListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.tabBar.removeEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
         }
      }
      
      override public function get styleName() : Object
      {
         return super.styleName;
      }
      
      override public function set styleName(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            if(param1 != super.styleName)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr0040:
                  super.styleName = param1;
                  if(!_loc3_)
                  {
                     invalidateDisplayList();
                  }
               }
            }
            return;
         }
         §§goto(addr0040);
      }
      
      public function get showBackButton() : Boolean
      {
         return this._showBackButton;
      }
      
      public function set showBackButton(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1 != this._showBackButton)
            {
               if(_loc3_)
               {
                  this._showBackButton = param1;
                  if(!_loc2_)
                  {
                     addr003c:
                     this._showBackButtonChanged = true;
                     if(_loc3_ || Boolean(this))
                     {
                        addr004e:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0053);
               }
               §§goto(addr004e);
            }
            addr0053:
            return;
         }
         §§goto(addr003c);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.commitProperties();
            if(_loc2_ || _loc2_)
            {
               §§push(this._showBackButtonChanged);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc1_)
                     {
                        this._showBackButtonChanged = false;
                        if(_loc2_ || _loc2_)
                        {
                           addr0064:
                           this.backButton.visible = this._showBackButton;
                           if(!(_loc1_ && _loc2_))
                           {
                              addr0085:
                              invalidateDisplayList();
                              if(_loc2_ || Boolean(this))
                              {
                                 addr0099:
                                 §§push(Boolean(this._tabData));
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    var _temp_10:* = §§pop();
                                    §§push(_temp_10);
                                    if(_temp_10)
                                    {
                                       if(!(_loc1_ && Boolean(this)))
                                       {
                                          §§goto(addr00bd);
                                       }
                                       §§goto(addr00d4);
                                    }
                                    §§goto(addr00d5);
                                 }
                                 addr00bd:
                                 §§pop();
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr00d5:
                                    §§push(this._tabDataDirty);
                                    if(!_loc1_)
                                    {
                                       addr00d4:
                                       §§push(§§pop());
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc2_ || Boolean(this))
                                       {
                                          if(this.tabBar)
                                          {
                                             if(!(_loc1_ && Boolean(this)))
                                             {
                                                addr0105:
                                                this._tabDataDirty = false;
                                                if(_loc2_ || _loc1_)
                                                {
                                                   addr0117:
                                                   this.tabBar.dataProvider = this._tabData;
                                                }
                                             }
                                          }
                                          §§goto(addr0122);
                                       }
                                       §§goto(addr0117);
                                    }
                                 }
                                 §§goto(addr0122);
                              }
                              §§goto(addr0117);
                           }
                           §§goto(addr0105);
                        }
                     }
                     addr0122:
                     return;
                  }
                  §§goto(addr0099);
               }
               §§goto(addr00d5);
            }
            §§goto(addr0064);
         }
         §§goto(addr0085);
      }
      
      private function handleCloseClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            dispatchEvent(new Event(Event.CLOSE,true));
         }
      }
      
      private function handleBackClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            dispatchEvent(new Event(BACK,true));
         }
      }
      
      private function handleTabIndexChanged(param1:IndexChangeEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            if(this._tabData[param1.newIndex].isLocked)
            {
               if(_loc3_)
               {
                  addr0045:
                  param1.stopImmediatePropagation();
                  if(_loc3_)
                  {
                     return;
                  }
               }
            }
            else
            {
               dispatchEvent(param1);
            }
            return;
         }
         §§goto(addr0045);
      }
      
      public function set tabData(param1:ArrayCollection) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(!RandomUtilities.isEqual(param1,this._tabData))
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  this._tabData = param1;
                  if(_loc3_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0080);
               }
               addr005e:
               this.tabBar.dataProvider = this._tabData;
               if(!_loc2_)
               {
                  this._tabDataDirty = true;
                  if(_loc3_ || _loc2_)
                  {
                     addr0080:
                     invalidateProperties();
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return;
         }
         §§goto(addr005e);
      }
   }
}

