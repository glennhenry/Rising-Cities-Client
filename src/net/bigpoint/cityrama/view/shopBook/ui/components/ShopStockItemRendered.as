package net.bigpoint.cityrama.view.shopBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.good.vo.ShopStockGoodVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ShopStockItemRendered extends ItemRenderer
   {
      
      private var _398367733checkMark:BriskImageDynaLib;
      
      private var _607253902frameBG:BriskImageDynaLib;
      
      private var _1484033980goodContainer:Group;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _1478417739itemAmount:LocaLabel;
      
      private var _1131509414progressBar:ShopItemProgress;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ShopStockGoodVo;
      
      public function ShopStockItemRendered()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
            if(_loc2_ || _loc1_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.autoDrawBackground = false;
                  if(_loc2_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0076);
               }
               addr005e:
               this.mxmlContent = [this._ShopStockItemRendered_HGroup1_c()];
               if(_loc2_ || _loc1_)
               {
                  addr0076:
                  this.addEventListener("creationComplete",this.___ShopStockItemRendered_ItemRenderer1_creationComplete);
               }
               return;
            }
         }
         §§goto(addr0076);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc3_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  addr0051:
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0057);
            }
            §§goto(addr0051);
         }
         addr0057:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            invalidateProperties();
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._data = param1 as ShopStockGoodVo;
            if(_loc3_)
            {
               invalidateProperties();
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this._data);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§push(this.image);
                     §§push("small_");
                     if(_loc2_ || _loc2_)
                     {
                        §§push(§§pop() + this._data.goodVo.gfxId);
                     }
                     §§pop().dynaBmpSourceName = §§pop();
                     if(!_loc1_)
                     {
                        §§push(this.itemAmount);
                        §§push(this._data.stockCurrent + " / ");
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(§§pop() + this._data.stockMax);
                        }
                        §§pop().text = §§pop();
                        if(!_loc1_)
                        {
                           this.progressBar.progress = this._data.stockCurrent / this._data.stockMax;
                           if(_loc2_ || _loc1_)
                           {
                              addr00c2:
                              if(this._data.stockCurrent == 0)
                              {
                                 if(!_loc1_)
                                 {
                                    §§push(this.checkMark);
                                    if(_loc2_)
                                    {
                                       §§push("checkmark_gray");
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          §§pop().dynaBmpSourceName = §§pop();
                                          if(!_loc1_)
                                          {
                                             §§push(this.frameBG);
                                             if(!_loc1_)
                                             {
                                                §§push("needframe_bg_grey");
                                                if(_loc2_)
                                                {
                                                   §§pop().dynaBmpSourceName = §§pop();
                                                   if(!_loc1_)
                                                   {
                                                      this.goodContainer.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.shopBook"),String("rcl.tooltips.shopBook.empty"));
                                                      addr0108:
                                                      if(_loc1_ && _loc2_)
                                                      {
                                                         addr0159:
                                                         this.frameBG.dynaBmpSourceName = "needframe_bg_green";
                                                         addr0156:
                                                         addr0152:
                                                         if(_loc2_)
                                                         {
                                                            addr0160:
                                                            this.setTooltips();
                                                         }
                                                         §§goto(addr0166);
                                                      }
                                                      §§goto(addr0160);
                                                   }
                                                   §§goto(addr0166);
                                                }
                                                §§goto(addr0159);
                                             }
                                             §§goto(addr0156);
                                          }
                                          §§goto(addr0108);
                                       }
                                       else
                                       {
                                          addr014b:
                                          §§pop().dynaBmpSourceName = §§pop();
                                          if(_loc2_)
                                          {
                                             §§goto(addr0152);
                                          }
                                       }
                                       §§goto(addr0166);
                                    }
                                    else
                                    {
                                       addr0148:
                                       §§push("checkmark_green");
                                    }
                                    §§goto(addr014b);
                                 }
                                 §§goto(addr0108);
                              }
                              else
                              {
                                 §§push(this.checkMark);
                              }
                              §§goto(addr0148);
                           }
                           §§goto(addr0166);
                        }
                        §§goto(addr0152);
                     }
                     §§goto(addr0160);
                  }
                  §§goto(addr0108);
               }
               addr0166:
               return;
            }
            §§goto(addr00c2);
         }
         §§goto(addr0160);
      }
      
      private function setTooltips() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Number = Math.abs(this._data.consumeAmount);
         §§push(ResourceManager.getInstance().getString(String("rcl.goods.goodname"),String("rcl.goods.goodname." + this._data.goodVo.localeId)));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.progressBar.toolTip = StringUtil.substitute(ResourceManager.getInstance().getString(String("rcl.tooltips.shopBook"),String("rcl.tooltips.shopBook.consumeInfo")),_loc1_,_loc2_);
         }
      }
      
      private function _ShopStockItemRendered_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._ShopStockItemRendered_Group1_i(),this._ShopStockItemRendered_VGroup1_c()];
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0067:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr007f);
            }
            §§goto(addr0067);
         }
         addr007f:
         return _loc1_;
      }
      
      private function _ShopStockItemRendered_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.left = 0;
            if(_loc2_)
            {
               _loc1_.width = 90;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.height = 71;
                  if(_loc2_)
                  {
                     addr005c:
                     _loc1_.mxmlContent = [this._ShopStockItemRendered_BriskImageDynaLib1_c(),this._ShopStockItemRendered_BriskImageDynaLib2_i(),this._ShopStockItemRendered_BriskImageDynaLib3_i(),this._ShopStockItemRendered_BriskImageDynaLib4_i()];
                     if(_loc2_)
                     {
                        §§goto(addr007e);
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr00bb);
               }
               addr007e:
               _loc1_.id = "goodContainer";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr00b1:
                           this.goodContainer = _loc1_;
                           if(_loc2_)
                           {
                              addr00bb:
                              BindingManager.executeBindings(this,"goodContainer",this.goodContainer);
                           }
                        }
                        §§goto(addr00c8);
                     }
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr00c8);
            }
            addr00c8:
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _ShopStockItemRendered_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!(_loc2_ && Boolean(this)))
            {
               addr0043:
               _loc1_.dynaBmpSourceName = "needframe_open";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!_loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr008a:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr008a);
         }
         §§goto(addr0043);
      }
      
      private function _ShopStockItemRendered_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "needframe_bg_grey";
               if(!_loc3_)
               {
                  addr0045:
                  _loc1_.verticalCenter = 0;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0063:
                     _loc1_.horizontalCenter = 0;
                     if(!_loc3_)
                     {
                        _loc1_.id = "frameBG";
                        if(_loc2_)
                        {
                           addr0078:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 §§goto(addr008c);
                              }
                              §§goto(addr00bd);
                           }
                           §§goto(addr00ab);
                        }
                        addr008c:
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr00ab:
                           this.frameBG = _loc1_;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr00bd:
                              BindingManager.executeBindings(this,"frameBG",this.frameBG);
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr0063);
            }
            §§goto(addr0045);
         }
         §§goto(addr0078);
      }
      
      private function _ShopStockItemRendered_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_smallGoodIcons";
            if(!_loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     §§goto(addr003e);
                  }
                  §§goto(addr0067);
               }
               §§goto(addr00c1);
            }
            §§goto(addr0071);
         }
         addr003e:
         _loc1_.maxWidth = 60;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.maxHeight = 52;
            if(_loc2_)
            {
               addr0067:
               _loc1_.smoothing = true;
               if(_loc2_)
               {
                  addr0071:
                  _loc1_.maintainAspectRation = true;
                  if(_loc2_)
                  {
                     _loc1_.id = "image";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              addr00a6:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr00b7);
                              }
                           }
                           §§goto(addr00c1);
                        }
                        addr00b7:
                        this.image = _loc1_;
                        if(!_loc3_)
                        {
                           addr00c1:
                           BindingManager.executeBindings(this,"image",this.image);
                        }
                        §§goto(addr00ce);
                     }
                     §§goto(addr00c1);
                  }
                  §§goto(addr00ce);
               }
            }
            §§goto(addr00a6);
         }
         addr00ce:
         return _loc1_;
      }
      
      private function _ShopStockItemRendered_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "checkmark_gray";
               if(_loc3_)
               {
                  addr003e:
                  _loc1_.top = 0;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.right = 0;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.id = "checkMark";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0085:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00a2:
                                    this.checkMark = _loc1_;
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       addr00b4:
                                       BindingManager.executeBindings(this,"checkMark",this.checkMark);
                                    }
                                 }
                              }
                              §§goto(addr00c1);
                           }
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr0085);
               }
            }
            addr00c1:
            return _loc1_;
         }
         §§goto(addr003e);
      }
      
      private function _ShopStockItemRendered_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  addr0036:
                  if(_loc3_)
                  {
                     _loc1_.height = 71;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr006c:
                        _loc1_.mxmlContent = [this._ShopStockItemRendered_ShopItemProgress1_i(),this._ShopStockItemRendered_LocaLabel1_i()];
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 addr0096:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr009a);
                        }
                        §§goto(addr0096);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr006c);
               }
               addr009a:
               return _loc1_;
            }
         }
         §§goto(addr0036);
      }
      
      private function _ShopStockItemRendered_ShopItemProgress1_i() : ShopItemProgress
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ShopItemProgress = new ShopItemProgress();
         if(!_loc2_)
         {
            _loc1_.width = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.id = "progressBar";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr006b:
                           this.progressBar = _loc1_;
                           if(!_loc2_)
                           {
                              addr0075:
                              BindingManager.executeBindings(this,"progressBar",this.progressBar);
                           }
                        }
                        §§goto(addr0082);
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr006b);
               }
               §§goto(addr0082);
            }
            §§goto(addr006b);
         }
         addr0082:
         return _loc1_;
      }
      
      private function _ShopStockItemRendered_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "priceLabel";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.id = "itemAmount";
               if(_loc2_ || _loc2_)
               {
                  addr0055:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc2_ || _loc2_)
                        {
                           addr007d:
                           this.itemAmount = _loc1_;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr008f:
                              BindingManager.executeBindings(this,"itemAmount",this.itemAmount);
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr008f);
            }
            §§goto(addr0055);
         }
         §§goto(addr007d);
      }
      
      public function ___ShopStockItemRendered_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get checkMark() : BriskImageDynaLib
      {
         return this._398367733checkMark;
      }
      
      public function set checkMark(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._398367733checkMark;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._398367733checkMark = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkMark",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr0073);
               }
            }
         }
         addr0082:
      }
      
      [Bindable(event="propertyChange")]
      public function get frameBG() : BriskImageDynaLib
      {
         return this._607253902frameBG;
      }
      
      public function set frameBG(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._607253902frameBG;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._607253902frameBG = param1;
                  if(_loc4_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"frameBG",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0056);
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get goodContainer() : Group
      {
         return this._1484033980goodContainer;
      }
      
      public function set goodContainer(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1484033980goodContainer;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1484033980goodContainer = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0070);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0070:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodContainer",_loc2_,param1));
                  }
               }
               §§goto(addr007f);
            }
            addr007f:
            return;
         }
         §§goto(addr0070);
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
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._100313435image = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0060);
            }
         }
         addr0086:
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0038:
                  this._1478417739itemAmount = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemAmount",_loc2_,param1));
                        }
                     }
                     §§goto(addr0061);
                  }
                  §§goto(addr0052);
               }
            }
            addr0061:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : ShopItemProgress
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:ShopItemProgress) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1131509414progressBar = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
   }
}

