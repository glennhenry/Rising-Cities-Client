package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class VScaleThreeComponent extends Group
   {
      
      private var _629489168bottomImage:BriskImageDynaLib;
      
      private var _400725190middleImage:BriskImageDynaLib;
      
      private var _986544890topImage:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function VScaleThreeComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && _loc1_))
               {
                  addr0041:
                  this.mxmlContent = [this._VScaleThreeComponent_VGroup1_c()];
               }
            }
            return;
         }
         §§goto(addr0041);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      public function set dynaLibName(param1:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this.topImage);
            §§push(this.middleImage);
            var _loc2_:*;
            this.bottomImage.dynaLibName = _loc2_ = param1;
            §§push(_loc2_);
            if(_loc3_ || Boolean(_loc2_))
            {
               _loc2_ = §§pop();
               §§push(_loc2_);
            }
            §§pop().dynaLibName = §§pop();
            §§pop().dynaLibName = _loc2_;
         }
      }
      
      public function set dynaBmpSourceNameTop(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.topImage.dynaBmpSourceName = param1;
         }
      }
      
      public function set dynaBmpSourceNameMiddle(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.middleImage.dynaBmpSourceName = param1;
         }
      }
      
      public function set dynaBmpSourceNameBottom(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.bottomImage.dynaBmpSourceName = param1;
         }
      }
      
      private function _VScaleThreeComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.top = 0;
            if(_loc3_)
            {
               _loc1_.left = 0;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc3_)
                     {
                        addr0066:
                        _loc1_.gap = 0;
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.verticalAlign = "middle";
                           if(!_loc2_)
                           {
                              _loc1_.horizontalAlign = "center";
                              addr0083:
                              if(!_loc2_)
                              {
                                 _loc1_.mxmlContent = [this._VScaleThreeComponent_BriskImageDynaLib1_i(),this._VScaleThreeComponent_BriskImageDynaLib2_i(),this._VScaleThreeComponent_BriskImageDynaLib3_i()];
                                 if(!_loc2_)
                                 {
                                    addr00b4:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc3_)
                                       {
                                          addr00c0:
                                          _loc1_.document = this;
                                       }
                                    }
                                 }
                                 return _loc1_;
                              }
                           }
                           §§goto(addr00b4);
                        }
                        §§goto(addr0083);
                     }
                  }
                  §§goto(addr00b4);
               }
               §§goto(addr0083);
            }
            §§goto(addr00c0);
         }
         §§goto(addr0066);
      }
      
      private function _VScaleThreeComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.id = "topImage";
            if(!_loc2_)
            {
               addr003f:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0067:
                        this.topImage = _loc1_;
                        if(_loc3_)
                        {
                           addr0071:
                           BindingManager.executeBindings(this,"topImage",this.topImage);
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0071);
               }
               §§goto(addr0067);
            }
            §§goto(addr0071);
         }
         §§goto(addr003f);
      }
      
      private function _VScaleThreeComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(!_loc3_)
            {
               _loc1_.id = "middleImage";
               if(_loc2_)
               {
                  addr003f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0060:
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0069:
                           this.middleImage = _loc1_;
                           if(_loc2_)
                           {
                              addr0073:
                              BindingManager.executeBindings(this,"middleImage",this.middleImage);
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0069);
               }
               §§goto(addr0073);
            }
            §§goto(addr0060);
         }
         §§goto(addr003f);
      }
      
      private function _VScaleThreeComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.id = "bottomImage";
            if(!(_loc3_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        addr005f:
                        this.bottomImage = _loc1_;
                        if(_loc2_ || _loc3_)
                        {
                           addr0071:
                           BindingManager.executeBindings(this,"bottomImage",this.bottomImage);
                        }
                        §§goto(addr007e);
                     }
                     §§goto(addr0071);
                  }
                  addr007e:
                  return _loc1_;
               }
            }
            §§goto(addr005f);
         }
         §§goto(addr0071);
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomImage() : BriskImageDynaLib
      {
         return this._629489168bottomImage;
      }
      
      public function set bottomImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._629489168bottomImage;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._629489168bottomImage = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr007e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomImage",_loc2_,param1));
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._400725190middleImage = param1;
                  if(_loc3_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleImage",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get topImage() : BriskImageDynaLib
      {
         return this._986544890topImage;
      }
      
      public function set topImage(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._986544890topImage;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._986544890topImage = param1;
                  addr0047:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr0047);
      }
   }
}

