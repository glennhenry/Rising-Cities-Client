package net.bigpoint.cityrama.view.ingameStore.ui.components
{
   import mx.collections.ArrayCollection;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.architectBook.ui.components.SideMenueArchitecture;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.RandomUtilities;
   
   public class IngameStoreBook extends PaperPopupWindow
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
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
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _sideMenuComponent:SideMenueArchitecture;
      
      private var _ingameStoreTabData:ArrayCollection;
      
      private var _tabsDirty:Boolean;
      
      public function IngameStoreBook()
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
               if(_loc1_)
               {
                  this.styleName = "architect";
                  if(!_loc2_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0060);
               }
               §§goto(addr0056);
            }
            §§goto(addr0060);
         }
         addr0056:
         this.showBackButton = false;
         if(_loc1_)
         {
            addr0060:
            this.width = 775;
            if(_loc1_ || _loc1_)
            {
               this.height = 440;
            }
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0049);
                  }
               }
               else
               {
                  addr0057:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            §§goto(addr0057);
         }
         addr0049:
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
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.commitProperties();
            if(_loc2_ || _loc2_)
            {
               addr0030:
               §§push(Boolean(this._ingameStoreTabData));
               if(_loc2_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        if(_loc2_ || Boolean(this))
                        {
                           §§goto(addr0070);
                        }
                        §§goto(addr008b);
                     }
                  }
               }
               addr0070:
               §§goto(addr0066);
            }
            addr0066:
            §§push(this._tabsDirty);
            if(!_loc1_)
            {
               §§push(§§pop());
            }
            if(§§pop())
            {
               if(!_loc1_)
               {
                  this._tabsDirty = false;
                  if(_loc2_ || Boolean(this))
                  {
                     addr008b:
                     tabData = this._ingameStoreTabData;
                  }
                  §§goto(addr0095);
               }
               §§goto(addr008b);
            }
            addr0095:
            return;
         }
         §§goto(addr0030);
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param1))
         {
            super.partAdded(param1,param2);
            if(_loc4_)
            {
               if(param2 == this.sideMenu)
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     this._sideMenuComponent = new SideMenueArchitecture();
                     if(!(_loc3_ && Boolean(param2)))
                     {
                        §§push(this._sideMenuComponent);
                        if(_loc4_ || Boolean(this))
                        {
                           §§push(100);
                           if(!_loc3_)
                           {
                              §§pop().percentWidth = §§pop();
                              if(_loc4_ || Boolean(this))
                              {
                                 addr00a4:
                                 this._sideMenuComponent.percentHeight = 100;
                                 addr00a2:
                                 addr009e:
                                 if(_loc4_)
                                 {
                                    addr00ac:
                                    this.sideMenu.addElement(this._sideMenuComponent);
                                 }
                              }
                              §§goto(addr00b8);
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr00ac);
                  }
                  §§goto(addr009e);
               }
               addr00b8:
               return;
            }
         }
         §§goto(addr009e);
      }
      
      public function get sideMenuComponent() : SideMenueArchitecture
      {
         return this._sideMenuComponent;
      }
      
      public function set ingameStoreTabData(param1:ArrayCollection) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(!RandomUtilities.isEqual(param1,this._ingameStoreTabData))
            {
               if(_loc3_ || Boolean(this))
               {
                  addr004a:
                  this._ingameStoreTabData = param1;
                  if(!_loc2_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr005e);
               }
               addr0054:
               this._tabsDirty = true;
               if(!_loc2_)
               {
                  addr005e:
                  invalidateProperties();
               }
               §§goto(addr0063);
            }
            addr0063:
            return;
         }
         §§goto(addr004a);
      }
   }
}

