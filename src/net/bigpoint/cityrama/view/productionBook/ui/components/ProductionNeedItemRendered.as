package net.bigpoint.cityrama.view.productionBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.detailViews.vo.ProductionNeedVo;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.NeedItemComponent;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ProductionNeedItemRendered extends ItemRenderer
   {
      
      private var _1399907075component:NeedItemComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function ProductionNeedItemRendered()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
            if(!(_loc1_ && Boolean(this)))
            {
               addr002e:
               mx_internal::_document = this;
               if(!(_loc1_ && _loc2_))
               {
                  this.autoDrawBackground = false;
                  if(!_loc1_)
                  {
                     this.mouseChildren = false;
                     if(_loc2_ || Boolean(this))
                     {
                        this.mouseEnabled = true;
                        if(_loc2_)
                        {
                           addr0082:
                           this.mxmlContent = [this._ProductionNeedItemRendered_NeedItemComponent1_i()];
                           if(!(_loc1_ && _loc2_))
                           {
                              this.addEventListener("creationComplete",this.___ProductionNeedItemRendered_ItemRenderer1_creationComplete);
                           }
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr0082);
                  }
               }
            }
            addr00a6:
            return;
         }
         §§goto(addr002e);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               §§goto(addr003f);
            }
            §§goto(addr0052);
         }
         addr003f:
         if(this.__moduleFactoryInitialized)
         {
            if(!_loc2_)
            {
               return;
            }
         }
         else
         {
            addr0052:
            this.__moduleFactoryInitialized = true;
         }
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
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.data = param1;
            if(_loc3_ || Boolean(this))
            {
               invalidateProperties();
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ProductionNeedVo = data as ProductionNeedVo;
         if(_loc2_)
         {
            if(_loc1_.available)
            {
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  §§push(this.component);
                  if(!_loc3_)
                  {
                     §§push("active");
                     if(_loc2_)
                     {
                        §§pop().styleName = §§pop();
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0095:
                           this.component.data = _loc1_;
                           §§goto(addr0092);
                        }
                     }
                     else
                     {
                        addr0083:
                        §§pop().styleName = §§pop();
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr0092);
                        }
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr0095);
               }
               addr0092:
               if(!(_loc3_ && _loc2_))
               {
                  addr00a5:
                  this.setToolTips(_loc1_);
               }
               §§goto(addr00ac);
            }
            else
            {
               §§push(this.component);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  §§goto(addr0083);
                  §§push("inActive");
               }
            }
            §§goto(addr0095);
         }
         addr00ac:
      }
      
      private function setToolTips(param1:ProductionNeedVo) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param1.goodName);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(param1.stockAmount);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && Boolean(this)))
         {
            if(param1.available)
            {
               if(!(_loc5_ && Boolean(this)))
               {
                  §§push(param1.requiredAmount);
                  if(_loc4_)
                  {
                     §§push(§§pop());
                  }
                  _loc3_ = §§pop();
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0081:
                     §§push(this);
                     §§push(_loc3_ + "/");
                     if(_loc4_ || Boolean(param1))
                     {
                        §§push(§§pop() + param1.requiredAmount);
                        if(_loc4_)
                        {
                           §§push(§§pop() + " ");
                           if(!_loc5_)
                           {
                              addr00aa:
                              §§push(§§pop() + _loc2_);
                           }
                        }
                        §§pop().toolTip = §§pop();
                        §§goto(addr00ae);
                     }
                     §§goto(addr00aa);
                  }
               }
               §§goto(addr00ae);
            }
            §§goto(addr0081);
         }
         addr00ae:
      }
      
      private function _ProductionNeedItemRendered_NeedItemComponent1_i() : NeedItemComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:NeedItemComponent = new NeedItemComponent();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.id = "component";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        §§goto(addr0067);
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0067);
            }
            §§goto(addr0078);
         }
         addr0067:
         this.component = _loc1_;
         if(_loc2_ || Boolean(this))
         {
            addr0078:
            BindingManager.executeBindings(this,"component",this.component);
         }
         return _loc1_;
      }
      
      public function ___ProductionNeedItemRendered_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get component() : NeedItemComponent
      {
         return this._1399907075component;
      }
      
      public function set component(param1:NeedItemComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1399907075component;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1399907075component = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"component",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0069);
      }
   }
}

