package net.bigpoint.cityrama.view.storageBook.ui.components
{
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.skins.GridSkin;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class StoragePopup extends PaperPopupWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
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
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1177280081itemList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _sideMenuComponent:SideMenuStorage;
      
      public function StoragePopup()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               addr002d:
               mx_internal::_document = this;
               if(_loc1_ || _loc2_)
               {
                  this.styleName = "storage";
                  addr0047:
                  if(!_loc2_)
                  {
                     this.showBackButton = false;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr006f:
                        this.width = 785;
                        if(_loc1_ || _loc2_)
                        {
                           this.height = 430;
                           if(_loc1_ || _loc1_)
                           {
                              §§goto(addr009f);
                           }
                           §§goto(addr00bc);
                        }
                     }
                     addr009f:
                     this.mxmlContentFactory = new DeferredInstanceFromFunction(this._StoragePopup_Array1_c);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr00bc:
                        this.addEventListener("creationComplete",this.___StoragePopup_PaperPopupWindow1_creationComplete);
                     }
                     return;
                  }
               }
               §§goto(addr006f);
            }
            §§goto(addr0047);
         }
         §§goto(addr002d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr0040);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         addr0040:
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
      
      private function handleAdded() : void
      {
      }
      
      private function handleCreationComplete() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(this))
         {
            this.title = ResourceManager.getInstance().getString(String("rcl.booklayer.storage"),String("rcl.booklayer.storage.title"));
         }
         §§push(ResourceManager.getInstance().getString(String("rcl.tooltips.storageBook"),String("rcl.tooltips.storageBook.leftArrow")));
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(ResourceManager.getInstance().getString(String("rcl.tooltips.storageBook"),String("rcl.tooltips.storageBook.rightArrow")));
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            this.itemList.setStyle("tooltipScrollLeft",_loc1_);
            if(!(_loc4_ && _loc2_))
            {
               addr00d6:
               this.itemList.setStyle("tooltipScrollRight",_loc2_);
            }
            return;
         }
         §§goto(addr00d6);
      }
      
      private function handleClose(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            dispatchEvent(param1);
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super.partAdded(param1,param2);
            if(!(_loc3_ && _loc3_))
            {
               if(param2 == this.sideMenu)
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0050:
                     this._sideMenuComponent = new SideMenuStorage();
                     if(!_loc3_)
                     {
                        §§push(this._sideMenuComponent);
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           §§push(100);
                           if(!_loc3_)
                           {
                              §§pop().percentWidth = §§pop();
                              if(!(_loc3_ && Boolean(param2)))
                              {
                                 addr0099:
                                 this._sideMenuComponent.percentHeight = 100;
                                 addr0097:
                                 addr0093:
                                 if(_loc4_)
                                 {
                                    addr00a1:
                                    this.sideMenu.addElement(this._sideMenuComponent);
                                 }
                              }
                              §§goto(addr00ad);
                           }
                           §§goto(addr0099);
                        }
                        §§goto(addr0097);
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr0093);
               }
               addr00ad:
               return;
            }
            §§goto(addr0093);
         }
         §§goto(addr0050);
      }
      
      public function get sideMenuComponent() : SideMenuStorage
      {
         return this._sideMenuComponent;
      }
      
      private function _StoragePopup_Array1_c() : Array
      {
         return [this._StoragePopup_LocaLabel1_i(),this._StoragePopup_VGroup1_c()];
      }
      
      private function _StoragePopup_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.width = 700;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.height = 25;
               if(_loc2_)
               {
                  _loc1_.top = 40;
                  if(!_loc3_)
                  {
                     _loc1_.styleName = "flavorText";
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.horizontalCenter = 0;
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0079:
                           _loc1_.id = "flavorText";
                           if(!_loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00a6:
                                    _loc1_.document = this;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr00b7:
                                       this.flavorText = _loc1_;
                                       if(_loc2_)
                                       {
                                          addr00c1:
                                          BindingManager.executeBindings(this,"flavorText",this.flavorText);
                                       }
                                       §§goto(addr00ce);
                                    }
                                    §§goto(addr00c1);
                                 }
                                 §§goto(addr00ce);
                              }
                              §§goto(addr00b7);
                           }
                           §§goto(addr00c1);
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr00ce);
                  }
                  §§goto(addr0079);
               }
               §§goto(addr00a6);
            }
            addr00ce:
            return _loc1_;
         }
         §§goto(addr0079);
      }
      
      private function _StoragePopup_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.paddingLeft = 6;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.paddingRight = 6;
                  if(_loc3_ || _loc2_)
                  {
                     addr006d:
                     _loc1_.height = 345;
                     if(_loc3_)
                     {
                        _loc1_.bottom = 10;
                        if(!_loc2_)
                        {
                           _loc1_.gap = 10;
                           if(!_loc2_)
                           {
                              addr008d:
                              _loc1_.verticalAlign = "middle";
                              if(_loc3_ || _loc2_)
                              {
                                 _loc1_.horizontalAlign = "center";
                                 if(!_loc2_)
                                 {
                                    _loc1_.mxmlContent = [this._StoragePopup_Group1_c(),this._StoragePopup_HGroup1_c()];
                                    if(_loc3_)
                                    {
                                       addr00cb:
                                       if(!_loc1_.document)
                                       {
                                          if(_loc3_ || Boolean(this))
                                          {
                                             addr00df:
                                             _loc1_.document = this;
                                          }
                                       }
                                    }
                                    §§goto(addr00e3);
                                 }
                              }
                              §§goto(addr00df);
                           }
                           addr00e3:
                           return _loc1_;
                        }
                        §§goto(addr008d);
                     }
                     §§goto(addr00df);
                  }
               }
            }
            §§goto(addr00cb);
         }
         §§goto(addr006d);
      }
      
      private function _StoragePopup_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.height = 25;
            if(_loc2_ || _loc3_)
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
         return _loc1_;
      }
      
      private function _StoragePopup_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._StoragePopup_List1_i()];
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr006c:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0080:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0080);
               }
               addr0084:
               return _loc1_;
            }
            §§goto(addr0080);
         }
         §§goto(addr006c);
      }
      
      private function _StoragePopup_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!_loc2_)
         {
            _loc1_.itemRenderer = this._StoragePopup_ClassFactory1_c();
            if(!_loc2_)
            {
               _loc1_.height = 315;
               if(!(_loc2_ && _loc2_))
               {
                  addr0042:
                  _loc1_.width = 726;
                  if(!_loc2_)
                  {
                     _loc1_.setStyle("skinClass",GridSkin);
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.id = "itemList";
                        if(!_loc2_)
                        {
                           §§goto(addr007b);
                        }
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr00af);
               }
               addr007b:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0094:
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        §§goto(addr009d);
                     }
                     §§goto(addr00af);
                  }
               }
               §§goto(addr009d);
            }
            addr009d:
            this.itemList = _loc1_;
            if(!(_loc2_ && _loc3_))
            {
               addr00af:
               BindingManager.executeBindings(this,"itemList",this.itemList);
            }
            return _loc1_;
         }
         §§goto(addr0042);
      }
      
      private function _StoragePopup_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc2_)
         {
            _loc1_.generator = StorageItemRenderer;
         }
         return _loc1_;
      }
      
      public function ___StoragePopup_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1684755691flavorText;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1684755691flavorText = param1;
                  if(_loc3_)
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0077);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0077:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                  }
               }
               §§goto(addr0086);
            }
            addr0086:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemList() : List
      {
         return this._1177280081itemList;
      }
      
      public function set itemList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1177280081itemList;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1177280081itemList = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemList",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
   }
}

