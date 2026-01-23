package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.IFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.events.IndexChangeEvent;
   
   public class WheelComponent extends Group
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var _113097563wheel:WheelLayout;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function WheelComponent()
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
               if(_loc2_ || _loc2_)
               {
                  this.clipAndEnableScrolling = true;
                  if(_loc2_ || Boolean(this))
                  {
                     addr005e:
                     this.mxmlContent = [this._WheelComponent_DataGroup1_i()];
                  }
               }
            }
            return;
         }
         §§goto(addr005e);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
               addr0042:
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0042);
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
      
      public function set scrollPosition(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(Math.floor(param1 + 0.5) != Math.floor(this.scrollPosition + 0.5))
            {
               if(!(_loc2_ && Boolean(param1)))
               {
                  dispatchEvent(new IndexChangeEvent(IndexChangeEvent.CHANGE,false,false,Math.floor(param1),Math.floor(this.scrollPosition)));
                  if(!_loc2_)
                  {
                     addr0077:
                     if(this.dataGroup.dataProvider.length > 0)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00a2:
                           §§push(this.wheel);
                           §§push(param1);
                           if(_loc3_)
                           {
                              §§push(§§pop() / this.dataGroup.dataProvider.length);
                           }
                           §§pop().scrollPosition = §§pop();
                        }
                     }
                     §§goto(addr00ba);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr00ba);
            }
            §§goto(addr0077);
         }
         addr00ba:
      }
      
      public function get scrollPosition() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(this.wheel.scrollPosition);
         if(!(_loc2_ && _loc2_))
         {
            return §§pop() * this.dataGroup.dataProvider.length;
         }
      }
      
      public function set elementWidth(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.wheel.elementWidth = param1;
         }
      }
      
      public function set itemRenderer(param1:IFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.dataGroup.itemRenderer = param1;
         }
      }
      
      private function _WheelComponent_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.layout = this._WheelComponent_WheelLayout1_i();
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.dataProvider = this._WheelComponent_ArrayCollection1_c();
                     if(_loc3_)
                     {
                        _loc1_.id = "dataGroup";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr0089);
                              }
                           }
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr00b8);
                  }
                  addr0089:
                  _loc1_.document = this;
                  if(_loc3_ || _loc3_)
                  {
                     addr00a6:
                     this.dataGroup = _loc1_;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr00b8:
                        BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr00a6);
            }
            §§goto(addr00b8);
         }
         §§goto(addr00a6);
      }
      
      private function _WheelComponent_WheelLayout1_i() : WheelLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:WheelLayout = new WheelLayout();
         if(_loc3_)
         {
            this.wheel = _loc1_;
            if(!_loc2_)
            {
               BindingManager.executeBindings(this,"wheel",this.wheel);
            }
         }
         return _loc1_;
      }
      
      private function _WheelComponent_ArrayCollection1_c() : ArrayCollection
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ArrayCollection = new ArrayCollection();
         if(_loc2_)
         {
            _loc1_.initialized(this,null);
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : DataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:DataGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._385593099dataGroup;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._385593099dataGroup = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr007a);
            }
            addr0089:
            return;
         }
         §§goto(addr007a);
      }
      
      [Bindable(event="propertyChange")]
      public function get wheel() : WheelLayout
      {
         return this._113097563wheel;
      }
      
      public function set wheel(param1:WheelLayout) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._113097563wheel;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0050:
                  this._113097563wheel = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wheel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr0050);
      }
   }
}

