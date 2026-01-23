package net.bigpoint.cityrama.view.constructionLayer
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.construction.ConstructionLayerStepVo;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ConstructionStepItemRenderer extends ItemRenderer
   {
      
      private var _2024730540detailComponent:ConstructionStepDetailComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ConstructionLayerStepVo;
      
      private var _dataDirty:Boolean;
      
      public function ConstructionStepItemRenderer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
            if(_loc2_ || _loc1_)
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc2_)
               {
                  this.percentWidth = 100;
                  if(!(_loc1_ && _loc2_))
                  {
                     this.percentHeight = 100;
                     if(_loc2_)
                     {
                        this.minHeight = 75;
                        if(_loc2_ || Boolean(this))
                        {
                           addr008b:
                           this.autoDrawBackground = false;
                           if(!_loc1_)
                           {
                              addr0095:
                              this.mxmlContent = [this._ConstructionStepItemRenderer_ConstructionStepDetailComponent1_i()];
                              if(_loc2_)
                              {
                                 addr00a5:
                                 this.addEventListener("creationComplete",this.___ConstructionStepItemRenderer_ItemRenderer1_creationComplete);
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr0095);
               }
               §§goto(addr008b);
            }
         }
         §§goto(addr0095);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && Boolean(param1)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr005a);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         addr005a:
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
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super.data = param1;
            if(_loc3_ || _loc2_)
            {
               §§goto(addr003c);
            }
            §§goto(addr0058);
         }
         addr003c:
         if(param1 is ConstructionLayerStepVo)
         {
            if(!_loc2_)
            {
               addr0058:
               this._data = param1 as ConstructionLayerStepVo;
               if(!_loc2_)
               {
                  this._dataDirty = true;
                  if(_loc3_ || _loc3_)
                  {
                     addr0079:
                     invalidateProperties();
                  }
               }
               §§goto(addr007e);
            }
            §§goto(addr0079);
         }
         addr007e:
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.commitProperties();
            if(_loc2_)
            {
               if(this._dataDirty)
               {
                  if(!_loc1_)
                  {
                     addr003f:
                     this._dataDirty = false;
                     if(!(_loc1_ && _loc1_))
                     {
                        addr0051:
                        this.detailComponent.data = this._data;
                     }
                  }
               }
               return;
            }
            §§goto(addr003f);
         }
         §§goto(addr0051);
      }
      
      private function _ConstructionStepItemRenderer_ConstructionStepDetailComponent1_i() : ConstructionStepDetailComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ConstructionStepDetailComponent = new ConstructionStepDetailComponent();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.top = 1;
                  if(!_loc3_)
                  {
                     addr004f:
                     _loc1_.left = 2;
                     if(!_loc3_)
                     {
                        _loc1_.right = 2;
                        if(!_loc3_)
                        {
                           addr006f:
                           _loc1_.bottom = 1;
                           if(!_loc3_)
                           {
                              §§goto(addr007a);
                           }
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr006f);
                  }
                  §§goto(addr00c9);
               }
               addr007a:
               _loc1_.id = "detailComponent";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr00ae:
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr00b7:
                           this.detailComponent = _loc1_;
                           if(!(_loc3_ && _loc2_))
                           {
                              addr00c9:
                              BindingManager.executeBindings(this,"detailComponent",this.detailComponent);
                           }
                           §§goto(addr00d6);
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr00d6);
                  }
                  §§goto(addr00b7);
               }
               addr00d6:
               return _loc1_;
            }
            §§goto(addr004f);
         }
         §§goto(addr00b7);
      }
      
      public function ___ConstructionStepItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get detailComponent() : ConstructionStepDetailComponent
      {
         return this._2024730540detailComponent;
      }
      
      public function set detailComponent(param1:ConstructionStepDetailComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2024730540detailComponent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2024730540detailComponent = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"detailComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0071);
               }
            }
         }
         addr0080:
      }
   }
}

