package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class HScaleThreeComponent extends Group
   {
      
      private var _1721435540leftImage:BriskImageDynaLib;
      
      private var _400725190middleImage:BriskImageDynaLib;
      
      private var _1408178017rightImage:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function HScaleThreeComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_ || _loc2_)
            {
               addr002f:
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.mxmlContent = [this._HScaleThreeComponent_HGroup1_c()];
               }
            }
            return;
         }
         §§goto(addr002f);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      public function set dynaLibName(param1:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.leftImage);
            §§push(this.middleImage);
            var _loc2_:*;
            this.rightImage.dynaLibName = _loc2_ = param1;
            §§push(_loc2_);
            if(_loc3_)
            {
               _loc2_ = §§pop();
               §§push(_loc2_);
            }
            §§pop().dynaLibName = §§pop();
            §§pop().dynaLibName = _loc2_;
         }
      }
      
      public function set dynaBmpSourceNameLeft(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.leftImage.dynaBmpSourceName = param1;
         }
      }
      
      public function set dynaBmpSourceNameMiddle(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.middleImage.dynaBmpSourceName = param1;
         }
      }
      
      public function set dynaBmpSourceNameRight(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.rightImage.dynaBmpSourceName = param1;
         }
      }
      
      private function _HScaleThreeComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.top = 0;
            if(!_loc3_)
            {
               _loc1_.left = 0;
               if(!_loc3_)
               {
                  addr0034:
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     §§goto(addr003e);
                  }
                  §§goto(addr0048);
               }
               §§goto(addr0086);
            }
            addr003e:
            _loc1_.percentHeight = 100;
            if(!_loc3_)
            {
               _loc1_.gap = 0;
               addr0048:
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._HScaleThreeComponent_BriskImageDynaLib1_i(),this._HScaleThreeComponent_BriskImageDynaLib2_i(),this._HScaleThreeComponent_BriskImageDynaLib3_i()];
                        addr0086:
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr00b8);
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr0086);
               }
               §§goto(addr00c4);
            }
            addr00b8:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr00c4:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0034);
      }
      
      private function _HScaleThreeComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.id = "leftImage";
            if(_loc3_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr0068:
                        this.leftImage = _loc1_;
                        if(_loc3_ || _loc3_)
                        {
                           BindingManager.executeBindings(this,"leftImage",this.leftImage);
                        }
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0068);
            }
         }
         addr0087:
         return _loc1_;
      }
      
      private function _HScaleThreeComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.id = "middleImage";
               if(_loc3_)
               {
                  addr004a:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0056:
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0075:
                           this.middleImage = _loc1_;
                           if(!(_loc2_ && _loc3_))
                           {
                              addr0087:
                              BindingManager.executeBindings(this,"middleImage",this.middleImage);
                           }
                           §§goto(addr0094);
                        }
                        §§goto(addr0087);
                     }
                     addr0094:
                     return _loc1_;
                  }
               }
               §§goto(addr0075);
            }
            §§goto(addr0056);
         }
         §§goto(addr004a);
      }
      
      private function _HScaleThreeComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.id = "rightImage";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§goto(addr006d);
                     }
                     §§goto(addr007f);
                  }
               }
               addr006d:
               this.rightImage = _loc1_;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr007f:
                  BindingManager.executeBindings(this,"rightImage",this.rightImage);
               }
               §§goto(addr008c);
            }
         }
         addr008c:
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get leftImage() : BriskImageDynaLib
      {
         return this._1721435540leftImage;
      }
      
      public function set leftImage(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1721435540leftImage;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1721435540leftImage = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr007e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008d);
               }
               §§goto(addr007e);
            }
            addr008d:
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get middleImage() : BriskImageDynaLib
      {
         return this._400725190middleImage;
      }
      
      public function set middleImage(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._400725190middleImage;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._400725190middleImage = param1;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr005b);
                  }
                  §§goto(addr0072);
               }
               addr005b:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0072:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleImage",_loc2_,param1));
                  }
               }
               §§goto(addr0081);
            }
         }
         addr0081:
      }
      
      [Bindable(event="propertyChange")]
      public function get rightImage() : BriskImageDynaLib
      {
         return this._1408178017rightImage;
      }
      
      public function set rightImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1408178017rightImage;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1408178017rightImage = param1;
                  addr0040:
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr005f);
            }
            addr007d:
            return;
         }
         §§goto(addr0040);
      }
   }
}

