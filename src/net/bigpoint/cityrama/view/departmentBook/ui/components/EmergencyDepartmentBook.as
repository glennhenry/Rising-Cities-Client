package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import mx.collections.ArrayCollection;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.RandomUtilities;
   
   public class EmergencyDepartmentBook extends PaperPopupWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
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
      
      private var _sideMenuComponent:SideMenuDepartmentBook;
      
      private var _departmentBookTabData:ArrayCollection;
      
      private var _tabsDirty:Boolean;
      
      public function EmergencyDepartmentBook()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               mx_internal::_document = this;
               addr0026:
               if(!(_loc1_ && Boolean(this)))
               {
                  this.styleName = "emergencyDepartmentBook";
                  if(!_loc1_)
                  {
                     this.showBackButton = false;
                     if(_loc2_)
                     {
                        §§goto(addr006a);
                     }
                  }
               }
               §§goto(addr007d);
            }
            addr006a:
            this.width = 775;
            if(!(_loc1_ && _loc1_))
            {
               addr007d:
               this.height = 440;
            }
            return;
         }
         §§goto(addr0026);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc3_))
            {
               §§goto(addr0047);
            }
            §§goto(addr005d);
         }
         addr0047:
         if(this.__moduleFactoryInitialized)
         {
            if(!(_loc2_ && _loc3_))
            {
               addr005d:
               return;
            }
         }
         this.__moduleFactoryInitialized = true;
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
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(Boolean(this._departmentBookTabData));
               if(_loc1_)
               {
                  var _temp_1:* = §§pop();
                  §§push(_temp_1);
                  if(_temp_1)
                  {
                     if(_loc1_)
                     {
                        §§pop();
                        if(_loc1_)
                        {
                           §§goto(addr005f);
                        }
                        §§goto(addr0068);
                     }
                  }
               }
               addr005f:
               §§goto(addr0043);
            }
            addr0043:
            §§push(this._tabsDirty);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop());
            }
            if(§§pop())
            {
               if(_loc1_)
               {
                  addr0068:
                  this._tabsDirty = false;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     tabData = this._departmentBookTabData;
                  }
               }
            }
            §§goto(addr0084);
         }
         addr0084:
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super.partAdded(param1,param2);
            if(_loc3_ || Boolean(param2))
            {
               if(param2 == this.sideMenu)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     this._sideMenuComponent = new SideMenuDepartmentBook();
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§push(this._sideMenuComponent);
                        if(!(_loc4_ && Boolean(param2)))
                        {
                           §§push(100);
                           if(_loc3_ || _loc3_)
                           {
                              §§pop().percentWidth = §§pop();
                              if(!_loc4_)
                              {
                                 addr00a4:
                                 this._sideMenuComponent.percentHeight = 100;
                                 addr00a2:
                                 addr009e:
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    this.sideMenu.addElement(this._sideMenuComponent);
                                 }
                              }
                              §§goto(addr00c0);
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr009e);
                  }
               }
               addr00c0:
               return;
            }
         }
         §§goto(addr009e);
      }
      
      public function get sideMenuComponent() : SideMenuDepartmentBook
      {
         return this._sideMenuComponent;
      }
      
      public function set departmentBookTabData(param1:ArrayCollection) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._departmentBookTabData))
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr0043:
                  this._departmentBookTabData = param1;
                  if(!_loc2_)
                  {
                     §§goto(addr004d);
                  }
                  §§goto(addr005f);
               }
               addr004d:
               this._tabsDirty = true;
               if(_loc3_ || _loc2_)
               {
                  addr005f:
                  invalidateProperties();
               }
               §§goto(addr0064);
            }
            addr0064:
            return;
         }
         §§goto(addr0043);
      }
   }
}

