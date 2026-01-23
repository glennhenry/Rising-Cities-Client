package net.bigpoint.cityrama.view.shopBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class StorageInterestItemRendered extends ItemRenderer
   {
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _1478417739itemAmount:LocaLabel;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:GoodObjectVo;
      
      public function StorageInterestItemRendered()
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
               §§goto(addr001e);
            }
            §§goto(addr006c);
         }
         addr001e:
         if(_loc2_)
         {
            this.autoDrawBackground = false;
            if(!_loc1_)
            {
               this.mxmlContent = [this._StorageInterestItemRendered_StickyNoteComponent1_c(),this._StorageInterestItemRendered_Group1_c()];
               if(!(_loc1_ && Boolean(this)))
               {
                  addr006c:
                  this.addEventListener("creationComplete",this.___StorageInterestItemRendered_ItemRenderer1_creationComplete);
               }
               §§goto(addr0078);
            }
            §§goto(addr006c);
         }
         addr0078:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     §§goto(addr0046);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr0046:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            invalidateProperties();
         }
      }
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._data = param1 as GoodObjectVo;
            if(_loc2_)
            {
               addr0026:
               invalidateProperties();
            }
            return;
         }
         §§goto(addr0026);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            if(this._data)
            {
               if(!_loc2_)
               {
                  §§push(this.image);
                  §§push("small_");
                  if(_loc1_)
                  {
                     §§push(§§pop() + this._data.gfxId);
                  }
                  §§pop().dynaBmpSourceName = §§pop();
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this.itemLabel.text = ResourceManager.getInstance().getString(String("rcl.goods.goodname"),"rcl.goods.goodname." + this._data.gfxId);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        this.itemAmount.text = this._data.playerStock.toString();
                     }
                  }
               }
            }
         }
      }
      
      private function _StorageInterestItemRendered_StickyNoteComponent1_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.width = 200;
            if(!_loc3_)
            {
               _loc1_.height = 80;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.top = -8;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._StorageInterestItemRendered_Array2_c);
                     §§goto(addr0060);
                  }
                  §§goto(addr009d);
               }
               addr0060:
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr009d:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr00a1);
            }
         }
         addr00a1:
         return _loc1_;
      }
      
      private function _StorageInterestItemRendered_Array2_c() : Array
      {
         return [this._StorageInterestItemRendered_VGroup1_c()];
      }
      
      private function _StorageInterestItemRendered_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.width = 100;
            if(!_loc2_)
            {
               _loc1_.right = 10;
               if(_loc3_)
               {
                  _loc1_.horizontalAlign = "left";
                  if(!_loc2_)
                  {
                     _loc1_.top = -10;
                     if(_loc3_)
                     {
                        addr0069:
                        _loc1_.mxmlContent = [this._StorageInterestItemRendered_LocaLabel1_i(),this._StorageInterestItemRendered_HGroup1_c()];
                        if(_loc3_)
                        {
                           §§goto(addr007f);
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0069);
               }
               addr007f:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr008b:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0069);
      }
      
      private function _StorageInterestItemRendered_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "priceLabel";
            if(_loc3_ || _loc2_)
            {
               _loc1_.id = "itemLabel";
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0066:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr007b:
                           this.itemLabel = _loc1_;
                           if(!_loc2_)
                           {
                              BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
                           }
                        }
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr007b);
               }
               addr0092:
               return _loc1_;
            }
            §§goto(addr007b);
         }
         §§goto(addr0066);
      }
      
      private function _StorageInterestItemRendered_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.width = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_)
               {
                  _loc1_.horizontalAlign = "left";
                  if(_loc2_)
                  {
                     addr0069:
                     _loc1_.mxmlContent = [this._StorageInterestItemRendered_BriskImageDynaLib1_c(),this._StorageInterestItemRendered_LocaLabel2_i()];
                     if(!_loc3_)
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
            }
            return _loc1_;
         }
         §§goto(addr0069);
      }
      
      private function _StorageInterestItemRendered_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "product_icon";
               addr003e:
               if(_loc3_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr0071:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0071);
         }
         §§goto(addr003e);
      }
      
      private function _StorageInterestItemRendered_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.styleName = "priceLabel";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.id = "itemAmount";
               if(_loc2_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0066:
                        _loc1_.document = this;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0083:
                           this.itemAmount = _loc1_;
                           if(_loc2_ || Boolean(this))
                           {
                              addr0095:
                              BindingManager.executeBindings(this,"itemAmount",this.itemAmount);
                           }
                        }
                        §§goto(addr00a2);
                     }
                  }
                  §§goto(addr0083);
               }
               addr00a2:
               return _loc1_;
            }
            §§goto(addr0095);
         }
         §§goto(addr0066);
      }
      
      private function _StorageInterestItemRendered_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._StorageInterestItemRendered_BriskImageDynaLib2_c(),this._StorageInterestItemRendered_BriskImageDynaLib3_i()];
            if(_loc3_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _StorageInterestItemRendered_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_shopBook";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "ressource_cardboard_mini";
               addr0047:
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  §§goto(addr0068);
               }
               §§goto(addr007c);
            }
            addr0068:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr007c:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0047);
      }
      
      private function _StorageInterestItemRendered_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_smallGoodIcons";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     §§goto(addr005b);
                  }
               }
               §§goto(addr007a);
            }
            addr005b:
            _loc1_.id = "image";
            if(!(_loc3_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr007a:
                     _loc1_.document = this;
                     if(_loc2_ || _loc2_)
                     {
                        addr0097:
                        this.image = _loc1_;
                        if(_loc2_ || _loc2_)
                        {
                           addr00a9:
                           BindingManager.executeBindings(this,"image",this.image);
                        }
                     }
                     §§goto(addr00b6);
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr0097);
            }
            addr00b6:
            return _loc1_;
         }
         §§goto(addr007a);
      }
      
      public function ___StorageInterestItemRendered_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : BriskImageDynaLib
      {
         return this._100313435image;
      }
      
      public function set image(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._100313435image;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._100313435image = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0073);
            }
         }
         addr0082:
      }
      
      [Bindable(event="propertyChange")]
      public function get itemAmount() : LocaLabel
      {
         return this._1478417739itemAmount;
      }
      
      public function set itemAmount(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1478417739itemAmount;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1478417739itemAmount = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemAmount",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0072);
            }
         }
         addr0081:
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2135689121itemLabel = param1;
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0076);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
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

